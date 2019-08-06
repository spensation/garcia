# spec/models/song_spec.rb

require 'rails_helper'

RSpec.describe Song, :type => :model do
  
  before(:all) do
    @song1 = create(:user)
  end
  
  it "is valid with valid attributes" do
    expect(@song1).to be_valid
  end
  
  
  it "is not valid without a title" do 
    song1 = build(:song, title: nil)
    expect(song1).to_not be_valid
  end

end