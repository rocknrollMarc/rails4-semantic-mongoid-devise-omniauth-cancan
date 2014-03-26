# Rails 4.0 App with Mongoid, Devise, CanCan, OmniAuth and Semantic UI (TDD ready)
---

You can use this project as a starting point for a Rails web application.
[Check out the demo](http://rails-semantic.herokuapp.com/) you can login as an administrator with: `admin@example.com / administrator`

* Rails 4
* Mongoid as database
* Devise with OmniAuth for user management and authentication
* CanCan for user access control
* Haml for default views
* Simple Form for forms
* Semantic UI for CSS styling with default scripts and form helpers
* jGrowl for more sensible flash messages with no config required

## Installation
* clone this repo
* Edit `db/seed.rb` to customize admin user settings then run `rake db:seed` to create admin user
* Edit `config/initializers/devise.rb` to customize your omniauth providers:
  ```ruby
  config.omniauth :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: 'email,user_birthday,read_stream'
  config.omniauth :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
  ```
* Edit `config/config.yml` to customize your application settings, they will be available via `AppConfig` object within your app, e.g. `AppConfig.default_role`
* Run with `unicorn -p 2222` and browse at `http://localhost:2222`

## Simple Form
By default, your form fields will be wrapped using simple form, however there are a few custom wrappers you can use as well:

**Select Fields**

```ruby
= simple_form_for @challenge do |f|
  .field
    = f.label 'Challenge Type'
    = semantic_select :type, f, ['option 1', 'option 2'], default: 'None'
  .field
    = f.submit t('submit')
```

**Checkboxes or Radio Fields**
```ruby
= f.input :remember_me, as: :boolean, wrapper: :semantic_checkbox
```

---
### Links

* [Devise](http://github.com/plataformatec/devise)
* [OmniAuth](https://github.com/intridea/omniauth)
* [CanCan](https://github.com/ryanb/cancan)
* [Semantic UI](https://github.com/doabit/semantic-ui-sass)