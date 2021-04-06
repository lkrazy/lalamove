# frozen_string_literal: true

require 'lalamove/helper'

module Lalamove
  class API
    # Order 
    class Order
      def self.order(payload)
        res = Helper.request('/v2/orders', payload, 'POST')
        if res.code == 402
          res.body = { message: 'You have insufficient credit. Please top up your wallet' }
        elsif res.code == 403
          res.body = { message: 'The currency you provided in quotedTotalFee.currency is not a valid currency' }
        elsif res.code == 409
          res.body = { message: 'The amount or currency you provided in quotedTotalFee doesn\'t match quotation' }
        elsif res.code == 429
          res.body = { message: 'Too Many Request' }
        end
        res
      end

      def self.order_detail(id)
        Helper.request("/v2/orders/#{id}", {}, 'GET')
      end

      def self.driver_details(id, driver_id)
        Helper.request("/v2/orders/#{id}/drivers/#{driver_id}", {}, 'GET')
      end

      def self.driver_location(id, driver_id)
        Helper.request("/v2/orders/#{id}/drivers/#{driver_id}/location", {}, 'GET')
      end

      def self.cancel_order(id)
        Helper.request("/v2/orders/#{id}/cancel", {}, 'PUT')
      end
    end
  end
end
