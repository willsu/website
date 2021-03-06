namespace :assets do
  desc "assets:precompile task for heroku"
  # because sprockets still gets included by some gem
  task precompile: :environment do
    `yarn install`
    `yarn run build`
    `bundle exec opal-webpack-compile-server kill` # just to make sure it gets stopped
  end
end
