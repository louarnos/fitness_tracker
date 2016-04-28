require 'rails_helper'

RSpec.describe 'Foods API' do
  def food_params
    {
      desc: 'new food',
      calories: 1,
      grams_per_serving: 1,
      fat_sat: 1,
      fat_mono: 1,
      fat_poly: 1,
      carbs: 1,
      sugar: 1,
      protein: 1,
      fiber: 1,
      sodium: 1,
      choles: 1,
    }
  end

  def foods
    Food.all
  end

  def food
    Food.first
  end

  before(:all) do
    Food.create!(food_params)
  end

  after(:all) do
    Food.delete_all
  end

  describe 'GET /foods' do
    it 'lists all foods' do
      get '/foods'

      expect(response).to be_success

      foods_response = JSON.parse(response.body)
      expect(foods_response.length).to eq(foods.count)
      expect(foods_response['desc']).to eq(food['new food'])
    end
  end

  describe 'GET /foods/:id' do
    it 'shows one food' do
      get "/foods/#{food.id}"

      expect(response).to be_success
    end
  end

  describe 'POST /foods' do
    it 'creates an food' do
      post '/foods', food: food_params, format: :json

      expect(response).to be_success
      foods_response = JSON.parse(response.body)
      p foods_response
      expect(foods_response['food']['desc']).to eq(food_params[:desc])
    end
  end

  describe 'PATCH /foods/:id' do
    def food_diff
      { desc: 'new food 2' }
    end

    it 'updates a food' do
      patch "/foods/#{food.id}", food: food_diff, format: :json
      expect(response).to be_success
      foods_response = JSON.parse(response.body)
      expect(foods_response['food']['desc']).to eq(food_diff[:desc])
    end
  end

  describe 'DELETE /foods/:id' do
    it 'deletes an food' do
      delete "/foods/#{food.id}"
      expect(response).to be_success
    end
  end
end
