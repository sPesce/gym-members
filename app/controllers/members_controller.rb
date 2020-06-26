class MembersController < ApplicationController
  before_action :set_member, only: [:show,:edit,:destroy,:update]
  def index
    @members = Member.all
  end  
  
  def show
  end
  
  def new
    @member = Member.new    
  end
  
  def create
    @member = Member.create(member_params)
    redirect_to member_path(@member)
  end
  
  def edit
  end
  
  def update
    @member.update(member_params)
    redirect_to member_path(@member)    
  end
  
  def destroy
    @member.destroy
    redirect_to members_path    
  end
  private
  def member_params
    params.require(:member).permit(:first_name,:last_name)
  end
  def set_member
    @member = Member.find(params[:id])
  end
end
