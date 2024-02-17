class CasesController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :set_case, only: [:show, :update, :destroy]
  
    def index
      @cases = Case.order(id: :desc).limit(300)
      render json: @cases
    end
  
    def create
      @case = Case.new(case_params)
  
      if @case.save
        render json: @case
      else
        render json: @case.errors
      end
    end
  
    def update
      if @case.update(case_params)
        render json: @case
      else
        render json: @case.errors
      end
    end
  
    def destroy
      @case.destroy
    end
  
    def show
      render json: @case
    end
  
    private
  
    def set_case
      @case = Case.find(params[:id])
    end
  
    def case_params
      params.permit(
        :id,
        :age,
        :age_group,
        :sex,
        :data_announced,
        :data_recorded,
        :date_of_death,
        :status,
        :date_announced_as_removed,
        :province,
        :muni_city,
        :health_status,
        :home_quarantined,
        :date_of_onset_of_symptoms,
        :pregnant,
        :region
      )
    end
  end
  