Pod::Spec.new do |s|
  s.name = 'UIKitCore'
  s.version = '0.0.1'
  s.license = 'MIT'

  s.summary = 'Easy to use functional tab bar for swift projects.'
  s.homepage = 'https://github.com/LenisDev/UIKitCore'
  s.authors = { 'Manish Pandey' => '' }
  
  s.source = { :git => 'https://github.com/LenisDev/UIKitCore.git', :tag => s.version }
  s.documentation_url = 'https://lenisdev.github.io/UIKitCore/index.html'

  s.ios.deployment_target = '11.0'

  s.swift_versions = ['5.1', '5.2']

  s.source_files = ['Source/*.swift', 'Source/**/*.swift']

end
