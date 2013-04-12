# EasyEnv

Even easier access to environment variables in Ruby.

Basically, replaces `ENV["LONG_ENV_NAME"]` with `ENV.long_env_name`.

## Installation

Add this line to your application's Gemfile:

    gem 'easy_env'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_env

## Usage

Just access your environment vars as `ENV.long_env_name` instead of `ENV["LONG_ENV_NAME"]`.  It makes no pains to support mixed-case ENV vars.  They are abominations.

Also, `ENV.unknown_var` will return `nil`, instead of raising `NoMethodError`.  

~~~ ruby
ENV["FOO_BAR"] = "hi"
ENV.foo_bar                   # hi
ENV.respond_to? :foo_bar      # true
ENV.unknown_name              # nil, not NoMethodError
ENV.respond_to? :unknown_name # false
~~~


See also: [dotenv](https://github.com/bkeepers/dotenv).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
