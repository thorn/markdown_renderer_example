class PygmentsHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    # setting Pygmens as syntax highlighter
    Pygments.highlight code, lexer: language
  end
end

MarkdownRails.configure do |config|
  config.render do |markdown_source|
    markdown = Redcarpet::Markdown.new(PygmentsHTML.new(with_toc_data: true),
      tables: true,
      fenced_code_blocks: true,
      autolink: true
    )
    # first, render table of contents
    html_toc = Redcarpet::Markdown.new(Redcarpet::Render::HTML_TOC)
    toc = html_toc.render(markdown_source)
    # then render actual html
    html = markdown.render markdown_source
    toc + html
  end
end
