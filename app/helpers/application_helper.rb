module ApplicationHelper


    def syntax_highlight(text)
        text = strip_heredoc(text)
    html = HighlightSource.render(text)
    html.html_safe
    
    end

    private

def strip_heredoc(text)
    indent = text.scan(/^[ \t]*(?=\S)/).min.size || 0
    text.gsub(/^[ \t]{#{indent}}/, '')
end

 

end
