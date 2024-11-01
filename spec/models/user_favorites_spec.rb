require 'rails_helper'

RSpec.describe UserFavorite, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:animal) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }

  end
end