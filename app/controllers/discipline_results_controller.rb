class DisciplineResultsController < ApplicationController
  before_action :set_discipline_result, only: [:show, :edit, :update, :destroy]

  # GET /discipline_results
  def index
    @discipline_results = DisciplineResult.all
  end

  # GET /discipline_results/1
  def show
  end

  # GET /discipline_results/new
  def new
    @discipline_result = DisciplineResult.new
  end

  # GET /discipline_results/1/edit
  def edit
  end

  # POST /discipline_results
  def create
    @discipline_result = DisciplineResult.new(discipline_result_params)

    if @discipline_result.save
      redirect_to @discipline_result, notice: 'Discipline result was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /discipline_results/1
  def update
    if @discipline_result.update(discipline_result_params)
      redirect_to @discipline_result, notice: 'Discipline result was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /discipline_results/1
  def destroy
    @discipline_result.destroy
    redirect_to discipline_results_url, notice: 'Discipline result was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline_result
      @discipline_result = DisciplineResult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discipline_result_params
      params.require(:discipline_result).permit(:discipline_id, :student_id, :grade)
    end
end
