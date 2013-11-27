module SpreeStrap
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)
      class_option :auto_run_migrations, :type => :boolean, :default => false

      def copy_bootstrap
        directory 'stylesheets', 'app/assets/stylesheets'
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
