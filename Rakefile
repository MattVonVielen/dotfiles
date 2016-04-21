DO_NOT_LINK = [ 'Rakefile', 'README.md', 'backups' ]
linkable = Dir['*'].reject{ |f| DO_NOT_LINK.include? f }
links = []

linkable.each do |entry|
  source = File.expand_path entry
  destination = File.join(ENV['HOME'], '.' + entry)
  links << destination

  backup_destination = File.exists? destination
  file destination => source do
    FileUtils.mv destination, File.join('backups', entry) if backup_destination
    FileUtils.ln_s source, destination
  end
end

vundle = 'vim/bundle/Vundle.vim' 
file vundle do
  sh 'git clone https://github.com/VundleVim/Vundle.Vim vim/bundle/Vundle.vim'
  sh 'vim +PluginInstall +qall'
end

task :default => links + [ vundle ]
