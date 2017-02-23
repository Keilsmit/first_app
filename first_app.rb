require 'sinatra'
require_relative 'Classic.rb'
require_relative 'Hipster.rb'
require_relative 'Samuel.rb'
require_relative 'lipsum'
require 'sqlite3'
require 'active_record'


ActiveRecord::Base.establish_connection(
   adapter: "sqlite3",
   database: "db.sqlite3")


#returns Welcome message
get '/' do
  "Welcome to my first Sinatra App!"
end

#returns name given in url
get "/:name" do
  "Hello, #{params[:name]}!!"
end

#returns selected lipsum with option num param
get "/lorem/:lipsum/?:num?" do
  if %w(classic hipster samuel).include? params[:lipsum]
    {name: params[:lipsum], body: Object.const_get(params[:lipsum].capitalize).call(params[:num])}
  elsif Lipsum.find_by(id: params[:lipsum])
    Lipsum.find(params[:lipsum])
  else
    status 404
  end
end

post "/lorem/new" do
 Lipsum.create(name: params[:name], body: params[:body])
 # {"name" : "namegoeshere", "paragraph" : "text goes here"}
end
