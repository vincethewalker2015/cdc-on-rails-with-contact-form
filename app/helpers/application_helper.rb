module ApplicationHelper

    def format_linebreaks(text)
        safe_text = h(text)
        paragraphs = split_paragraphs(safe_text).map(&:html_safe)
      
        html = ''.html_safe
        paragraphs.each do |paragraph|
          html << content_tag(:p, paragraph)
        end
        html
    end

end
