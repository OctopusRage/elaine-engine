class Api::V1::UsersController < ApplicationController
  def index
    render json: {
      data: 'omg'
    }
  end
end