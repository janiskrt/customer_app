# controller for adding and deleting categories
class CategoriesController < ApplicationController
  before_action :require_user
  def index
    @categories = Categorie.all
  end

  def new
    @categorie = Categorie.new
  end

  def create
    @categorie = Categorie.new(categorie_params)

    respond_to do |format|
      if @categorie.save
        format.html { redirect_to categories_url, notice: 'Categorie was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end

  private

  def categorie_params
    params.require(:categorie).permit(:title)
  end
end
