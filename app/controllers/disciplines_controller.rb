class DisciplinesController < ApplicationController
  # GET /disciplines
  # GET /disciplines.json
  def index
    @disciplines = Discipline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disciplines }
    end
  end

  # GET /disciplines/1
  # GET /disciplines/1.json
  def show
    @discipline = Discipline.find(params[:id])
    @topic_count = @discipline.topics.count
    @lesson_count = @discipline.lessons.count

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discipline }
    end
  end

  # GET /disciplines/new
  # GET /disciplines/new.json
  def new
    @discipline = Discipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @discipline }
    end
  end

  # GET /disciplines/1/edit
  def edit
    @discipline = Discipline.find(params[:id])
  end

  # POST /disciplines
  # POST /disciplines.json
  def create
    @discipline = Discipline.new(discipline_params)

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to @discipline, notice: 'Discipline was successfully created.' }
        format.json { render json: @discipline, status: :created, location: @discipline }
      else
        format.html { render action: "new" }
        format.json { render json: @discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines/1
  # PUT /disciplines/1.json
  def update
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(discipline_params)
        format.html { redirect_to @discipline, notice: 'Discipline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.json
  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    respond_to do |format|
      format.html { redirect_to disciplines_url }
      format.json { head :no_content }
    end
  end
  
  def table
    @data = Array.new(Discipline.all.count)
    @competences = Competence.all
    Discipline.all.each do |discipline|
      @data[discipline.id-1] = {name: discipline.name, id: discipline.id, competences: []}
      discipline.discipline_competences.each do |dc|
        @data[discipline.id-1][:competences] << dc.competence_id
      end
    end
    respond_to do |format|
      format.html do
        if params[:edit]
          render "table_edit" # table.haml
        else
          render "table"
        end
      end
      #format.json { render json: @disciplines }
    end
  end
  
  def save_table
    Discipline.save_competences(params[:flag])
    redirect_to root_url
  end
  
  def discipline_params
     params.require(:discipline).permit(:name)
  end
end
