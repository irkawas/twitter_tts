class RelationshipsController < ApplicationController
  # POST /relationships
  # POST /relationships.json
  
  def create
    @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
    if @relationship.save
      flash[:notice] = "Followed successfully."
      redirect_to profile_path(current_user.id)
    else
      flash[:notice] = "Unable to follow."
      redirect_to root_path
    end
  end

  private

  def relationships_params 
    params.require(:relationship).permit(:user_ud), :friend_id) 

  end
end
