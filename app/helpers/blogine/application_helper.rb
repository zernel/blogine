module Blogine
  module ApplicationHelper

    def all_categories
      @all_categories ||= Blogine::Category.all
    end

    def bootstrap_alert_klass(flash_key)
      case flash_key
      when 'notice'
        return "alert-warning"
      when 'error'
        return "alert-danger"
      else
        return 'alert-primary'
      end
    end
  end
end
