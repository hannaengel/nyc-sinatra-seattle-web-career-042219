class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :"/landmarks/index"
  end


  get '/landmarks/new' do
  erb :"/landmarks/new"
end

  post '/landmark' do
  @landmark = Landmark.create(name: params[:landmark][:name], figure_id: nil, year_completed: params[:landmark][:year_completed])
  redirect "/landmark/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"/landmarks/show"
  end


end
