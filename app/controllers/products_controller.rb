class ProductsController < ApplicationController
  add_breadcrumb 'Home', :root_path

  def index
    @products = Product.all.page(params[:page]).per(5)
  end

  def show
    @product = Product.find(params[:id])
    add_breadcrumb @product.name.to_s, :product_path
  end

  def search
    add_breadcrumb 'Search Results', :products_search_path
    if params[:genre] != 'All' && params[:product].strip != ''
      @query = "#{params[:product]}, #{params[:genre]}"
      @products = Genre.find_by_name(params[:genre]).products.where("name LIKE ('%#{params[:product]}%')").page(params[:page]).per(5)
    elsif params[:genre] != 'All' && params[:product].strip == ''
      @query = params[:genre]
      @products = Genre.find_by_name(params[:genre]).products.page(params[:page]).per(5)
    elsif params[:genre] == 'All' && params[:product].strip != ''
      @query = params[:product]
      @products = Product.where("name LIKE ('%#{params[:product]}%')").page(params[:page]).per(5)
    else
      redirect_to root_path
    end
  end
end
