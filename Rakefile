require 'active_record'
# require_relative '.db/migrate/01_create_students.rb'
# require_relative '.db/migrate/02_add_grade_and_birthdate_to_students.rb'
# require_relative '.db/migrate/03_change_datatype_for_birthdate.rb'
include ActiveRecord::Tasks

DatabaseTasks.db_dir = 'db'
DatabaseTasks.migrations_paths = ['db/migrate']

load 'active_record/railties/databases.rake'

task :console => :environment do
  Pry.start
end

task :environment do
  require_relative 'config/environment'
end

Rake::Task["db:drop"].clear

namespace :db do
  task :drop => :environment do
    puts "Dropping tables"
    File.delete('db/schema.rb')
    drop_db
  end
end
