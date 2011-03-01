task :install do
  sh "ln -s #{File.dirname(__FILE__)} ~/.vim" 
  sh "ln -s #{File.dirname(__FILE__)}/gvimrc ~/.gvimrc"
  sh "ln -s #{File.dirname(__FILE__)}/vimrc ~/.vimrc"
end

task :build do
  sh "cd #{File.dirname(__FILE__)}/bundle/command-t; rvm --with-rubies 1.8.7 rake make"
end

