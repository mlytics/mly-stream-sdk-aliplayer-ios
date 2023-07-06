
Pod::Spec.new do |s|
  s.name         = "MLYALISDK"
  s.version      = "0.2.1.6"
  s.summary      = "A short description of MLYALISDK."
  s.description      = 'MLYALISDK'
  s.homepage         = 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios' 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mlytics' => 'rd@mlytics.com' }
  s.source           = { :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'

  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'GENERATE_INFOPLIST_FILE' => 'YES'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'GENERATE_INFOPLIST_FILE' => 'YES' }

  s.ios.vendored_frameworks = 'archives/MLYSDK.xcframework'

  s.dependency 'Mux-Stats-AVPlayer', '3.1.0' 
  s.dependency 'MuxStatsAliPlayer'
 
  s.dependency 'GCDWebServer', '3.5.4'
  s.dependency 'Sentry', '7.31.3'
  s.dependency 'WebRTC-SDK', '=104.5112.16' 
  s.dependency 'SwiftCentrifuge', '0.5.5'
  s.dependency 'SwiftProtobuf', '1.21.0'
end