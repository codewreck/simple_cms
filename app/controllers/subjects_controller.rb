class SubjectsController < ApplicationController
 
  def index
    # @subjects = Subject.all
    @subjects = Subject.sorted  
  end

  def show
    @subject = Subject.find_by_id(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end  
end
