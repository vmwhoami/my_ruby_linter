require_relative 'term_rainbou.rb'
require_relative 'file_handler.rb'
class Linternator
  attr_reader :file , :file_name , :code_lines, :allerrors
  def initialize(folder)
    @folders = FileHandler.new(folder)
    @file = @folders.file_query
    @file_name = @file.keys.flatten.join
    @code_lines =  @file.values.flatten
		@keywords = %w[def if unless until class case begin]
		@allerrors = []
  end


	def upadate_errors(error)
    @allerrors<<error
  end

  def braces_handler
    message = "missing closing brackets"
    @code_lines.each_with_index do |line,indx| 
       if self.incorect_braces?(line)
        upadate_errors(@file_name.blue +  ": on Line #{indx+1} ".yellow + message.red)
       end  
    end
  end




  def incorect_braces?(str)
    array = []
    braces = { '{' => '}', '[' => ']', '(' => ')' }
    str.each_char do |char|
      array << char if braces.key?(char)
      return true if braces.key(char) && braces.key(char) != array.pop
    end
    !array.empty?
  end



  def incorect_end_handler
    message_a = "Extra end detected" 
    message_b = "Missing end"

    index_end = []
    keyword_count = 0
    end_count = 0
    @code_lines.each_with_index do |str,indx|
  if @keywords.include?(str.split(' ').first) || str.split(' ').include?('do')
    index_end << indx + 1
    keyword_count += 1 
  end
  if str.strip == 'end'
    index_end << indx + 1
      end_count += 1 
  end
    end
    status = keyword_count <=> end_count
    upadate_errors(@file_name.blue + ": Line #{index_end[-1]} ".yellow + message_b.red)if status.eql?(1)
    upadate_errors(@file_name.blue + ": Line #{index_end[-1]} ".yellow + message_a.red ) if status.eql?(-1)
  end





end




# load "./lib/linternator.rb"

linter = Linternator.new('tests')
p linter.braces_handler
p linter.incorect_end_handler

linter.allerrors.each do |el|
  puts el
end
