require 'rspec'

class String
  def total_words
    scan(/\w+/).count
  end

  def word_list
    list = Hash.new(0)
    downcase.scan(/\w+/) { |word| list[word] += 1 }
    list
  end
end

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'Counts words accurately' do
    expect(@str.total_words).to eq(9)
  end
