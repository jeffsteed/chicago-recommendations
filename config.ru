require "sinatra/base"
# application controller should always be loaded first.
require "./controllers/application"
require "./controllers/recommendations"
require "./models/Recommendation"

map("/") { run RecommendationsController }
