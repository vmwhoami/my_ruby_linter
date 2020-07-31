class File_handler
    def initialize(folder="tests")
      @folders  =  Dir["#{folder}/**/*.rb"]
      @files = self.folder_query
    end
    
    def folder_query
      @folders.map do |el|
        File.readlines(el)
      end
    end
end


#WHAT THIS CLASS WILL DO
# 1 Find the file it is given
# 2 Parse the file read though each line

# load "./lib/file_handler.rb"
# files = File_handler.new("anew")
# tests = "tests"
# a = Dir["#{tests}/**/*.rb"]
#files.folder_query
# p a