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

  def edit
    @name = Name.find(params[:id])
  end 

  def update
    @name = Name.find(params[:id])

    if @name.update(
      name: params["name"]["name"] || name.name,
      age: params["name"]["age"] || name.age
    )
    redirect_to @name, notice: 'Post was successfully updated.'
    else 
      render :edit 
    end 
  end 

  def destroy
    @name = Name.find(params[:id])
    @name.destroy 
    redirect_to names_path, notice: 'Name was successfully deleted.'
  end 
end
