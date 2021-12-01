class CartsController < ApplicationController
  def new
  end

  def create
    
  end

  def show
  end

    def update
    @cart = Cart.find_by(user_id: current_user.id)
    # new_item = JoinTableCartItem.create(cart_id: @cart.id, item_id: params[:id])
      puts "##############################################"
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

end
