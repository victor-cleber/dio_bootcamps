require 'rspec'
require 'supermarket.rb'
require 'product.rb'

describe Supermarket do
  describe "Supermarket initialized" do
    it  'Supermarket is initialized with a Product' do
        product = Product.new('Forma', 60.00)
        supermarket = Supermarket.new(product)
        expect(supermarket.product.name).to eq('Forma')
        expect(supermarket.product.price).to eq(60.00)
      end
  end
end