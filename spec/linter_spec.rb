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

      describe '#incorect_end_handler' do
        let(:lint){Linternator.new('second')}

        it "should point the line and the" do
            expect( lint.allerrors).to eql(
                ["\e[34msecond/just_a_test.rb\e[0m\e[33m: Line 4 \e[0m\e[31mExtra end detected\e[0m",
                "\e[34msecond/just_a_test.rb\e[0m\e[33m: on Line 1 \e[0m\e[31mmissing closing brackets\e[0m",
                 "\e[34msecond/just_a_test.rb\e[0m\e[33m: on Line 2 \e[0m\e[31mmissing closing brackets\e[0m"]
            )
        end
      end
end