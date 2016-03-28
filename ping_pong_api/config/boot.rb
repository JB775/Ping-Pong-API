ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.


# Setting this API to automatically run on port 3001 by default
require 'rails/commands/server'

module DefaultOptions
  def default_options
    super.merge!(Port: 3001)
  end
end


Rails::Server.send(:prepend, DefaultOptions)