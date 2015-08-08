
linkable = Dir['*'].reject{|f| f == 'Rakefile'}
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

task :default => links
