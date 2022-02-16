class FlatsController < ApplicationController
  def index
    if params[:search].present?
      @search_term = params[:search]
      @flats = Flat.where("name LIKE ? OR address LIKE ? OR description LIKE ?", "%#{@search_term}%", "%#{@search_term}%", "%#{@search_term}%")
    else
      @flats = Flat.all
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :number_of_guests, :price_per_night, :image_url, :description)
  end
end
