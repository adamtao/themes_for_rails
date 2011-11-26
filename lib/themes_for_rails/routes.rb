module ThemesForRails
  module Routes
    def themes_for_rails
      theme_dir = ThemesForRails.config.themes_dir
      match "#{theme_dir}/:theme/stylesheets/:asset" => 'themes_for_rails/assets#stylesheets', :as => :base_theme_stylesheet, :constraints => { :asset => /.*/ }
      match "#{theme_dir}/:theme/javascripts/:asset" => 'themes_for_rails/assets#javascripts', :as => :base_theme_javascript, :constraints => { :asset => /.*/ }
      match "#{theme_dir}/:theme/images/:asset" => 'themes_for_rails/assets#images', :as => :base_theme_image, :constraints => { :asset => /.*/ }
    end
  end
end
module ActionDispatch::Routing
  class Mapper #:nodoc:
    include ThemesForRails::Routes
  end
end

