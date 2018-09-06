class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        
    end

    def new
       @article = Article.new
    end
    
    def show
      @article = Article.find(params[:id])
    end
   
    def edit
        @article = Article.find(params[:id])
        
    end
    
    def destroy
       @article = Article.find(params[:id])
       @article.destroy
       flash[:notice] = "Etape supprimée"
       redirect_to articles_path
    end
   
    def create
      @article = Article.new(article_params)
       if @article.save
          flash[:notice] = "Etape ajoutée"
          redirect_to article_path(@article)
          
       else
          render 'new'
    end
   
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Etape modifiée"
            redirect_to article_path
        else
            render 'edit'
        end
    end
   
   
end
   
   private
   
   def article_params
      params.require(:article).permit(:title, :description)
   end
   
   
end