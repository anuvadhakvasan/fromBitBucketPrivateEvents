class EventParticipationsController < ApplicationController

   def create
    
    @event_participation = current_user.event_participations.create(my_param)
    redirect_to root_path
    
   end
   
   def destroy
   end 
   private
   def my_param
     params.require(:event_participation).permit(:participatory_event_id)
   end  
end
