require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_and_belong_to_many(:products) }
  it {should validate_presence_of(:cat_name)}
end
