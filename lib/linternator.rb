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