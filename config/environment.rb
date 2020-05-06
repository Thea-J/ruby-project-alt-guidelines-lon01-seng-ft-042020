require 'bundler'
Bundler.require

#connection established here
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
