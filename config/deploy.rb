# config valid only for current version of Capistrano
lock "3.7.2"

set :application, "vaf"
set :repo_url, "git@github.com:deephack1982/vaf.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :branch, "deploy"
set :user, "ubuntu"
set :rails_env, "production"
set :keep_releases, 5

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/html/vaf"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
append :linked_files, "public/VAF_Base.xml", "public/3_Squadron_AV-8B.zip", "public/22_Squadron.zip", "public/416_Squadron_VAF.zip", "public/476 Range Targets 16JUN19.zip", "public/476th - Range Objects - 21JAN17.zip", "public/476th_-_Range_Objects_-_21JAN17.zip", "public/870_Squadron_ZA.zip", "public/Civil_Aircraft_Mod_V0.80.zip", "public/ECHO19_DCSFA18.zip", "public/L-39C_870_Squadron.zip", "public/UK_Yak-52.zip", "public/VPC-Airfield_Equipment_0.9.4_beta.zip"

# Default value for linked_dirs is []
append :linked_dirs, "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  before 'deploy:check:linked_dirs', 'vaf_repo:deploy'
end
