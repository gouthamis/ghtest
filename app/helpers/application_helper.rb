module ApplicationHelper
  def home_page
   #@home = Home.where(:company_name => "Alphabate").last
   @home = Home.last    
  end
end
