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

  def import
    @cocktail = Cocktail.find(params[:id])
    url = "https://www.destinationcocktails.fr/recette/#{@coktail.name}"
    html_file = open(url).read
    doc = Nokogiri::HTML(html_file, nil, 'utf-8')
    doc.search('.recipe-know-area').each do |element|
      @cocktail.description = element.at('.description').text.strip
    end
  end
end
