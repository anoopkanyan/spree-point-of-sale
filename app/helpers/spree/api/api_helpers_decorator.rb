
module Spree
  module Api
    module ApiHelpers
       
       @@order_attributes = [
        :id, :number, :item_total, :total, :ship_total, :state, :adjustment_total,
        :user_id, :created_at, :updated_at, :completed_at, :payment_total,
        :shipment_state, :payment_state, :email, :special_instructions, :channel,
        :included_tax_total, :additional_tax_total, :display_included_tax_total,
        :display_additional_tax_total, :tax_total, :currency, :considered_risky,
        :canceler_id, :is_pos
      ]
      
      @@stock_location_attributes = [
        :id, :name, :address1, :address2, :city, :state_id, :state_name,
        :country_id, :zipcode, :phone, :active, :store, :address_id 
      ]
      
    
    end 
  end
end