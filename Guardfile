guard 'rspec', cli: File.read(".rspec").delete("\n") do
  watch(%r{^lib/})      { "spec" }
  watch(%r{^spec/})     { "spec" }
  watch("Gemfile.lock") { "spec" }
  watch(".rspec")       { "spec" }
end

guard 'bundler' do
  watch('Gemfile')
  watch('easy_env.gemspec')
end

