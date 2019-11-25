class PropetiesController < ApplicationController
  before_action :set_propety, only: [:show, :edit, :update, :destroy]

  # GET /propeties
  def index
    @propeties = Propety.all
  end

  # GET /propeties/1
  def show
  end

  # GET /propeties/new
  def new
    @propety = Propety.new
  end

  # GET /propeties/1/edit
  def edit
  end

  # POST /propeties
  def create
    @propety = Propety.new(propety_params)

    if @propety.save
      redirect_to @propety, notice: 'Propety was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /propeties/1
  def update
    if @propety.update(propety_params)
      redirect_to @propety, notice: 'Propety was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /propeties/1
  def destroy
    @propety.destroy
    redirect_to propeties_url, notice: 'Propety was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propety
      @propety = Propety.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def propety_params
      params.require(:propety).permit(:name, :rent, :address, :age, :remarks)
    end
end
