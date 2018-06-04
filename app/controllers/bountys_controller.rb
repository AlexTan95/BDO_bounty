class BountysController < ApplicationController

	def index 
		@bountys = Bounty.all
	end

	def show
		@bounty = Bounty.find(params[:id])
	end

	def new #new bounty
		authorize
	end
	
	def create
		@bounty = Bounty.new(bounty_params)
		@bounty.save

		redirect_to @bounty
	end

	private

	def bounty_params
		params.require(:bounty).permit(:target, :reason, :target_level, :target_class, :last_seen_server, :bounty_reward, :kill_condition, :client)
	end
end
