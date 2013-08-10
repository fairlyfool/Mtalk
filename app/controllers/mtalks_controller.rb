class MtalksController < ApplicationController
  before_action :set_mtalk, only: [:show, :edit, :update, :destroy]

  # GET /mtalks
  # GET /mtalks.json
  def index
    @mtalks = Mtalk.all
  end

  # GET /mtalks/1
  # GET /mtalks/1.json
  def show
  end

  # GET /mtalks/new
  def new
    @mtalk = Mtalk.new
  end

  # GET /mtalks/1/edit
  def edit
  end

  # POST /mtalks
  # POST /mtalks.json
  def create
    @mtalk = Mtalk.new(mtalk_params)

    respond_to do |format|
      if @mtalk.save
        format.html { redirect_to @mtalk, notice: 'Mtalk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mtalk }
      else
        format.html { render action: 'new' }
        format.json { render json: @mtalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mtalks/1
  # PATCH/PUT /mtalks/1.json
  def update
    respond_to do |format|
      if @mtalk.update(mtalk_params)
        format.html { redirect_to @mtalk, notice: 'Mtalk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mtalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtalks/1
  # DELETE /mtalks/1.json
  def destroy
    @mtalk.destroy
    respond_to do |format|
      format.html { redirect_to mtalks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtalk
      @mtalk = Mtalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mtalk_params
      params.require(:mtalk).permit(:name, :word)
    end
end
