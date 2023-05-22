require 'sinatra'
require 'sinatra/activerecord/rake'

namespace :db do
  desc 'Load config and environment'
  task load_config: :environment do
    require './app'
  end
end
