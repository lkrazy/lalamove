# frozen_string_literal: true

require 'lalamove/helper'

module Lalamove
  # Service
  class API 
    def self.quotation(payload)
      Helper.request('/v3/quotations', { data: payload }, 'POST')
    end
  end
end
