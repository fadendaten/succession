# require 'spec_helper'
# 
# RSpec.configure do |config|
# end
# 
# feature '1 up' do
# 
#   before do
#     @post0 = Post.create!
#     @post1 = Post.create!
#   end
# 
#   scenario 'Vote the Post one up with up_link_to' do
#     visit "/posts"
#     expect(page).to have_text("0")
#     click_link "up"
#     expect(page).to have_text("1")
#   end
# 
#   scenario 'Vote the Post one down with down_link_to' do
#     visit "/posts"
#     expect(page).to have_text("0")
#     click_link "down"
#     expect(page).to have_text("-1")
#   end
# 
#   scenario 'Vote the Post one up with up_button_to' do
#     visit "/posts"
#     expect(page).to have_text("0")
#     click_button "up"
#     expect(page).to have_text("1")
#   end
# 
#   scenario 'Vote the Post one down with down_button_to' do
#     visit "/posts"
#     expect(page).to have_text("0")
#     click_button "down"
#     expect(page).to have_text("-1")
#   end
# end
