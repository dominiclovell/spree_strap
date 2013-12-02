module SpreeStrap
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path('../../../../../app', __FILE__)
      class_option :auto_run_migrations, :type => :boolean, :default => false

      def copy_styles
        directory 'assets/stylesheets/store/spree_strap', 'app/assets/stylesheets/store/spree_strap'
      end

      def copy_javascripts
        directory 'assets/javascripts/store/spree_strap', 'app/assets/javascripts/store/spree_strap'
      end

      def copy_views
        directory 'views/spree', 'app/views/spree'
      end

      def copy_helpers
        directory 'helpers/spree', 'app/helpers/spree'
      end

      # def add_javascripts
      #   append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_strap\n"
      #   append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_strap\n"
      # end

      # def add_stylesheets
      #   inject_into_file 'app/assets/stylesheets/store/all.css', " *= require store/spree_strap\n", :before => /\*\//, :verbose => true
      #   inject_into_file 'app/assets/stylesheets/admin/all.css', " *= require admin/spree_strap\n", :before => /\*\//, :verbose => true
      # end
    end
  end
end
