require 'sinatra'
require 'sequel'
require 'yaml'

class Todo < Sinatra::Base
  
  set :environment, ENV['RACK_ENV']

  configure do
    #env = ENV['RACK_ENV']
    env = "development"
    DB = Sequel.connect(YAML.load(File.open('config/database.yml'))[env])

  end

    Dir[File.join(File.dirname(__FILE__),'models','*.rb')].each { |model| require model }
    Dir[File.join(File.dirname(__FILE__),'lib','*.rb')].each {|lib| load lib}
    
    get '/?' do
      all_lists = List.all
   end


end
