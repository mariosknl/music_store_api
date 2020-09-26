module CoreModules::JsonWebToken
  require 'jwt'
  JWT_SECRET = Rails.application.secrets.secret_key_base

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, JWT_SECRET)
  end

  def self.decode(token)
    body = JWT.decode(token, JWT_SECRET)
    body ? (HashWithIndifferentAccess.new body[0]) : (return false)
  rescue JWT::ExpiredSignature, JWT::VerificationError
    false
  rescue JWT::DecodeError, JWT::VerificationError
    false
  end
end
