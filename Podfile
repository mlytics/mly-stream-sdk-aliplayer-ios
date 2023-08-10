workspace 'mly-stream-sdk.xcworkspace'
project 'Swift-AVPlayer'

target 'Swift-AVPlayer' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'Examples/Swift-AVPlayer/Swift-AVPlayer.xcodeproj'
  
  pod 'MLYALISDK', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
  pod 'MuxStatsAliPlayer', :git => 'https://github.com/mlytics/mly-stream-sdk-ios-aliplayer.git'
end

target 'ObjectiveC-Player' do 
  use_frameworks!
  platform :ios, '14.0'
  project 'Examples/ObjectiveC-Player/ObjectiveC-Player.xcodeproj'
  
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
