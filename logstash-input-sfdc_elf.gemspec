Gem::Specification.new do |s|
  s.name            = 'logstash-input-sfdc_elf'
  s.version         = '0.0.1'
  s.licenses        = ['MIT'] # TODO(abisek) Discuss license type with legal
  s.summary         = "A Logstash plugin the receives events from Salesforce's Event Log File"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Abhishek Sreenivasa"]
  s.email           = 'abisek@gmail.com'
  s.homepage        = "http://www.salesforce.com" # TODO(abisek) Update homepage
  s.require_paths   = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '< 2.0.0'

  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_development_dependency 'logstash-devutils'
end