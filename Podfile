workspace 'mly-stream-sdk.xcworkspace'
project 'swift-demo'

target 'swift-demo' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'examples/swift-demo/swift-demo.xcodeproj'
  
  pod 'MLYALISDK', :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git'
  pod 'MuxStatsAliPlayer', :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git'
end

target 'objective-c-demo' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'examples/objective-c-demo/objective-c-demo.xcodeproj'
  
  pod 'MLYALISDK', :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git'
  pod 'MuxStatsAliPlayer', :git => 'https://github.com/mlytics/mly-stream-sdk-aliplayer-ios.git'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
