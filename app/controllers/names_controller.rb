class NamesController < ApplicationController
  def index
    @names = Name.all
  end

  def show
    @name = Name.find(params[:id])
  end

  def new 
    @name = Name.new
  end 

  def create
    @name = Name.new(
      name: params["name"]["name"],
      age: params["name"]["age"]
    )

    if @name.save
      redirect_to @name, notice: 'Succesful'
    else 
      render :new
    end 
  end
end
