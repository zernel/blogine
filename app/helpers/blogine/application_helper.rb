module Blogine
  module ApplicationHelper

    def all_categories
      @all_categories ||= Blogine::Category.all
    end

    def render_markdown(content)
      interpreter = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
      parsed_content = interpreter.render(content)
      "<div style='font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;font-size: 14px;line-height: 1.428571429;'>#{parsed_content}</div>".html_safe
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
