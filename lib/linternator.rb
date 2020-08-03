require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :files, :llines 
  def initialize(folder)
    @files = FileHandler.new(folder)
    @llines = @files.folder_query
    @keywords = %w[def end do puts p print while until if unless untill]
  end

#  def line
#   @llines.each_with_index do |k,v|
#     if error?(v)
#       puts "#{k} #{v}"
#     end
#   end
#  end

#   def allfiles
#     @llines
#   end

# def error?(arr)
#   true
# end

# def closing_brackets(arr)
#   h = Hash.new
#   arr.each do |el|
    
#   end
#   h
# end

end

# lib/linternator.rb:13:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
#   def get_files

# load "./lib/linternator.rb"
# lint = Linternator.new("tests")
#  lint.llines 

# h = {"tests/test2.rb"=>["\n", "def tests(a)\n", "    puts \"Hello \#{a}\"\n", "end"], "tests/test1.rb"=>["def function(a, _b)\n", "  \"a great day today \#{a} \"\n", "end\n"]}
# p h.keys


def closing_brackets(ar)
  opening = ["(","{","["]
  closing = ["]","}",")"]
  h = Hash.new(0)
  h2 = Hash.new(0)
  ar.each do |el|
 h[el] +=1 if opening.include?(el)
 h2[el] +=1 if closing.include?(el)
  end
  h2.values == h.values
end
# pop && shift should be equal? "()" "[]" "{}"
# how to specify what is missing?
arr = ["(","[","{",")","]","}"]

p closing_brackets(arr)

def closing_order(arr)
  ar = []
  braces = ["(","[","{",")","]","}"]
  closing = [ "()", "[]" ,"{}"]
  arr.each_with_index do |el,indx|
    el.each_char{|el| ar << el if braces.include?(el)} 
  end 
  ar
end

dkadl = ["\n", "def tests(a)\n", "    puts \"Hello \#{[a]}\"\n", "end"]

p closing_order(dkadl)
# https://stackoverflow.com/questions/20747294/how-to-check-validity-of-closed-brackets-parentheses-or-brackets-in-ruby
# def valid_string?(str)
#   stack = []
#   symbols = { '{' => '}', '[' => ']', '(' => ')' }
#   str.each_char do |c|
#     stack << c if symbols.key?(c)
#     return false if symbols.key(c) && symbols.key(c) != stack.pop
#   end
#   stack.empty?
# end

# puts valid_string?('[ ]')                  # returns true
# puts valid_string?('[  ')                  # returns false
# puts valid_string?('[ ( text ) {} ]')      # returns true
# puts valid_string?('[ ( text { ) } ]')     # returns false