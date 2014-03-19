class SpecialitiesController < ApplicationController
  # GET /specialities
  # GET /specialities.json
  def index
    @specialities = Speciality.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specialities }
    end
  end

  # GET /specialities/1
  # GET /specialities/1.json
  def show
    @speciality = Speciality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @speciality }
    end
  end

  # GET /specialities/new
  # GET /specialities/new.json
  def new
    @speciality = Speciality.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speciality }
    end
  end

  # GET /specialities/1/edit
  def edit
    @speciality = Speciality.find(params[:id])
  end

  # POST /specialities
  # POST /specialities.json
  def create
    @speciality = Speciality.new(params[:speciality])

    respond_to do |format|
      if @speciality.save
        format.html { redirect_to @speciality, notice: 'Speciality was successfully created.' }
        format.json { render json: @speciality, status: :created, location: @speciality }
      else
        format.html { render action: "new" }
        format.json { render json: @speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specialities/1
  # PUT /specialities/1.json
  def update
    @speciality = Speciality.find(params[:id])

    respond_to do |format|
      if @speciality.update_attributes(params[:speciality])
        format.html { redirect_to @speciality, notice: 'Speciality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @speciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialities/1
  # DELETE /specialities/1.json
  def destroy
    @speciality = Speciality.find(params[:id])
    @speciality.destroy

    respond_to do |format|
      format.html { redirect_to specialities_url }
      format.json { head :no_content }
    end
  end
  
  def table
    @data = Array.new(Speciality.all.count)
    @competences = Competence.all
    Speciality.all.each do |speciality|
      @data[speciality.id-1] = {name: speciality.name, id: speciality.id, competences: []}
      speciality.speciality_competences.each do |dc|
        @data[speciality.id-1][:competences] << dc.competence_id
      end
    end
    #logger.debug @data
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
    Speciality.save_competences(params[:flag])
    redirect_to specialities_table_path
  end
  
  # params: speciality_id
  def disciplines_for_speciality
    @speciality = Speciality.find(params[:id])
    @disciplines_names = @speciality.competences.map{|c| c.disciplines.pluck(:name)}.flatten.uniq.sort
  end
end
