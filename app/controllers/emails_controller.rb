class EmailsController < ApplicationController
  
  def index
     
    @emails = Email.all

  end

  def new
    @emails = Email.all
      # @email = Email.new(object: Faker::Artist.name,body: Faker::ChuckNorris.fact)
      # end
      # def create
    @email = Email.new(object: Faker::Artist.name, body: Faker::ChuckNorris.fact)

      if @email.save
        respond_to do |format|
          format.html { redirect_to emails_path }
          format.js { }
          flash[:notice] = "Email created"
        end
      else
        redirect_to root_path
        flash[:notice] = "Please try again"
      end
    
  end


   def show
    @email = Email.find(params[:id])
    respond_to do |format|
        format.html { redirect_to emails_path }
        format.js { }
        flash[:notice] = "Email created"
      end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
      flash[:notice] = "Email destroyed"
      end
  end

    def update
      @email = Email.find(params[:id])
      # @email.read
      respond_to do |format|
        format.html { redirect_to emails_path }
        format.js { }
        flash[:notice] = "Email read"
      end
  end

end
