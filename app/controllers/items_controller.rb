class ItemsController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
  # before_action :authenticate_user!

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

   def update
   
    @cart = Cart.find_by(user_id: current_user.id)
    new_item = JoinTableCartItem.create(cart_id: @cart.id, item_id: params[:id])

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end


end
