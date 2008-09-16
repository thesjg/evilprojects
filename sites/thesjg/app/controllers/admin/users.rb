module Admin
  class Users < Application
    before(:find_user, :only => %w(edit update delete show destroy))

    def index
      @users = User.all()
      display(@users)
    end
    
    def show
      display(@user)
    end
    
    def new
      @user = User.new(params[:user] || {})
      display(@user)
    end
    
    def create
      @user = User.new(params[:user])
      if @user.save()
        redirect(url(:admin_users, { :id => @user.id }))
      else
        render(:new)
      end
    end
    
    def edit
      display(@user)
    end
    
    def update
    end
    
    def delete
      display(@user)
    end
    
    def destroy
      @user.destroy()
      redirect(url(:admin_users))
    end
    
    private
    
      def find_user
        @user = User.get!(params[:id])
      end
    
  end
end # Admin
