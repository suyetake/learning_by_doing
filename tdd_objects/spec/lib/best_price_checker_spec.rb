require './lib/best_price_checker'
# /lib/best_price_checker.rb'
describe BestPriceChecker do
  it 'should be a BestPriceChecker' do
    expect(subject).to be_a(BestPriceChecker)
  end

  it '@product, @price, @unit should be non-zero' do
    expect(@product).not_to be_empty?
    expect(@price).to eq(!0)
    expect(@unit).to eq(!nil)
  end
end
