class ArticlesController < ApplicationController
    def def new
        @article = Article.new(params.require(:article))
    end    
end
