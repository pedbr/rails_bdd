require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :body }
  end

  describe 'Validations' do
    it { should belong_to(:article) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:comment)).to be_valid 
    end
  end
end
