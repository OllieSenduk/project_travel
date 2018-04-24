Our newest app

commands:

1. do a codecheck:
    bundle exec rails_best_practices .

Running tests:
# Run only model specs
bundle exec rspec spec/models

# Run only specs for AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run only spec on line 8 of AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb:8
rails generate rspec:model widget
will create a new spec file in spec/models/widget_spec.rb.

The same generator pattern is available for all specs:

scaffold
model
controller
helper
view
mailer
observer
integration
feature
job
