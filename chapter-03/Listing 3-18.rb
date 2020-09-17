# File: Rakefile
#

desc "Run all the test in your test folder"
task :test do
  Dir.glob("test/**/test_*.rb").each do |file|
    load file
  end
end

task default: :test
