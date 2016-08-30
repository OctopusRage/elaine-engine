module ExternalSessionHelper
  def authorize_external_service
    render json: {
      status: 'fail',
      message: 'Unauthorized Access'
    }, status: 403 unless authenticated?
  end

  def authenticated?
    authenticate_with_http_basic do |username, password|
      username == ENV['EXTERNAL_SERVICE_USERNAME'] &&
        password == ENV['EXTERNAL_SERVICE_PASSWORD']
    end
  end
end
