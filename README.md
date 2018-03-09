[![Gem Version](https://badge.fury.io/rb/visible.svg)](https://badge.fury.io/rb/visible)
# Visible

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/visible`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'visible'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install visible

## Usage

```ruby 
 #By default it installs all channels. You can also pass 'sms', 'call', or 'email' to only install the specified channels.
 rake visible:install 
 sms = Visible::SMS.sender.new
 call = Visible::Call.sender.new(:from => '+18005555555')
 email = Visible::Email.sender.new(:files => ['logo.png'])

 #Signature is optional but if passed is always included. You can also set :from and :signature in your visible.yml file. 
 sms.add(:from  => '+15551115555', :to => '+15555555555,  :signature => '~The Visible Team') 
 #Signature, gender,  is option as well but special chracters inclusion is not recommended.
 call.add(:from  => '+15551115555', :to => '+15555555555,  :signature => 'The Visible Team', :gender => 'female', :name => 'Alex') 
 email.add(:from => 'email@example.com', :subject => 'Here you go', :body => 'I will bring you the bill later', :files => [path.png, path.png], :links => ['https//example.com']) #Files and Url arrays are optional.

 #send all or by index
 email.send
 email[1].send
 
 #status
 email[4].status
 email.status
 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yuric/visible. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Visible project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yuric/visible/blob/master/CODE_OF_CONDUCT.md).
