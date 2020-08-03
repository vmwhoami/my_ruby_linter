require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :files, :llines 
  def initialize(folder)
    @files = FileHandler.new(folder)
    @llines = @files.folder_query
    @keywords = %w[def end do puts p print while until if unless until]
  end


  def allfiles
    @llines
  end
 
  def give_error
    @llines.each do |k,v|
        v.each_with_index do |el,indx|
           return "#{k.blue} :#{(indx+1).to_s.green}"  if  !correct_braces?(el)
        end
    end

  end

  def correct_braces?(str)
    arr = []
    braces = { '{' => '}', '[' => ']', '(' => ')' }
    str.each_char do |char|
      arr << char if braces.key?(char)
      return false if braces.key(char) && braces.key(char) != arr.pop
    end
    arr.empty?
  end

  un



end

# lib/linternator.rb:13:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
#   def get_files

# load "./lib/linternator.rb"
lint = Linternator.new("tests")

puts lint.give_error


# https://stackoverflow.com/questions/20747294/how-to-check-validity-of-closed-brackets-parentheses-or-brackets-in-ruby


