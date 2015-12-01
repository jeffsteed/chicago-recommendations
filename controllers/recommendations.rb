class RecommendationsController < ApplicationController

  get "/" do
    @recs = Recommendation.all
    erb :read_recommendation
  end

  get "/create" do
    erb :create_recommendation
  end

  post "/create" do
    p params
    @rec = Recommendation.new
    @rec.contributor = params[:contributor]
    @rec.place = params[:name]
    @rec.type_of_place = params[:type_of_place]
    @rec.notes = params[:notes]
    @rec.save
    erb :index
  end

  get "/api" do
    return Recommendation.all.to_json
  end

  get "/api/:id" do
    p params
    return Recommendation.find(params[:id]).to_json
  end

end
