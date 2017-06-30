class UserController < ApplicationController

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    #TODO entered username, password1 & 2
    #TODO validate passwords are same
    #TODO username isnt taken
    #TODO empty strings convert to nil
    @user = User.create(
    name: params[:user][:name],
    password: params[:user][:password],
    home_location: params[:user][:location][:home],
    work_location: params[:user][:location][:work],
    other_location: params[:user][:location][:other]
    )
    redirect :"/users/#{@user.id}"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'/users/show'
  end

  patch "/users/:id" do
    binding.pry
  end

end
