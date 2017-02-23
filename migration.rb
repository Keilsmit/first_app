require 'active_record'

ActiveRecord::Base.establish_connection(
   adapter:  'sqlite3',
   database: 'db.sqlite3'


class ApplicationMigration < ActiveRecord::Migration

   def change
     create_table "lipsums", force: true do |t|
       t.string "name"
       t.text   "body"
     end
   end





end
