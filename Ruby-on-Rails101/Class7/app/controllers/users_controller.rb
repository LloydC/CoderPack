class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def new
  end

  def create
  end

  def index
  end
end
