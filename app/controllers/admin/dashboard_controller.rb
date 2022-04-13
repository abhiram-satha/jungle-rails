class Admin::DashboardController < ApplicationController
  def show
    @products_sum = Product.sum(:quantity)
    @category_sum = Category.all
  end
end
