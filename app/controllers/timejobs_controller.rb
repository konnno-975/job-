class TimejobsController < ApplicationController
  def index
    @jobs = Work.all
  end
end
