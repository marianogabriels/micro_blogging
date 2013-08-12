require_relative 'db/config'
namespace :db do

  namespace :reset do
    require "sequel"
    Sequel.extension :migration
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

    #desc "Prints current schema version"
    #task :version do    
    #  version = if DB.tables.include?(:schema_info)
    #    DB[:schema_info].first[:version]
    #  end || 0
    #  puts "Schema Version: #{version}"
    #end

    #desc "Perform migration up to latest migration available"
    #task :migrate do
    #  Sequel::Migrator.run(DB, "db/migrate")
    #  Rake::Task['db:version'].execute
    #end
    #  
    #desc "Perform rollback to specified target or full rollback as default"
    #task :rollback, :target do |t, args|
    #  args.with_defaults(:target => 0)
    #
    #  Sequel::Migrator.run(DB, "db/migrate", :target => args[:target].to_i)
    #  Rake::Task['db:version'].execute
    #end
    #
    #desc "Perform migration reset (full rollback and migration)"
    #task :reset do
    #  Sequel::Migrator.run(DB, "db/migrate", :target => 0)
    #  Sequel::Migrator.run(DB, "db/migrate")
    #  Rake::Task['db:version'].execute
    #end    
  end
end
