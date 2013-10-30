
task :default => :test

desc"Probar clase fracciones con documentation"
task :test do
sh "rspec -I. spec/tc_fr.rb --format documentation"
end

desc"Probar Main clase fracciones"
task :bin do
sh "cd lib && ./main.rb && cd .."
end

desc"Probar clase fracciones formato html"
task :thtml do
sh "rspec -I. spec/tc_fr.rb --format html"
end


