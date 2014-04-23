class MicropsotsController < ApplicationController
  before_action :set_micropsot, only: [:show, :edit, :update, :destroy]

  # GET /micropsots
  # GET /micropsots.json
  def index
    @micropsots = Micropsot.all
  end

  # GET /micropsots/1
  # GET /micropsots/1.json
  def show
  end

  # GET /micropsots/new
  def new
    @micropsot = Micropsot.new
  end

  # GET /micropsots/1/edit
  def edit
  end

  # POST /micropsots
  # POST /micropsots.json
  def create
    @micropsot = Micropsot.new(micropsot_params)

    respond_to do |format|
      if @micropsot.save
        format.html { redirect_to @micropsot, notice: 'Micropsot was successfully created.' }
        format.json { render :show, status: :created, location: @micropsot }
      else
        format.html { render :new }
        format.json { render json: @micropsot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropsots/1
  # PATCH/PUT /micropsots/1.json
  def update
    respond_to do |format|
      if @micropsot.update(micropsot_params)
        format.html { redirect_to @micropsot, notice: 'Micropsot was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropsot }
      else
        format.html { render :edit }
        format.json { render json: @micropsot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropsots/1
  # DELETE /micropsots/1.json
  def destroy
    @micropsot.destroy
    respond_to do |format|
      format.html { redirect_to micropsots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropsot
      @micropsot = Micropsot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropsot_params
      params.require(:micropsot).permit(:content, :user_id)
    end
end
