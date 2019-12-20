class ArticlesController < ApplicationController
    def def new
        @article = Article.new(params.require(:article).permit(:title, :author, :text))
        @article.after_save :method
    end    
end
