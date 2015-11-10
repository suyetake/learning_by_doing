require './lib/cash_register'
describe CashRegister do
  it 'should be a CashRegister' do
    expect(subject).to be_a(CashRegister)
  end

  it '#total should be zero when created' do
    expect(subject.total).to eq(0)
  end

  it '#purchase should add to the total, pay will subtract from total \
and give change, new total will be zero' do
    expect(subject.purchase(3.78)).to eq(3.78)
    expect(subject.total).to eq(3.78)
    expect(subject.pay(5.00)).to eq('Your change is $1.22')
    expect(subject.total).to eq(0.0)
  end
end
