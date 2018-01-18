require_relative '../concerns/select_tab'

module Blogine
  class Admins::ApplicationController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "password"

    layout 'blogine/admins_application'

    include SelectTab

    def admins_page?; true; end
  end
end
