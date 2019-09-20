class ProcontrollerController < ApplicationController
  def index

  	@pro = Product.all
  	



  end
end
