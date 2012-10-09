notification  :tmux,
              :success => 'colour22',
              :failed  => 'colour52',
              :display_message => true

guard 'rspec',
      all_on_start:   true,
      all_after_pass: true,
      cli:            '--format Fuubar',
      notification:   true do

  watch(%r{^(spec\/.+_spec\.rb)$})   { |m| m[1] }
  watch(%r{^lib/use_the_forcible\.rb$})      { |m| "spec/use_the_forcible_spec.rb" }
  watch(%r{^lib/use_the_forcible/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
end
