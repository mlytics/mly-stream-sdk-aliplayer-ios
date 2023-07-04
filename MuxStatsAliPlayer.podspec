Pod::Spec.new do |s|
  s.name             = 'MuxStatsAliPlayer'
  s.version          = '0.2.1.4'
  s.summary          = 'Summary of MuxStatsAliPlayer.'
  s.homepage                = 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios' 
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'MLY' => 'rd@mlytics.com' }
  s.source                  = { :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git', :tag => s.version.to_s }
  
  s.description      = 'Description of MuxStatsAliPlayer.'

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  
  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'GENERATE_INFOPLIST_FILE' => 'YES'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'GENERATE_INFOPLIST_FILE' => 'YES' }

  s.ios.vendored_frameworks = 'archives/MuxStatsAliPlayer.xcframework'
  
  s.dependency  'Mux-Stats-Core', '~> 4.5'
  s.dependency  'AliPlayerSDK_iOS', '5.5.6.0'
end
