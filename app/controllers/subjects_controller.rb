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
  end

  def update
  end

  def delete
  end

  def destroy
  end 


  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end 
end
