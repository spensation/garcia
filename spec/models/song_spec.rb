# spec/models/song_spec.rb

require 'rails_helper'

RSpec.describe Song, :type => :model do

  it 'has a valid factory' do
    build(:song).should be_valid
  end
  
  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :author_id }
    it { should validate_presence_of :genre_id }
    it { should validate_presence_of :album_id }
  end

  context 'associations' do 
    it { should belong_to(:author) } 
    it { should belong_to(:genre) } 
    it { should belong_to(:album) } 
    it {should have_and_belong_to_many(:users)}
  end

end