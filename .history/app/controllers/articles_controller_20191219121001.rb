class ArticlesController < ApplicationController
    
    def new
        @article = Article.new
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :author, :text))
        @article.save
        redirect_to @article
    end
    
    def change
        create_table :articles do |t|
            t.string :title
            t.string :author
            t.text :text
            t.timestamps
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def index
        @article = Article.all
    end

    def edit
        @article = Article.find(params[:id])
    end

end