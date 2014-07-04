class TaskResultsController < ApplicationController
  before_action :set_task_result, only: [:show, :edit, :update, :destroy]

  # GET /task_results
  def index
    @task_results = TaskResult.all
  end

  # GET /task_results/1
  def show
  end

  # GET /task_results/new
  def new
    @task_result = TaskResult.new
  end

  # GET /task_results/1/edit
  def edit
  end

  # POST /task_results
  def create
    @task_result = TaskResult.new(task_result_params)

    if @task_result.save
      redirect_to @task_result, notice: 'Task result was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /task_results/1
  def update
    if @task_result.update(task_result_params)
      redirect_to @task_result, notice: 'Task result was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /task_results/1
  def destroy
    @task_result.destroy
    redirect_to task_results_url, notice: 'Task result was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_result
      @task_result = TaskResult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_result_params
      params.require(:task_result).permit(:task_id, :student_id, :grade)
    end
end
