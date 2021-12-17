Pod::Spec.new do |s|
  s.name             = 'AMRAdapterFyber'
  s.version          = '7.9.0.3'
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
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterFyber/Libs/libAMRAdapterFyber.a'
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'Fyber_Marketplace_SDK', '7.9.0'
end
