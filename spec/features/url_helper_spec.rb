require 'spec_helper'

RSpec.configure do |config|
end

feature '1 up' do

  before do
    @post =  Post.create!
  end

  scenario 'Vote the Post one up' do
    visit "/posts/"
    expect(page).to have_text("0")
    @post.succession_entity.up
    visit "/posts/"
    expect(page).to have_text("1")
  end

  scenario 'Vote the Post one down' do
    visit "/posts/"
    expect(page).to have_text("0")
    @post.succession_entity.down
    visit "/posts/"
    expect(page).to have_text("-1")
  end
end
