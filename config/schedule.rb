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

#set :output, "#{path}/log/cron.log"

every 1.minute do
  runner "User.create(name:'jones_#{User.count+1}')"
end


#every 1.day, at: '4:30 am' do
# command "astrails-safe #{path}/config/astrails_safe.rb"
# rake "login_histories:clean"
#end

# whenever -w -s environment=development
# whenever -w -s environment=production
