class CpusController < ApplicationController

  def index
    @cpu = Cpu.all
    render json: @cpus
  end

  def show
    @cpu = Cpu.find_by_id(params[:id])
    render json: @cpu
  end

end
