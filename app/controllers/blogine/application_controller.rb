module Blogine
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def admins_page?; false; end
    helper_method :admins_page?

    def not_found
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
