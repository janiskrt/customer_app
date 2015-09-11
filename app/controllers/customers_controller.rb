# customer controller for creating updating showing and deleting customers
class CustomersController < ApplicationController
  before_action :require_user

  def index
    @customers = Customer.paginate(:page => params[:page], :per_page => 2)
  end

  def new
    @customer = Customer.new
    @categories = Categorie.all
  end

  def create
    puts YAML::dump(:customer)
  end
end
