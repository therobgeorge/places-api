class PlacesController < ApplicationController
  def index
    places = Place.all
    render json: places
  end

  def show
    place = Place.find(params[:id])
    render json: place
  end

  def create
    place = Place.new(
    name: params[:name],
    address: params[:address]
    )
    if place.save
      render json: place
    else
      render json: {errors: place.errors.full_messages}, status: :unprocessable_entity
    end    
  end

  def update
    place = Place.find(params[:id])
    place.name = params[:name] || place.name
    place.address = params[:name] || place.address
    place.save
    render json: place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    render json: {message: "This place has been deleted"}
  end


end
