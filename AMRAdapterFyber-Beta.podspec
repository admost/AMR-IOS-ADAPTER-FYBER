Pod::Spec.new do |s|
  s.name             = 'AMRAdapterFyber-Beta'
  s.version          = '8.1.4.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Fyber adapter for AMR SDK.'
  s.description      = 'AMR Fyber adapter allows publishers to mediate Fyber offerwall ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-FYBER.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'AMRAdapterFyber/Libs/AMRAdapterFyber.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
  s.dependency 'Fyber_Marketplace_SDK', '8.1.4'
end
