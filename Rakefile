
task :update_submodules do
  sh "git submodule init && git submodule update"
end

task :update => [:update_submodules] do
  sh "cd #{File.dirname(__FILE__)}/bundle/Command-T; rvm --with-rubies 1.8.7 rake make"
end

task :install do
  sh "mkdir ~/.vim_swap"
  sh "ln -s #{File.dirname(__FILE__)} ~/.vim" 
  sh "ln -s #{File.dirname(__FILE__)}/gvimrc ~/.gvimrc"
  sh "ln -s #{File.dirname(__FILE__)}/vimrc ~/.vimrc"
end
