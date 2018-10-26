class UserMonthlyProductInformationsController < ApplicationController
  before_action :set_user_monthly_product_information, only: [:show, :edit, :update, :destroy]

  # GET /user_monthly_product_informations
  # GET /user_monthly_product_informations.json
  def index
    @user_monthly_product_informations = UserMonthlyProductInformation.all
  end

  # GET /user_monthly_product_informations/1
  # GET /user_monthly_product_informations/1.json
  def show
  end

  # GET /user_monthly_product_informations/new
  def new
    @user_monthly_product_information = UserMonthlyProductInformation.new
  end

  # GET /user_monthly_product_informations/1/edit
  def edit
  end

  # POST /user_monthly_product_informations
  # POST /user_monthly_product_informations.json
  def create
    @user_monthly_product_information = UserMonthlyProductInformation.new(user_monthly_product_information_params)

    respond_to do |format|
      if @user_monthly_product_information.save
        format.html { redirect_to @user_monthly_product_information, notice: 'User monthly product information was successfully created.' }
        format.json { render :show, status: :created, location: @user_monthly_product_information }
      else
        format.html { render :new }
        format.json { render json: @user_monthly_product_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_monthly_product_informations/1
  # PATCH/PUT /user_monthly_product_informations/1.json
  def update
    respond_to do |format|
      if @user_monthly_product_information.update(user_monthly_product_information_params)
        format.html { redirect_to @user_monthly_product_information, notice: 'User monthly product information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_monthly_product_information }
      else
        format.html { render :edit }
        format.json { render json: @user_monthly_product_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_monthly_product_informations/1
  # DELETE /user_monthly_product_informations/1.json
  def destroy
    @user_monthly_product_information.destroy
    respond_to do |format|
      format.html { redirect_to user_monthly_product_informations_url, notice: 'User monthly product information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def visualise
    if(params["duration"])
     @duration = params["duration"].to_i
    end
    @h1 = Hash.new
    i=1
    @duration.times do
      @h1["month#{i}"] = []
      i+=1
    end
    binding.pry  
    @user_monthly_product_information = UserMonthlyProductInformation.new
    binding.pry
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_monthly_product_information
      @user_monthly_product_information = UserMonthlyProductInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_monthly_product_information_params
      params.require(:user_monthly_product_information).permit(:information)
    end
end
