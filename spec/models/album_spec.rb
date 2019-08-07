# spec/models/album_spec.rb

require 'rails_helper'

RSpec.describe Album, type: :model do

  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :label }
  end

  context 'associations' do
    it { should have_many(:songs)}
  end

end
