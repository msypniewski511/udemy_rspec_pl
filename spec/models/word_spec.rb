require 'rails_helper'

RSpec.describe Word, type: :model do
  describe 'columns' do
    it do
      should have_db_column(:value).of_type(:string)
      # is_expected.to have_db_column(:value).of_type(:string)
    end
    it { should have_db_column(:language).of_type(:string) }
  end
end
