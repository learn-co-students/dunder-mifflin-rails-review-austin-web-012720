class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  # def create
    # @dog = Dog.new(dog_params)
  # end

  def edit
    @dog = Dog.find(params[:id])
  end

 

  def update
    @dog = Dog.find(dog_params)
  end

  def delete
    @dog.destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
