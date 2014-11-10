class RegistrationsController < Devise::RegistrationsController
  
  def update
    new_params = params.require(:user).permit(:email, :username, :current_password, :password, :password_confirmation)
    change_password = true
    
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
      new_params = params.require(:user).permit(:email, :username)
      change_password = false
    end

    @user = User.find(current_user.id)
    is_valid = false

    if change_password
      is_valid = @user.update_with_password(new_params)
    else
      is_valid = @user.update_without_password(new_params)
    end

    if is_valid
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end

    if params[:admin].present?
      new_params = params.require(:admin).permit(:email, :username, :current_password, :password, :password_confirmation)
      change_password = true
      if params[:admin][:password].blank?
        params[:admin].delete("password")
        params[:admin].delete("password_confirmation")
        new_params = params.require(:admin).permit(:email, :username)
        change_password = false
      end

      @admin = Admin.find(current_admin.id)
      is_valid = false

      if change_password
        is_valid = @admin.update_with_password(new_params)
      else
        is_valid = @admin.update_without_password(new_params)
      end

      if is_valid
        set_flash_message :notice, :updated
        sign_in @admin, :bypass => true
        redirect_to after_update_path_for(@admin)
      else
        render "edit"
      end
    end

  end
end