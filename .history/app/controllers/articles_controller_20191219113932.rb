class ArticlesController < ApplicationController
    def def new
        @article = Article.new(para)
    end    
end
