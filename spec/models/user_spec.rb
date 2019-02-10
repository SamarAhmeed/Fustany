require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it {should validate_uniqueness_of(:phone_number)}
    it {should have_many(:favorites) }
    it {should have_many(:products).through(:favorites) }
    it {should validate_presence_of(:full_name)}
  end
end
