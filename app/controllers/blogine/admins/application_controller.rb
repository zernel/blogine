require_relative '../concerns/select_tab'

module Blogine
  class Admins::ApplicationController < ApplicationController
    include SelectTab

    def admins_page?; true; end
  end
end
