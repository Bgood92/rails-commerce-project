class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(5)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @query = params[:search]
    @products = Product.where("name LIKE ('%#{params[:search]}%')").page(params[:page]).per(5)
  end

  def search_by_category
    @genre = Genre.find_by_name(params[:genre])
    @products = Genre.find_by_name(params[:genre]).products.page(params[:page]).per(5)
  end
end
