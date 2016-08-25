require 'spec_helper'

describe Spree::Api::OrdersController do

  # This is required for Rspec route_to to work!
  routes { Spree::Core::Engine.routes }

  describe "GET /api/orders/mine" do
    it "should route" do
      expect(:get => "/api/orders/mine").to route_to(
        controller: 'spree/api/orders',
        action:     'mine',
        format:     'json'
      )
    end
  end
end