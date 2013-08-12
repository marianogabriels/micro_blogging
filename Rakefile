require_relative 'db/config'
namespace :db do

  require "sequel"
  Sequel.extension :migration

  namespace :reset do
    desc "reset development database"
    task :dev do
      DB = Sequel.connect('sqlite://development.db', target: 0)
      Sequel::Migrator.run(DB, "db/migrate")
      puts "generada development.db"
    end

    desc "reset test schema"
    task :test do
      DB = Sequel.connect('sqlite://test.db', target: 0 )
      Sequel::Migrator.run(DB, "db/migrate")
      puts "generada test.db"
    end
  end

  namespace :migrate do
    task :dev do
      DB = Sequel.connect('sqlite://development.db')
      Sequel::Migrator.run(DB, "db/migrate")
      puts "generada development.db"
    end
    task :test do
      DB = Sequel.connect('sqlite://test.db' )
      Sequel::Migrator.run(DB, "db/migrate")
      puts "generada test.db"
    end
  end

end
