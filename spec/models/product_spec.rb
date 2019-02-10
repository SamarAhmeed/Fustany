require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_and_belong_to_many(:categories) }
  it {should have_many(:favorites) }
  it {should have_many(:users).through(:favorites) }
  it {should validate_presence_of(:pro_name)}
end
