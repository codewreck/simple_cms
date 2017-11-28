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
    # Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    if @subject.save 
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find_by_id(params[:id])
  end

  def update
    @subject = Subject.find_by_id(params[:id])

    
    if @subject.update_attributes(subject_params) 
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find_by_id(params[:id])
  end

  def destroy
    @subject = Subject.find_by_id(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end 


  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end 
end
