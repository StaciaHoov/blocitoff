class ItemsController < ApplicationController


  def create
    @items = current_user.items
    @item = current_user.items.create(params.require(:item).permit(:name))
    @item.expires_at = Time.now + 7.days
    
    if @item.save
      flash[:notice] = "Task added to your To Do list."
    else
      flash[:error] = "Error saving task. Please try again."
    end
    redirect_to user_path(current_user)
  end

end
