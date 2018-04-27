class CartsController < ApplicationController
  def update
    session[:cart] ||= []
    session[:cart] << params[:post_id]
  end
end
