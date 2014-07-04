class LessonResultsController < ApplicationController
  before_action :set_lesson_result, only: [:show, :edit, :update, :destroy]

  # GET /lesson_results
  def index
    @lesson_results = LessonResult.all
  end

  # GET /lesson_results/1
  def show
  end

  # GET /lesson_results/new
  def new
    @lesson_result = LessonResult.new
  end

  # GET /lesson_results/1/edit
  def edit
  end

  # POST /lesson_results
  def create
    @lesson_result = LessonResult.new(lesson_result_params)

    if @lesson_result.save
      redirect_to @lesson_result, notice: 'Lesson result was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lesson_results/1
  def update
    if @lesson_result.update(lesson_result_params)
      redirect_to @lesson_result, notice: 'Lesson result was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lesson_results/1
  def destroy
    @lesson_result.destroy
    redirect_to lesson_results_url, notice: 'Lesson result was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_result
      @lesson_result = LessonResult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lesson_result_params
      params.require(:lesson_result).permit(:lesson_id, :student_id, :grade)
    end
end
