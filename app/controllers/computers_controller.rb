class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :update, :edit, :destroy]
  skip_before_action :require_login, only: [:index, :show, :create]

  def index
    @computers = Computer.all
    render json: @computers, include: [:Cpu, :Gpu]
  end

  def show
    render json: @computer
  end

  def edit
    render json: @computer
  end

  def create
    @computer = Computer.new(computer_params)

    if @computer.save
      render json: @computer
    end
  end

  def update
    if !@computer.update(computer_params)
      render json: @computer
    end
  end

  def destroy
   @computer.destroy
  end

  private

  def set_computer
    @computer = Computer.find(params[:id])
  end

  def computer_params
    params.require(:computer).permit(:name, :CPU, :GPU, :user_id, :image)
  end

end
