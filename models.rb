require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection

class Medicines < ActiveRecord::Base
end
