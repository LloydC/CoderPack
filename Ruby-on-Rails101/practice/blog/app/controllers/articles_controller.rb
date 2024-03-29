class ArticlesController < ApplicationController

def new
	@article = Article.new
	end

def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to @article
end

	def update
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

    def edit
      @article = Article.find(params[:id])
    end

    def show
  		@article = Article.find(params[:id])
	end

def index
 	@articles = Article.all
   end

private
 
  def article_params
    params.require(:article).permit(:title, :text)
  end

 

end
