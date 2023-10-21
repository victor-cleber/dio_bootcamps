require 'rspec'
require 'supermarket.rb'
require 'product.rb'

describe Supermarket do
  describe do
    it  '1. Supermarket is initialized with a Product' do
        product = Product.new('Forma', 60)
        supermarket = Supermarket.new(product)
        expect(supermarket.product.name).to eq('Forma')
        expect(supermarket.product.price).to eq(60)
    end
  end

  describe do
    it  '2. A product was bought' do
        product = Product.new('Forma', 60)
        supermarket = Supermarket.new(product)
        expect(supermarket.comprar).to eq("You bought a Forma costing R$60.00")
      end
  end
end