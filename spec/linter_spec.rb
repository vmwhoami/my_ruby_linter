require_relative '../lib/linternator.rb'

describe Linternator do
  let(:linter){Linternator.new('tests')}
    describe '#upadate_errors' do
        error = "This is a bad bad error"
        it 'inserts all given errors into @allerrors' do
           expect( linter.upadate_errors(error)).to eql(linter.allerrors)
          end
      end

      describe '#upadate_errors' do
        error = "This is a bad bad error"
        it 'inserts all given errors into @allerrors' do
           expect( linter.upadate_errors(error)).to eql(linter.allerrors)
          end
      end

      describe '#incorect_braces?' do
        bad_braces = "()()[[][][{]}"
        good_braces = "()({[]})"
        it "should check the braces not being closed and return true if they're not" do
            expect( linter.incorect_braces?(bad_braces)).to eql(true)
        end
        it "should " do
            expect( linter.incorect_braces?(good_braces)).to eql(false)
        end
      end
end