enable :sessions

get '/' do
  session.clear
  erb :index
end

post '/game' do

  unless current1 = Player.find_by_name(params[:player1])
    current1 = Player.create(name: params[:player1])
  end
  unless current2 = Player.find_by_name(params[:player2])
    current2 = Player.create(name: params[:player2])
  end

  session[:player1] = current1.id
  session[:player2] = current2.id
puts  "player1 session:", session[:player1]
puts  "player2 session:", session[:player2]
puts "routing to game erb"
  erb :game
end


post '/win' do

  game_id = Game.create(winning_time: '2 secs!').id

  # Round.create(winner: true, player_id: params.id)
  # Round.create(player_id:)


  puts "params id in /win route:", params["winner"]

  if params["winner"] == 'player1'
    Round.create(winner: true, player_id: session[:player1], game_id: game_id)
    Round.create(player_id: session[:player2], game_id: game_id)
  elsif params["winner"] == 'player2'
    Round.create(winner: true, player_id: session[:player2], game_id: game_id)
    Round.create(player_id: session[:player1], game_id: game_id)
  else
    puts "you are screwed"
  end

  erb :game
end
