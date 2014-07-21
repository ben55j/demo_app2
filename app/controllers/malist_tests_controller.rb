class MalistTestsController < ApplicationController
  before_action :set_malist_test, only: [:show, :edit, :update, :destroy]

  # GET /malist_tests
  # GET /malist_tests.json
  def index
    @malist_tests = MalistTest.all
  end

  # GET /malist_tests/1
  # GET /malist_tests/1.json
  def show
  end

  # GET /malist_tests/new
  def new
    @malist_test = MalistTest.new
  end

  # GET /malist_tests/1/edit
  def edit
  end

  # POST /malist_tests
  # POST /malist_tests.json
  def create
    @malist_test = MalistTest.new(malist_test_params)

    respond_to do |format|
      if @malist_test.save
        format.html { redirect_to @malist_test, notice: 'Malist test was successfully created.' }
        format.json { render :show, status: :created, location: @malist_test }
      else
        format.html { render :new }
        format.json { render json: @malist_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malist_tests/1
  # PATCH/PUT /malist_tests/1.json
  def update
    respond_to do |format|
      if @malist_test.update(malist_test_params)
        format.html { redirect_to @malist_test, notice: 'Malist test was successfully updated.' }
        format.json { render :show, status: :ok, location: @malist_test }
      else
        format.html { render :edit }
        format.json { render json: @malist_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malist_tests/1
  # DELETE /malist_tests/1.json
  def destroy
    @malist_test.destroy
    respond_to do |format|
      format.html { redirect_to malist_tests_url, notice: 'Malist test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malist_test
      @malist_test = MalistTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malist_test_params
      params.require(:malist_test).permit(:content, :attribut, :cabinet)
    end
end
