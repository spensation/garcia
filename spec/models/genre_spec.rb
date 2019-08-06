# spec/models/genre_spec.rb

require 'rails_helper'

RSpec.describe Genre, type: :model do

  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'associations' do
    it { should have_many(:songs)}
  end

end