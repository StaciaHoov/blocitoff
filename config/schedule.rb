
set :output, "log/cron.log"

every 1.day, :at => "6:57 am" do
    rake "todo:delete_items"
end