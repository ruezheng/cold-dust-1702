require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "relationships" do
    it { should belong_to :chef }
    it { should have_many(:dish_ingredients) }
    it { should have_many(:ingredients).through(:dish_ingredients) }
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
  end
end
