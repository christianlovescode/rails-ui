class HomeController < ApplicationController

  def index
  end


  def button
   render layout: "docs"
  end 

  def callout
    render layout: "docs"
   end

  def tabs
   render layout: "docs"
  end

  def card
    render layout: "docs"
  end 
end
