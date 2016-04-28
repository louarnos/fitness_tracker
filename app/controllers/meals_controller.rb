class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all

    render json: @meals
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    render json: @meal
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])

    if @meal.update(meal_params)
      render json: @meal, status: :ok
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy

    head :no_content
  end

  private

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:user_id, :meal_item_id, :type)
    end
end
