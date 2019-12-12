require "lalamove/version"
require "lalamove/configuration"

module Lalamove
  class Error < StandardError; end
  class << self
    attr_accessor :configuration
  end

  def self.config
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(config)
  end

end