class File_handler
    def initialize(folder)
      @folder  =  Dir["#{folder}/**/*.rb"]
    end

    def folder_query
      
    end
end


#WHAT THIS CLASS WILL DO
# 1 Find the file it is given
# 2 Parse the file read though each line

# load "./lib/file_handler.rb"
# files = File_handler.new("anew")
# tests = "tests"
# a = Dir["#{tests}/**/*.rb"]
# p a