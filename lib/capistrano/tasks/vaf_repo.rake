namespace :vaf_repo do
  desc 'Deploy static files to the VAF mod repo'
  task :deploy do
    on roles(:app) do
      execute "cp /home/ubuntu/vaf_repo/VAF_Base.xml /var/www/html/vaf/shared/public/"
      execute "rsync -uv /home/ubuntu/vaf_repo/*.zip /var/www/html/vaf/shared/public"
    end
  end
end