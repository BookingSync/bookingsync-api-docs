guard 'nanoc' do
  watch('nanoc.yaml') # Change this to config.yaml if you use the old config file name
  watch('Rules')
  watch(%r{^(content|layouts|lib|static)/.*$})
end

guard 'livereload' do
  watch(%r{/.+\.(html|css|js|less)})
end
