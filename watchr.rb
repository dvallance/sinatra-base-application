watch('test/.*_test.rb') {|md| system("ruby #{md[0]}")}
