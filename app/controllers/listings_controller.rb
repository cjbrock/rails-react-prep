class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end
  
  def show
    @listing = Listing.find_by(id: params[:id])
    render json: @listing
  end
  
  def create
    @listing = Listing.new(listing_params)
    render json: @listing
  end
  
  private
    def listing_params
      params.require(:listing).permit(:name, :address, :price)
    end
  
end
