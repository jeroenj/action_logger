# ActionLogger

Simple ActiveRecord activity logger. It allows you to log user actions to the database.

## Installation

Add this line to your application's Gemfile:

    gem 'action_logger'

And then execute:

    bundle

You'll need to create the migration:

    rails generate action_logger:install

## Usage

Now you can call `ActionLogger.log` to logs omething to the database. It takes two required paramaters which are `action` and `source`. It also takes an optional attributes hash.

Example:

    ActionLogger.log 'buy', 'search results'

This will log a buy action to the database which appeared on the search results. The optional paramters are:

    :sender    # Takes any object, e.g. current_user
    :ip        # Allows you to store an ip address
    :data      # Takes a hash with anything you want
    :admin_id  # allows you to set an extra id if for example an admin became a user through a "become" functionality

There is also a helper you can use in your controllers or views. In your `ApplicationController` add:

    include ActionLogsHelper

Now you're able to call the `log_action` helper:

    log_action 'buy', 'search results'

The optional attributes has will set some sane defaults:

    :sender    => current_user
    :ip        => request.remote_ip
    :data      => params
    :admin_id  => cirremt_admin_user

## Warning

This code is still very basic and has no automated tests. Your production database might not be the best place to log these actions.
At some point we might move to Mongo or any other database system if we feel it suits our needs better.
Feel free to fork and improve the code.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
