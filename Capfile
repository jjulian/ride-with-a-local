load 'deploy' if respond_to?(:namespace) # cap2 differentiator


set :application, "ride-with-a-local"
set :scm, "git"
set :repository, "git@github.com:jjulian/ride-with-a-local.git"
set :branch, "master"

role :web, "67.207.150.229"
role :db, "67.207.150.229", :primary => true
set :user, "www-data"
set :use_sudo, false
set :deploy_to, "/var/www/ride-with-a-local"

namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :web, :except => { :no_release => true } do
     run "touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end
