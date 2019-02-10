class FavoritesController < ApplicationController
  before_action :set_product

  def create
    respond_to do |format|
      if Favorite.create(product: @product, user: current_user)
        format.html {redirect_to @product, notice: 'Product has been favorited'}
        format.json { render :show, status: :created, location: @product }
      else
        format.html {redirect_to @product, alert: 'Something went wrong...*sad panda*'}
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      Favorite.where(product_id: @product.id, user_id: current_user.id).first.destroy
      format.html {redirect_to @product, notice: 'Product is no longer in favorites'}
      format.json { head :no_content }
    end
  end
  private

  def set_product
    @product = Product.find(params[:product_id] || params[:id])
  end
end
