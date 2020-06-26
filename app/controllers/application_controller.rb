
require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do

<<<<<<< HEAD

    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
=======
>>>>>>> 4775d1972c659d42c7b8cc819d1d551e5729d96b
    @hero_name = []
    @hero_power = []
    @hero_bio = []
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]

    @team_members = params[:team][:members]
    @team_members.each do |hero|  #<----------problem with the each iterator
      @hero_name << hero[:name]
      @hero_power << hero[:power]
      @hero_bio << hero[:bio]
    end


    erb :team
  end
end
