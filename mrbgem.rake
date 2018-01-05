MRuby::Gem::Specification.new('mruby-cache') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Charles Cui'
  if RUBY_PLATFORM =~ /darwin/i
    spec.linker.libraries << ['pthread']
  else
    spec.linker.libraries << ['pthread', 'rt']
  end
  spec.add_test_dependency 'mruby-print', :core => 'mruby-print'
end
