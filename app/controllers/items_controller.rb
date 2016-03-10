class ItemsController < ApplicationController
  def create
    @items = current_user.items
    @item = current_user.items.build(items_params)
    @item.expires_at = Time.now + 7.days
    @user = current_user
    
    if @item.save
      flash[:notice] = "Task added to your To Do list."
    else
      flash[:error] = "Error saving task. Please try again."
    end
    redirect_to user_path(current_user)
  end
  
  def toggle
    @item = current_user.items.find(params[:item_id])
    
    if @item.completed
      @item.update_attributes(completed: false)
      flash[:notice] = "Task completed"
    else
      @item.update_attributes(completed: true)
      flash[:error] = "There was a problem completing the task. Please try again."
    end
    redirect_to [@item.user, @item]
  end
      
    
  def destroy
    @user = User.find(params[:user_id])
    @user = current_user
    @item = current_user.items.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "Task completed and removed from your list."
    else
      flash[:error] = "There was an error marking your task as complete."
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
    
  
  
  private
  
  def items_params
    (params.require(:item).permit(:name))
  end

end
