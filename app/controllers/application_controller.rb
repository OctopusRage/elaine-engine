class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  include ExceptionHandlingHelper
  include UserSessionHelper
  include ExternalSessionHelper

  rescue_from ActiveRecord::RecordNotFound,
    with: :record_not_found
  rescue_from ActionController::ParameterMissing,
    with: :parameter_missing
  rescue_from ArgumentError,
    with: :invalid_argument
  rescue_from TypeError,
    with: :invalid_type

end
