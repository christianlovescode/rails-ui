# frozen_string_literal: true

# app/system/markdown.rb

require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

# Markdown
class Markdown
  class HTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end

  EXTENSIONS = {
    autolink: true,
    hightlight: true,
    superscript: true,
    fenced_code_blocks: true,
    no_intra_emphasis: true,
    lax_spacing: true,
    strikethrough: true,
    tables: true
  }

  OPTIONS = {
    filter_html: true,
    hard_wrap: true,
    link_attributes: { rel: 'nofollow', target: '_blank' }
  }

  attr_reader :markdown

  def initialize
    @renderer = HTML.new(OPTIONS)

    @markdown = Redcarpet::Markdown.new(
      @renderer,
      EXTENSIONS
    )
  end

  def render(text = nil)
    markdown.render(text)
  end
end