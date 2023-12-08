# frozen_string_literal: true

task default: %w[sinatra:start]

namespace :sinatra do
  desc 'Show a list of the sinatra routes'
  task :showRoutes do
    require 'require_all'
    require_all 'app/controllers'

    ObjectSpace.each_object(ApplicationController.singleton_class) do |klass|
      next unless klass != ApplicationController

      puts "[#{klass}]:"
      klass.routes.each do |route|
        next unless route[0] != 'HEAD'

        route[1].each do |r|
          puts "\t#{route[0]} #{r[0]}"
        end
      end
    end
  end
end
