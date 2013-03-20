require "bundler/capistrano"

set :application, "blogx"
set :scm, :git
set :repository,  "git://github.com/inforserver2/blogx.git"


server "192.168.1.5", :app, :web, :db, primary:true
ssh_options[:port] = 2222

set :user, "hribeiro"
set :group, "hribeiro"
set :deploy_to, "/var/web/unnys.co"
set :use_sudo, false

set :deploy_via, :copy
set :copy_strategy, :export


# if you want to clean up old releases on each deploy uncomment this:
#after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
