class MainController < ApplicationController

	before_action :set_select
	
	def index 

	end
	
	def throwOption 
	  
	  value = params[:select]['select_id'].to_i
	  @player = @selections[value] 
      @computer = @selections[rand(0..2)] 
      @result =  winner(@player, @computer)
      @game_stat = GameStat.new
      @game_stat.result = @result
      @game_stat.save 
      @game_stats = GameStat.all
      @game_wins = GameStat.find(:all , :conditions => ['result LIKE ?', "%Winner%"])
      @game_tied = GameStat.find(:all , :conditions => ['result LIKE ?', "%Tie%"])
	  respond_to do |format|
      	format.html
      end
    end 
    
	def check 
		check = {"rock" => "paper", "paper" => "scissors", "scissors" => "rock"}
	end
	
	def winner(player, comp)
		if player  == comp
			return "Tie"
		elsif player == check.values_at(comp).first
			return "Winner"		
		else
			return "Loser"
		end 
	end
	
	private 
		def set_select
			 @selections = ['rock','paper', 'scissors' ]
		end
end
