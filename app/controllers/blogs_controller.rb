require 'redcarpet'

class BlogsController < ApplicationController
  def index
    markdown_path = Rails.root.join('app', 'assets', 'content', 'portfolio.md')
    raw_markdown = File.read(markdown_path)
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    @content_html = markdown.render(raw_markdown).html_safe

    @comments = Comment.order(created_at: :desc)
  end
end
