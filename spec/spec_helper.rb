require 'sqlite3'
require 'active_record'
require 'use_the_forcible'

Dir[File.expand_path('../support/**/*.rb',   __FILE__)].each { |f| require f }

RSpec.configure do |config|
  config.before(:suite) do
    SQLite3::Database.new 'tmp/test.db'

    ActiveRecord::Base.establish_connection(
      :adapter  => 'sqlite3',
      :database => 'tmp/test.db'
    )

    class SetupTests < ActiveRecord::Migration
      def up
        create_table :forcibles do |t|
          t.string :foo
        end
      end
    end

    SetupTests.new.migrate(:up)
  end

  config.before(:each) do
    ActiveRecord::Base.connection.execute 'DELETE FROM forcibles'
  end

  config.after(:suite) do
    `rm -f ./tmp/test.db`
  end
end
