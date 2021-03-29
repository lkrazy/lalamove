# frozen_string_literal: true

require 'lalamove/version'
require 'lalamove/configuration'
require 'lalamove/lala_response'
require 'lalamove/service'
require 'lalamove/order'
require 'lalamove/helper'

# Lalamove
module Lalamove
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
