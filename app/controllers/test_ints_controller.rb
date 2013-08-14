class TestIntsController < ApplicationController
  before_action :set_test_int, only: [:show, :edit, :update, :destroy]

  # GET /test_ints
  # GET /test_ints.json
  def index
    @test_ints = TestInt.all
  end

  # GET /test_ints/1
  # GET /test_ints/1.json
  def show
  end

  # GET /test_ints/new
  def new
    @test_int = TestInt.new
  end

  # GET /test_ints/1/edit
  def edit
  end

  # POST /test_ints
  # POST /test_ints.json
  def create
    @test_int = TestInt.new(test_int_params)

    respond_to do |format|
      if @test_int.save
        format.html { redirect_to @test_int, notice: 'Test int was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_int }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_ints/1
  # PATCH/PUT /test_ints/1.json
  def update
    respond_to do |format|
      if @test_int.update(test_int_params)
        format.html { redirect_to @test_int, notice: 'Test int was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_ints/1
  # DELETE /test_ints/1.json
  def destroy
    @test_int.destroy
    respond_to do |format|
      format.html { redirect_to test_ints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_int
      @test_int = TestInt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_int_params
      params.require(:test_int).permit(:number)
    end
end
