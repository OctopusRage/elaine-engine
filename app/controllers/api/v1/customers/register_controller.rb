class Api::V1::Customers::RegisterController < ApplicationController
  def create
    user = Customer.new(customer_params)
    if user.valid_password? customer_params[:password]
      if user.save
        render json: {
          status: 'success',
          data: {
            user: user
          }
        }, status: 201
      else
        render json: {
          status: 'fail',
          messages: user.errors,
        }, status: 422
      end
    else
      render json: {
        status: 'fail',
        messages: user.errors,
      }, status: 422
    end
  end

  private
    def customer_params
      params.require(:customer).permit(
        :email, :password, :password_confirmation,
        :date_of_birth,:gender,:name,:city,:phone_number)
    end  
end