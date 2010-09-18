require 'rdiscount'

class MarkdownController < ApplicationController
  respond_to :html, :xml, :js

  def format
    @source = params[:source]
    markdown = RDiscount.new(@source[:text])
    @markup = markdown.to_html.gsub("\n", "\\n")
  end
end
