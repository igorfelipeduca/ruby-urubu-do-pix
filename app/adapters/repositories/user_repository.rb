require 'sinatra'
require 'active_record'

class UserRepository < ActiveRecord::Base
  self.table_name = 'users'
end
