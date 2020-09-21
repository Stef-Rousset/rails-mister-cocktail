require 'open-uri'
require 'nokogiri'

class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      @cocktails = Cocktail.search_by_name(params[:query])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    name = @cocktail.name
    url = "https://www.destinationcocktails.fr/recette/#{name}"
    html_file = open(url).read
    doc = Nokogiri::HTML(html_file, nil, 'utf-8')
    @cocktail.description = doc.search('.recipe-know-area').text.strip
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def cocktail_params
  params.require(:cocktail).permit(:name, :description, :ingredients, :photo)
  end
end
