class NewslettersController < ApplicationController
  
  def index
    @newsletter = Newsletter.all
  end
  
  def show
    @newsletter = Newsletter.find(params[:id])
  end
  
  def new
    @newsletter = Newsletter.new
  end
  
  def create
    @newsletter = Newsletter.new(newsletter_params)
 
    if @newsletter.save
      redirect_to @newsletter
    else
      render 'new'
    end
    
  end
  
  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
 
    redirect_to newsletters_path
  end
 
  private
    def newsletter_params
    params.require(:newsletter).permit(:newsname, :newsemail)
    end

end
