class FatTestsController < ApplicationController
  before_action :set_fat_test, only: [:show, :edit, :update, :destroy]

  # GET /fat_tests
  # GET /fat_tests.json
  def index
    @fat_tests = FatTest.all
  end

  # GET /fat_tests/1
  # GET /fat_tests/1.json
  def show
  end

  # GET /fat_tests/new
  def new
    @fat_test = FatTest.new
  end

  # GET /fat_tests/1/edit
  def edit
  end

  # POST /fat_tests
  # POST /fat_tests.json
  def create
    @fat_test = FatTest.new(fat_test_params)

      if @fat_test.save
          flash[:notice] = "Test has been saved successfully."
          redirect_to(fat_tests_path, :notice => "Test has been saved successfully.")
        else
          render(:new, :error => @fat_test.errors)
     end 
  end
    
    
    

  # PATCH/PUT /fat_tests/1
  # PATCH/PUT /fat_tests/1.json
  def update
    respond_to do |format|
      if @fat_test.update(fat_test_params)
        format.html { redirect_to @fat_test, notice: 'Fat test was successfully updated.' }
        format.json { render :show, status: :ok, location: @fat_test }
      else
        format.html { render :edit }
        format.json { render json: @fat_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fat_tests/1
  # DELETE /fat_tests/1.json
  def destroy
    @fat_test.destroy
    respond_to do |format|
      format.html { redirect_to fat_tests_url, notice: 'Fat test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fat_test
      @fat_test = FatTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fat_test_params
      params.require(:fat_test).permit!
    end

end


