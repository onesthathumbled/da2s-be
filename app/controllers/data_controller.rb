class DataController < ApplicationController
    before_action :set_datum, only: [:show, :edit, :update, :destroy]
  
    def index
      @data = Datum.all
      render json: @data
    end
  
    def show
      render json: @datum
    end
  
    def new
      @datum = Datum.new
      render json: @datum
    end
  
    def create
      @datum = Datum.new(datum_params)
  
      if @datum.save
        render json: @datum, status: :created
      else
        render json: { errors: @datum.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def edit
      render json: @datum
    end
  
    def update
      if @datum.update(datum_params)
        render json: @datum
      else
        render json: { errors: @datum.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @datum.destroy
      head :no_content
    end
  
    private
  
    def set_datum
      @datum = Datum.find(params[:id])
    end
  
    def datum_params
      params.require(:datum).permit(:attribute1, :attribute2, :attribute3) # Replace with your actual attributes
    end
  end
  