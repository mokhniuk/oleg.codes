require "extensions/views"
require 'slim'




activate :views
activate :directory_indexes

set :relative_links, true
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :layout, 'layouts/application'

configure :development do
 activate :livereload
end


helpers do
  def nav_link(link_text, page_url, options = {})
    options[:class] ||= ""
    if current_page.url.length > 1
      current_url = current_page.url.chop
    else
      current_url = current_page.url
    end
    options[:class] << " active" if page_url == current_url
    link_to(link_text, page_url, options)
  end
end

configure :build do
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  # activate :imageoptim
  activate :gzip
  
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :rsync
  deploy.host   = 'www.perfectionist.media'
  deploy.path   = '/home/mokhnyuk/www/mokhnyuk/'
  deploy.user  = 'mokhnyuk'
end