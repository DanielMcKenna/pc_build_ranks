class CpusController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  
  def index
    @cpus = Cpu.all
    render json: @cpus
  end

  def show
    @cpu = Cpu.find_by_id(params[:id])
    render json: @cpu
  end

end
