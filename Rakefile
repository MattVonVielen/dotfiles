
linkable = Dir['*'].reject{|f| f == 'Rakefile'}

linkable.each do |source|
  destination = File.join(ENV['HOME'], '.' + entry)

  file source => 

  file destination => source do
    FileUtils.ln_s source, destination
  end
end

