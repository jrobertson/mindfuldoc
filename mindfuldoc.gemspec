Gem::Specification.new do |s|
  s.name = 'mindfuldoc'
  s.version = '0.1.0'
  s.summary = 'Experimental gem to make it convenient to edit a mindmap_mfm document from a web page.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/mindfuldoc.rb']
  s.add_runtime_dependency('mindmap_mfm', '~> 0.3', '>=0.3.1')
  s.signing_key = '../privatekeys/mindfuldoc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/mindfuldoc'
end
