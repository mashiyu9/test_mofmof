class PropetiesController < ApplicationController
  before_action :set_propety, only: [:show, :edit, :update, :destroy]

  def index
    @propeties = Propety.all
  end

  def show
  end

  def new
    @propety = Propety.new
  end

  def edit
  end

  def create
    @propety = Propety.new(propety_params)

    if @propety.save
      redirect_to @propety, notice: 'Propety was successfully created.'
    else
      render :new
    end
  end

  def update
    if @propety.update(propety_params)
      redirect_to @propety, notice: 'Propety was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @propety.destroy
    redirect_to propeties_url, notice: 'Propety was successfully destroyed.'
  end

  private
    def set_propety
      @propety = Propety.find(params[:id])
    end

    def propety_params
      params.require(:propety).permit(:name, :rent, :address, :age, :remarks)
    end
end
