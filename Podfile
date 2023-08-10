workspace 'mly-stream-sdk.xcworkspace'
project 'swift'

target 'swift' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'Examples/swift/swift.xcodeproj'
  
  pod 'MLYALISDK', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
  pod 'MuxStatsAliPlayer', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
end

target 'objective-c' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'Examples/objective-c/objective-c.xcodeproj'
  
  pod 'MLYALISDK', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
  pod 'MuxStatsAliPlayer', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
