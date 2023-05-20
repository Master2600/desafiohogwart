class PagesController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to pages_path, notice: 'Personaje registrado exitosamente.'
    else
      render :new
    end
  end

  def search
    @characters = Character.all
    @selected_character = Character.find_by(id: params[:character_id])
  end

  private

  def character_params
    params.require(:character).permit(:name, :location, :house)
  end
end




