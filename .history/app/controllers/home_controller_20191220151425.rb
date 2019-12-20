class HomeController < ApplicationController
  def index
  end

  def index
    if user_logged_in?
      redirect_to quizzes_path
    else
      redirect_to new_user_sessions_path 
    end
  end

  def user_board
    events = Event.where(user_id: current_user.id)
    @quizz_collection = Hash.new
    Genre.all.each do |g|
      @quizz_collection[g.title] = Hash.new
      Subgenre.where(genre_id: g.id).each do |s|
        @quiz_set = Quiz.where(subgenre_id: s.id)
        if @quiz_set.length
           
      end
    end
end

