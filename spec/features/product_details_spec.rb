# require 'rails_helper'

# RSpec.feature "ProductDetails", type: :feature, js: true do
  
#   before :each do
#     @category = Category.create! name: 'Apparel'

#     10.times do |n|
#       @category.products.create!(
#         name:  Faker::Hipster.sentence(3),
#         description: Faker::Hipster.paragraph(4),
#         image: open_asset('apparel1.jpg'),
#         quantity: 10,
#         price: 64.99
#       )
#     end
#   end

#   scenario "Able to view the products page" do
#     visit root_path
#     # save_screenshot
#     page.find('a > h4', match: :first).click
#     # puts page.html
#     expect(page).to have_css 'img.main-img', count: 1
#   end

# end
