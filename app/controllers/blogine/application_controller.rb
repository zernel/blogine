module Blogine
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def admins_page?; false; end
    helper_method :admins_page?
  end
end
