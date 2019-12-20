class ArticlesController < ApplicationController
    def def new
        @article = Article.new(params.require(:article).permit(:title, :author, :text))
        @article.save
        redirect_to @article
    end
    
    def Change
        create_table :articles do |t|
            t.string :title
            t.string :author
            t.text :text
            t.timestamps
    end
end
