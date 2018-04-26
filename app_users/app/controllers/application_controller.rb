class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Muốn login được sử dụng thì:
  include SessionHelper
end
