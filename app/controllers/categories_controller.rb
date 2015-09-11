# controller for adding and deleting categories
class CategoriesController < ApplicationController
  before_action :require_user
  def index
    #@categories = Categorie.all
    @categories = Categorie.paginate(:page => params[:page], :per_page => 10)
    @categorie = Categorie.new
  end

  def new
    @categorie = Categorie.new
  end

  def create
    @categorie = Categorie.new(categorie_params)

    respond_to do |format|
      if @categorie.save
        format.html { redirect_to categories_url, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @categorie = Categorie.find(params[:id])
  end

  def update
    respond_to do |format|
      @categorie = Categorie.find(params[:id])
      if @categorie.update(categorie_params)
        format.html { redirect_to categories_url, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @categorie = Categorie.find(params[:id])
    if @categorie.present?
      @categorie.destroy
    end
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_categorie
    @categorie = Categorie.find(params[:id])
  end

  private

  def categorie_params
    params.require(:categorie).permit(:title)
  end
end
