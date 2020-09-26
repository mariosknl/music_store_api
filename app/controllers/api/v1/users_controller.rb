class Api::V1::UsersController < ApplicationController
  before_action do
    authenticate_cookie
  end
end
