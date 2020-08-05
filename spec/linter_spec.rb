require_relative '../lib/linternator.rb'

describe Linternator do
  let(:linter) { Linternator.new('tests') }
  describe '#upadate_errors' do
    error = 'This is a bad bad error'
    it 'inserts all given errors into @allerrors' do
      expect(linter.upadate_errors(error)).to eql(linter.allerrors)
    end
  end

  describe '#upadate_errors' do
    error = 'This is a bad bad error'
    it 'inserts all given errors into @allerrors' do
      expect(linter.upadate_errors(error)).to eql(linter.allerrors)
    end
  end

  describe '#incorrect_braces?' do
    bad_braces = '()()[[][][{]}'
    good_braces = '()({[]})'
    it "should check the braces not being closed and return true if they're not" do
      expect(linter.incorrect_braces?(bad_braces)).to eql(true)
    end
    it 'should ' do
      expect(linter.incorrect_braces?(good_braces)).to eql(false)
    end
  end

  describe '#incorrect_end_handler' do
    let(:lint) { Linternator.new('spec') }

    it 'should point the line and the errors' do
      expect(lint.allerrors.include?(
               "\e[34mspec/mock-test/just_a_test.rb\e[0m\e[33m: on Line 1 \e[0m\e[31mmissing closing brackets\e[0m"
             )).to eql(true)
    end
  end
end

describe FileHandler do
end
