class JobController < ApplicationController

  def index
    @jobs = Work.all
  end

  def new
    @job = Work.new
  end

  def show
    @job = Work.find(params[:id])
  end

  def create
    @job = Work.new(job_parameter)
    if @job.save
      redirect_to job_index_path
    else
      render 'new'
    end
  end

  def destroy
    @job = job.find(params[:id])
    @job.destroy
    redirect_to job_index_path, notice:"削除しました"
  end

  def edit
    @job = Work.find(params[:id])
  end

  def update
    @job = Work.find(params[:id])
    if @Work.update(job_parameter)
      redirect_to job_index_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def job_parameter
    params.permit(:start_time, :end_time, :money, :peopele).merge(user_id: current_user.id)
  end

end