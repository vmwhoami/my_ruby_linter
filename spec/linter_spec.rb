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
  let(:file) { FileHandler.new('spec') }
  describe '#file_query' do
    it 'Should reduce the file count each time it is called' do
      file.file_query
      expect(file.file_count).to eql(2)
    end

    it "Should return the first file in the folder and it's location" do
      hash = file.file_query
      expect(hash.keys.join).to eql('spec/linter_spec.rb')
    end
  end
end
