class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all

    render json: @foods
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    render json: @food
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      render json: @food, status: :ok
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy

    head :no_content
  end

  private

    def set_food
      @food = Food.find(params[:id])
    end

    def food_params
      params.require(:food).permit(:desc, :calories, :grams_per_serving, :fat_sat, :fat_mono, :fat_poly, :carbs, :sugar, :protein, :fiber, :sodium, :choles)
    end
end
