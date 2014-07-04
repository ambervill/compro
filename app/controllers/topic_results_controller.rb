class TopicResultsController < ApplicationController
  before_action :set_topic_result, only: [:show, :edit, :update, :destroy]

  # GET /topic_results
  def index
    @topic_results = TopicResult.all
  end

  # GET /topic_results/1
  def show
  end

  # GET /topic_results/new
  def new
    @topic_result = TopicResult.new
  end

  # GET /topic_results/1/edit
  def edit
  end

  # POST /topic_results
  def create
    @topic_result = TopicResult.new(topic_result_params)

    if @topic_result.save
      redirect_to @topic_result, notice: 'Topic result was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /topic_results/1
  def update
    if @topic_result.update(topic_result_params)
      redirect_to @topic_result, notice: 'Topic result was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /topic_results/1
  def destroy
    @topic_result.destroy
    redirect_to topic_results_url, notice: 'Topic result was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_result
      @topic_result = TopicResult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def topic_result_params
      params.require(:topic_result).permit(:topic_id, :student_id, :grade)
    end
end
