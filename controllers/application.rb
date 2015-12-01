# Defining the starting point for the application. This used to be app.rb, but
# it became too cluttered so we're going to give controllers a chance to
# organize our code
class ApplicationController < Sinatra::Base

  require "bundler"
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :database => "recommendations"
  )

  # I need to specify my views folder
  set :views, File.expand_path("../../views", __FILE__)
  set :public, File.expand_path("../../public", __FILE__)

  not_found do
    erb :page_not_found
  end

end
