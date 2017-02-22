class ArtistsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user = current_user
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:username, :domain_id, :street, :zipcode, :city, :country, :siret, :description, :email, :phone, :website, :photo)
  end
end
