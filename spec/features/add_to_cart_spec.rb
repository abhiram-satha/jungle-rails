require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Adding items to the cart" do
    visit root_path

    page.find('button.btn-primary', match: :first).click
    page.within('nav') {expect(page).to have_content('My Cart (2)')}
    save_screenshot
    puts page.html

  end


end
