class GratchesController < ApplicationController
  before_action :set_gratch, only: [:show, :edit, :update, :destroy]

  # GET /gratches
  # GET /gratches.json
  def index
    @gratches = Gratch.all
  end

  # GET /gratches/1
  # GET /gratches/1.json
  def show
  end

  # GET /gratches/new
  def new
    @gratch = Gratch.new
  end

  # GET /gratches/1/edit
  def edit
  end

  # POST /gratches
  # POST /gratches.json
  def create
    @gratch = Gratch.new(gratch_params)

    respond_to do |format|
      if @gratch.save
        format.html { redirect_to @gratch, notice: 'Gratch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gratch }
      else
        format.html { render action: 'new' }
        format.json { render json: @gratch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gratches/1
  # PATCH/PUT /gratches/1.json
  def update
    respond_to do |format|
      if @gratch.update(gratch_params)
        format.html { redirect_to @gratch, notice: 'Gratch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gratch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gratches/1
  # DELETE /gratches/1.json
  def destroy
    @gratch.destroy
    respond_to do |format|
      format.html { redirect_to gratches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gratch
      @gratch = Gratch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gratch_params
      params.require(:gratch).permit(:host_id, :bro1_id, :bro2_id, :bro3_id, :bro4_id, :datetime, :city, :adress, :zipcode)
    end
end
