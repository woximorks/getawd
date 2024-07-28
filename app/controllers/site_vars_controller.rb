class SiteVarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_site_var, only: %i[ show edit update destroy ]

  # GET /site_vars or /site_vars.json
  def index
    @site_vars = SiteVar.all
  end

  # GET /site_vars/1 or /site_vars/1.json
  def show
  end

  # GET /site_vars/new
  def new
    @site_var = SiteVar.new
  end

  # GET /site_vars/1/edit
  def edit
  end

  # POST /site_vars or /site_vars.json
  def create
    @site_var = SiteVar.new(site_var_params)

    respond_to do |format|
      if @site_var.save
        format.html { redirect_to site_var_url(@site_var), notice: "Site var was successfully created." }
        format.json { render :show, status: :created, location: @site_var }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @site_var.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_vars/1 or /site_vars/1.json
  def update
    respond_to do |format|
      if @site_var.update(site_var_params)
        format.html { redirect_to site_var_url(@site_var), notice: "Site var was successfully updated." }
        format.json { render :show, status: :ok, location: @site_var }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_var.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_vars/1 or /site_vars/1.json
  def destroy
    @site_var.destroy!

    respond_to do |format|
      format.html { redirect_to site_vars_url, notice: "Site var was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_var
      @site_var = SiteVar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_var_params
      params.require(:site_var).permit(:site_var_heading1, :site_var_heading2, :site_var_heading3, :site_var_heading4, :site_var_heading5, :site_var_disclaimer1)
    end
end
