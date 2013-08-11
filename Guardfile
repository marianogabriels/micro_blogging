# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{model/.+.rb$})
  watch ('model/')


  watch('spec/spec_helper.rb')  { "spec" }

  # Capybara features specs
  #watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/features/#{m[1]}_spec.rb" }
end

