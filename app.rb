require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/rock") do
  moves = ["rock","paper","scissors"]
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "tied"
  elsif @computer_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/paper") do
  moves = ["rock","paper","scissors"]
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "won"
  elsif @computer_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  erb(:paper)
end

get("/scissors") do
  moves = ["rock","paper","scissors"]
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "lost"
  elsif @computer_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
  erb(:scissors)
end
