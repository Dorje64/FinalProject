class WelcomeController < ApplicationController
  def index
 	#@candidates = Candidate.all
 	if voter_signed_in? 
 		redirect_to candidates_path
 	else
 		redirect_to voter_session_path
 	end
  end


end
