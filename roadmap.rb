User
email:string


Item
completed:boolean, default: false
expires_at:datetime
name:string
user_id: user:references

rails g model Item user:references completed:boolean expires_at:datetime name:string 


class Item
    def time_left
        self.created_at - 7.days
    end
end

# Controller

def create
    @item = current_user.items.build(item_params)
    @item.expires_at = Time.now + 7.days
    if @item.save
        
    else
        ..
    end
end

# custom routes
    

thing.expires_at