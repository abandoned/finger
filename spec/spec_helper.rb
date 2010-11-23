require "rubygems"
require "bundler/setup"
require "rspec"
require "ruby-debug"

require File.expand_path("../../lib/finger/cli", __FILE__)

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
