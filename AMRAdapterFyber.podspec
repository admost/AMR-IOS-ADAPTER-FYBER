Pod::Spec.new do |s|
  s.name             = 'AMRAdapterFyber'
  s.version          = '8.2.7.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Fyber adapter for AMR SDK.'
  s.description      = 'This pod depreciated, please use AMRAdapterDTExchange.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-FYBER.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5']
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRAdapterDTExchange'
end
