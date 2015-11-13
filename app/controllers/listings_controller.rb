class ListingsController < ApplicationController

	before_action :authenticate_user!, :only => [:new, :create]


	def index
		
		@search = Listing.search(params[:q])
 	 	@listings = @search.result.order("year").page(params[:page]).per(10)
	end

	def new
		@listing = Listing.new
	end


	def create
    	current_user.listings.create(listing_params)
    	redirect_to root_path
  	end

  private

	def listing_params
	    params.require(:listing).permit(:year, :make, :model, :submodel, :description, :wheelsize, :mileage)
	end


end
