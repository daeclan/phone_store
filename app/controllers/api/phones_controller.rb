class Api::PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render "index.json.jb"
  end

  def create
    @phone = Phone.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      storage: params[:storage],
      megapixels: params[:megapixels],
    )
    @phone.save
    render "show.json.jb"
  end

  def show
    @phone = Phone.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @phone = Phone.find_by(id: params[:id])
    @phone.name = params[:name] || @phone.name
    @phone.price = params[:price] || @phone.price
    @phone.description = params[:description] || @phone.description
    @phone.storage = params[:storage] || @phone.storage
    @phone.megapixels = params[:megapixels] || @phone.megapixels
    @phone.save
    render "show.json.jb"
  end

  def delete
    @phone = Phone.find_by(id: params[:id])
    @phone.destroy
    render json: { Alert: "You dropped your phone." }
  end
end
