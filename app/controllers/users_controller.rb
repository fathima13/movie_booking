class UsersController < ApplicationController
  def index
  	@users=User.all
  	@users=@users.order("name asc")
  	  end
  def new
  	@user=User.new
  end
  def create
  	@user=User.new
  	@user.name=params[:user][:name]
  	@user.save
  	redirect_to users_url
  end
  def edit
  	@user=User.find(params[:id])
  end
  def update
  	@user=User.find(params[:id])
  	@user.name=params[:user][:name]
  	@user.save
  	redirect_to users_url
  end
  def show
  	@user=User.find(params[:id])
  end
  def destroy
  	@user=User.find(params[:id])
  	@user.destroy
  	redirect_to users_url
  end
end
