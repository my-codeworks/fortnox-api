ENV['RUBY_ENV'] = 'test'

require 'rspec/collection_matchers'
require 'webmock/rspec'
require 'pry'
require "codeclimate-test-reporter"
require 'support/matchers'
require 'support/helpers'
require 'support/vcr_setup'

CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.extend Helpers # Allow access to helpers in describe and context blocks
  config.include Helpers # Allow access to helpers in it and let blocks

  config.include Helpers::Repositories, integration: true

  config.order = 'random'

  WebMock.disable_net_connect!( allow: 'codeclimate.com' )

  config.after( :each ) do
    ENV['FORTNOX_API_BASE_URL'] = nil
    ENV['FORTNOX_API_CLIENT_SECRET'] = nil
    ENV['FORTNOX_API_ACCESS_TOKEN'] = nil
  end
end
