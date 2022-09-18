set -o errexit

bundle install
bundle exec rake assets:precompile
bundle lock --add-platform x86_64-linux
bundle exec rake assets:clean
bundle exec rake db:migrate