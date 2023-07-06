Pod::Spec.new do |s|
  s.name             = 'MuxStatsAliPlayer'
  s.version          = '0.2.1.5'
  s.summary          = 'A short description of MuxStatsAliPlayer.'
 
  s.description      = 'MuxStatsAliPlayer'

  s.homepage         = 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'github' => '1239.github.com' }
  s.source           = { :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

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
