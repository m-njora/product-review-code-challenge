require 'bundler'
Bundler.require 'bundler


ActiveRecord::Base.establish_connection(
    adapter:'sqlite3',
    database: 'db/development.db'
)

require _all 'app'