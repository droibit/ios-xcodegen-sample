# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'XcodeGenSample' do
  use_frameworks!

  pod 'Firebase/Analytics', '6.17.0'
  pod 'R.swift', '5.1.0'
  # Workaround for issue.
  # ref. https://github.com/uber/needle/issues/303
  pod 'NeedleFoundation', '0.12.0'

  target 'XcodeGenSampleTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'XcodeGenSampleCore' do
  use_frameworks!

  # Workaround for issue.
  # ref. https://github.com/uber/needle/issues/303
  pod 'NeedleFoundation', '0.12.0'

  target 'XcodeGenSampleCoreTests' do
    inherit! :search_paths
    # Pods for testing
  end  
end