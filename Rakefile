require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs = %w(test lib)        # modifies ruby $LOAD_PATH
  t.pattern = 'test/**/*_test.rb'
  # t.verbose = true
end

task :default => :test
