class Item < ActiveRecord::Base
  belongs_to :user
  
  def days_left
    (self.expires_at.to_date - Time.now.to_date).to_i
  end
  
  # def user 
  #   User.find(user_id)
  # end
      
end
