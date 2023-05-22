require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
require './app/adapters/controlers/users_controllers'

Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV.fetch('DB_PATH', nil) }

get '/' do
  'Hello!'
end

post '/users' do
  content_type :json

  { result: UsersController.create(params) }.to_json
end
