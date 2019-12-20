class ArticlesController < ApplicationController
    def def new
        @article = Article.new(params.req)
    end    
end
