class MealItemsController < ApplicationController
  before_action :set_meal_item, only: [:show, :update, :destroy]

  # GET /meal_items
  # GET /meal_items.json
  def index
    @meal_items = MealItem.all

    render json: @meal_items
  end

  # GET /meal_items/1
  # GET /meal_items/1.json
  def show
    render json: @meal_item
  end

  # POST /meal_items
  # POST /meal_items.json
  def create
    @meal_item = MealItem.new(meal_item_params)

    if @meal_item.save
      render json: @meal_item, status: :created, location: @meal_item
    else
      render json: @meal_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meal_items/1
  # PATCH/PUT /meal_items/1.json
  def update
    @meal_item = MealItem.find(params[:id])

    if @meal_item.update(meal_item_params)
      render json: @meal_item, status: :ok
    else
      render json: @meal_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meal_items/1
  # DELETE /meal_items/1.json
  def destroy
    @meal_item.destroy

    head :no_content
  end

  private

    def set_meal_item
      @meal_item = MealItem.find(params[:id])
    end

    def meal_item_params
      params.require(:meal_item).permit(:food_id, :meal_id, :serv_qty)
    end
end
