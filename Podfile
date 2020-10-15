platform :ios, '12.0'

target 'XcodeGenSampleCore' do
  #use_frameworks!
  pod 'Firebase/Analytics', '6.34.0', :modular_headers => true  

  target 'XcodeGenSampleCoreTests' do
    inherit! :search_paths
  end

  target 'XcodeGenSample' do
    inherit! :search_paths

    pod 'R.swift', '5.2.2'

    target 'XcodeGenSampleTests' do
      inherit! :search_paths
    end
  end
end