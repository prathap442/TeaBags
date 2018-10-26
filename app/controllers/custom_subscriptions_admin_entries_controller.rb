class CustomSubscriptionsAdminEntriesController < ApplicationController
  before_action :set_custom_subscriptions_admin_entry, only: [:show, :edit, :update, :destroy]

  # GET /custom_subscriptions_admin_entries
  # GET /custom_subscriptions_admin_entries.json
  def index
    @custom_subscriptions_admin_entries = CustomSubscriptionsAdminEntry.all
  end

  # GET /custom_subscriptions_admin_entries/1
  # GET /custom_subscriptions_admin_entries/1.json
  def show
  end

  # GET /custom_subscriptions_admin_entries/new
  def new
    @custom_subscriptions_admin_entry = CustomSubscriptionsAdminEntry.new
  end

  # GET /custom_subscriptions_admin_entries/1/edit
  def edit
  end

  # POST /custom_subscriptions_admin_entries
  # POST /custom_subscriptions_admin_entries.json
  def create
    @custom_subscriptions_admin_entry = CustomSubscriptionsAdminEntry.new(custom_subscriptions_admin_entry_params)

    respond_to do |format|
      if @custom_subscriptions_admin_entry.save
        format.html { redirect_to @custom_subscriptions_admin_entry, notice: 'Custom subscriptions admin entry was successfully created.' }
        format.json { render :show, status: :created, location: @custom_subscriptions_admin_entry }
      else
        format.html { render :new }
        format.json { render json: @custom_subscriptions_admin_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_subscriptions_admin_entries/1
  # PATCH/PUT /custom_subscriptions_admin_entries/1.json
  def update
    respond_to do |format|
      if @custom_subscriptions_admin_entry.update(custom_subscriptions_admin_entry_params)
        format.html { redirect_to @custom_subscriptions_admin_entry, notice: 'Custom subscriptions admin entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_subscriptions_admin_entry }
      else
        format.html { render :edit }
        format.json { render json: @custom_subscriptions_admin_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_subscriptions_admin_entries/1
  # DELETE /custom_subscriptions_admin_entries/1.json
  def destroy
    @custom_subscriptions_admin_entry.destroy
    respond_to do |format|
      format.html { redirect_to custom_subscriptions_admin_entries_url, notice: 'Custom subscriptions admin entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_subscriptions_admin_entry
      @custom_subscriptions_admin_entry = CustomSubscriptionsAdminEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_subscriptions_admin_entry_params
      params.require(:custom_subscriptions_admin_entry).permit(:subscription_duration, :max_variants, :minimum_value)
    end
end
