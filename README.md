# ChannelEngine
Please visit https://www.channelengine.com/developers/ for more information.
The API reference can be found at https://demo.channelengine.net/api/swagger/ui/index

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build channelengine_api_client_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./channelengine_api_client_ruby-2.4.1.gem
```
(for development, run `gem install --dev ./channelengine_api_client_ruby-2.4.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'channelengine_api_client_ruby', '~> 2.4.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'channelengine_api_client_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'channelengine_api_client_ruby'

# Setup authorization
ChannelEngineApiClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ChannelEngineApiClient::CancellationApi.new

cancellation = ChannelEngineApiClient::MerchantCancellationRequest.new # MerchantCancellationRequest | 


begin
  #Merchant: Create Cancellation
  result = api_instance.cancellation_create(cancellation)
  p result
rescue ChannelEngineApiClient::ApiError => e
  puts "Exception when calling CancellationApi->cancellation_create: #{e}"
end

```
