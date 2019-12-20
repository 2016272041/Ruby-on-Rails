class QuizzesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :check_answer
  before_action :authenticate_user!
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  # change attempt for highscore retake
  def index
    @quizz_collection = Hash.new
    Genre.all.each do |g|
      @quizz_collection[g.title] = Hash.new
      Subgenre.where(genre_id: g.id).each do |s|
        @quiz_set = Quiz.where(Subgenre_id: s.id)
        if @quiz_set.length
          @quizz_collection[g.title][s.title] = @quiz_set
        end
      end
    end
    print(@quizz_collection)  
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
    @id = params[:id]
    $cur_position =Event.where(user_id: current_user.id, quiz_id: @@id)[0]

    # If user has not attempted the quiz
    if $cur_position.nil?
      $cur_position = Event.new(user_id: current_user.id, quiz_id: @id, highscore: 0,
        score: 0, current_question:  0)
      $cur_position.save
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :desc)
    end
end
