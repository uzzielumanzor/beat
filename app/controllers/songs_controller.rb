class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params[:song])  
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
        redirect_to @song
    else
        render :edit
    end
  end

  def destroy
    Song.find_by_id(params[:id]).try(:delete)
    redirect_to songs_path
  end
end
