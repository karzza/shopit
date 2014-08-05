class WholesalesController < ApplicationController
  before_action :set_wholesale, only: [:show, :edit, :update, :destroy]

  # GET /wholesales
  # GET /wholesales.json
  def index
    @wholesales = Wholesale.all
  end

  # GET /wholesales/1
  # GET /wholesales/1.json
  def show
  end

  # GET /wholesales/new
  def new
    @wholesale = Wholesale.new
  end

  # GET /wholesales/1/edit
  def edit
  end

  # POST /wholesales
  # POST /wholesales.json
  def create
    @wholesale = Wholesale.new(wholesale_params)

    respond_to do |format|
      if @wholesale.save
        format.html { redirect_to @wholesale, notice: 'Wholesale was successfully created.' }
        format.json { render :show, status: :created, location: @wholesale }
      else
        format.html { render :new }
        format.json { render json: @wholesale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wholesales/1
  # PATCH/PUT /wholesales/1.json
  def update
    respond_to do |format|
      if @wholesale.update(wholesale_params)
        format.html { redirect_to @wholesale, notice: 'Wholesale was successfully updated.' }
        format.json { render :show, status: :ok, location: @wholesale }
      else
        format.html { render :edit }
        format.json { render json: @wholesale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wholesales/1
  # DELETE /wholesales/1.json
  def destroy
    @wholesale.destroy
    respond_to do |format|
      format.html { redirect_to wholesales_url, notice: 'Wholesale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wholesale
      @wholesale = Wholesale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wholesale_params
      params.require(:wholesale).permit(:name, :address, :phone, :email)
    end
end
