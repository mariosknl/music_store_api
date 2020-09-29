class ApplicationController < ActionController::API
  respond_to :json
  include ActionController::Cookies

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def encode_token(payload)
    JWT.encode(payload, ENV['SECRET_KEY'])
  end

  def decode_token(token:)
    JWT.decode(token, ENV['SECRET_KEY'])
    @user = User.find(token[0]['user_id'])
  end
end
