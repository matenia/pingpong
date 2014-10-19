# Ping Pong

## Purpose

Track office ping pong games!

## Development

    bundle install --path vendor/bundle
    bundle exec rake bower:install
    bundle exec rake db:create db:migrate db:seed
    bundle exec puma -C config/puma.rb

## Testing

    bundle exec rspec

## Deployment

### First time:

    heroku create
    heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
    heroku config:set HTTP_AUTH_NAME=[username] HTTP_AUTH_PASSWORD=[password]

Then set up your users:

    heroku run rails console
    User.create!(name: "...", image_url: "...")
    etc

### Every time:

    git push heroku develop:master

## Contribution

- Checkout a new branch based on `develop` and name it to what you intend to do:
  - Example:
    ````
    $ git checkout -b BRANCH_NAME
    ````
  - Use one branch per fix/feature
- Make your changes
  - Make sure to provide a spec
  - Run your tests with `bundle exec rspec`
  - When all tests pass, everything's fine
- Commit your changes
  - Please provide a git message which explains what you've done
  - Commit to the forked repository
- Make a pull request

If you follow these instructions, your PR will land pretty safety in the main repo!

