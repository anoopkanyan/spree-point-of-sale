class Spree::Api::PosController < Spree::Api::BaseController

    def associate_user
        @order =  Spree::Order.find_by_number(params[:number])
        @user = @order.associate_user_for_pos(params[:new_email])
        if @user.errors.present?
            add_error Spree.t(:add_user_failure, errors: @user.errors.full_messages.to_sentence)
        else
        @order.save!
        render json: @order    
        end
        
    end 
    
end    