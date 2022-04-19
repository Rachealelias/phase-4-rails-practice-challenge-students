class ApplicationController < ActionController::API

    include ActionController::Cookies
rescue_from ActiveRecord::RecordNotFound, with: :not_found
rescue_from ActiveRecord::RecordInvalid, with: :not_processed

private

def not_found(exception)
render json: { errors: "#{exception.model} not found"}, status: :not_found
end

def not_processed(invalid)
  render json: { errors: [invalid.record.errors]}, status: :unprocessable_entity
end
end
