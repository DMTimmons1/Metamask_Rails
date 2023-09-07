class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    @member.eth_nonce = SecureRandom.uuid
    if @member.save
      redirect_to "/"
      flash[:notice] = "New account created for: #{@member.username}"
    else
      flash[:error] = "That username already exists!"
    end
  end

private
  def member_params
    params.require(:member).permit(:username)
  end
end
