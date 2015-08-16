# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
# Good instructions for set up here: http://ythcreative.com/blog/2014/10/09/rails-note-automating-rake-tasks-with-whenever-gem/
set :output, "log/cron.log"

every 1.day, :at => "12:01 am" do
    rake "todo:delete_items"
end