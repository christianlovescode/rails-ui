module ApplicationHelper


    def syntax_highlight(text)
        html = HighlightSource.render(text)
        html.html_safe
    end

 

end
