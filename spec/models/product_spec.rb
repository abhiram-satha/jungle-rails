require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    it "should return true for book name" do 
      @category = Category.create(:name => "Books")
      @product = Product.create(:name => "The Giver", :description => "A book", :image => "Test website", :price_cents => 1399, :quantity => 12, :category_id => 1)
      expect(@product.name).to be_present
    end
    it "should return true for price" do 
      @category = Category.create(:name => "Books")
      @product = Product.create(:name => "The Giver", :description => "A book", :image => "Test website", :price_cents => 1399, :quantity => 12, :category_id => 1)
      expect(@product.price).to be_present
    end
    it "should return true for quantity" do 
      @category = Category.create(:name => "Books")
      @product = Product.create(:name => "The Giver", :description => "A book", :image => "Test website", :price_cents => 1399, :quantity => 12, :category_id => 1)
      expect(@product.quantity).to be_present
    end
    it "should return true for a category" do 
      @category = Category.create(:name => "Books")
      @product = Product.create(:name => "The Giver", :description => "A book", :image => "Test website", :price_cents => 1399, :quantity => 12, :category_id => 1)
      expect(@product.category_id).to be_present
    end
    it "should return true for quantity" do 
      category = Category.create(:name => "Books")
      product = Product.create(:name => "The Giver", :description => "A book", :image => "Test website", :price_cents => 1399, :quantity => nil, :category_id => 1)
      expect(product.errors.full_messages).to be_present
    end
  end
end
