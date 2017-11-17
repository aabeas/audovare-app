class VacanciesController < ApplicationController
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :set_vacancy, only: [:show, :edit, :update, :destroy]

  def index
    @vacancies = Vacancy.all
  end

  def show
  end

  def new
    @vacancy = Vacancy.new
  end

  def edit
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    respond_to do |format|
      if @vacancy.save
        format.html { redirect_to @vacancy, notice: "The vacancy was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @vacancy.update(vacancy_params)
        format.html { redirect_to @vacancy, notice: "The vacancy was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @vacancy.destroy
    respond_to do |format|
      format.html { redirect_to vacancies_path, notice: "The vacancy was successfully destroyed." }
    end
  end

  private
    def set_vacancy
        @vacancy = Vacancy.find(params[:id])
    end

    def vacancy_params
      params.require(:vacancy).permit(:pocFirstName, :pocLastName, :pocEmail, :title, :description, :script, :budget, categories:[])
    end
end
