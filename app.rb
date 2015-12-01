require "bundler"
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "recommendations"
)

get "/" do
  return "Stuffz"
end

get "/api" do
  return Recommendation.all.to_json
end
