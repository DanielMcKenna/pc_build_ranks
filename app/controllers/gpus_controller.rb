class GpusController < ApplicationController

    def index
        @gpus = Gpu.all
        render json: @gpus
    end

    def show
        @gpu = Gpu.find_by_id(params[:id])
        render json: @gpu
    end

end
