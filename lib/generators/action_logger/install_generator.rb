require 'rails/generators'
require 'rails/generators/migration'

module ActionLogger
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)
      desc 'Generates the ActionLogger migrations'

      def self.next_migration_number path
        Time.now.utc.strftime '%Y%m%d%H%M%S'
      end

      def create_migrations
        migration_template 'create_action_logs.rb', 'db/migrate/create_action_logs.rb'
      end
    end
  end
end
