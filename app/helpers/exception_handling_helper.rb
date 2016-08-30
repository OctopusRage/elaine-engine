module ExceptionHandlingHelper
  def record_not_found(error)
    render json: {
      status: 'fail',
      message: 'Not Found',
      data: {
        message: 'Not Found'
      }
    }, status: :not_found
  end 

  def parameter_missing(error)
    render json: {
      status: 'fail',
      message: 'Parameter Missing',
      data: {
        message: 'Parameter Missing'
      }
    }, status: 422
  end 

  def invalid_argument(error)
    render json: {
      status: 'fail',
      message: 'Invalid Argument',
      data: {
        message: 'Invalid Argument'
      }
    }, status: 422
  end 

  def invalid_type(error)
    render json: {
      status: 'fail',
      message: 'Invalid Type',
      data: {
        message: 'Invalid Type'
      }
    }, status: 422
  end 
end
