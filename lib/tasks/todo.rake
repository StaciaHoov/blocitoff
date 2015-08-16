namespace :todo do
  desc "Automatically delete expired tasks for TODO list"
  task delete_items: :environment do
    Item.where("expires_at <= ?", Time.now).destroy_all
  end
end
