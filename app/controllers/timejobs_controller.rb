class TimejobsController < ApplicationController
  def index
    @jobs = Work.all.order(created_at: :desc)
  end
end
