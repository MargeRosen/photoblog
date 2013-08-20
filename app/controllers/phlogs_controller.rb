class PhlogsController < ApplicationController
  before_action :set_phlog, only: [:show, :edit, :update, :destroy]

  # GET /phlogs
  # GET /phlogs.json
  def index
    @phlogs = Phlog.all
  end

  # GET /phlogs/1
  # GET /phlogs/1.json
  def show
  end

  # GET /phlogs/new
  def new
    @phlog = Phlog.new
  end

  # GET /phlogs/1/edit
  def edit
  end

  # POST /phlogs
  # POST /phlogs.json
  def create
    @phlog = Phlog.new(phlog_params)

    respond_to do |format|
      if @phlog.save
        format.html { redirect_to @phlog, notice: 'Photo blog created.' }
        format.json { render action: 'show', status: :created, location: @phlog }
      else
        format.html { render action: 'new' }
        format.json { render json: @phlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phlogs/1
  # PATCH/PUT /phlogs/1.json
  def update
    respond_to do |format|
      if @phlog.update(phlog_params)
        format.html { redirect_to @phlog, notice: 'Photo blog updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phlogs/1
  # DELETE /phlogs/1.json
  def destroy
    @phlog.destroy
    respond_to do |format|
      format.html { redirect_to phlogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phlog
      @phlog = Phlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phlog_params
      params.require(:phlog).permit(:title, :pic, :pic_processed, :location, :description)
    end
end
