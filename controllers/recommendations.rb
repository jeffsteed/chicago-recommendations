class RecommendationsController < ApplicationController

  get "/" do
    erb :index
  end

  get "/api" do
    return Recommendation.all.to_json
  end
  
end
