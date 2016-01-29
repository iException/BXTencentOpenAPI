Pod::Spec.new do |s|
  s.name             = "BXTencentOpenAPI"
  s.version          = "2.9.5"
  s.summary          = "Tencent Open API library for iOS to access Tencent platform"
  s.description      = <<-DESC
                       It's a shame that Tencent dev team doesn't have an official pod for their Open API library.
                       Therefore, we create this pod to track the official Tencent Open API SDK.
                       DESC
  s.homepage         = "https://github.com/iException/BXTencentOpenAPI"
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { "Yiming Tang" => "yimingnju@gmail.com" }
  s.source           = { :git => "https://github.com/iException/BXTencentOpenAPI.git", :tag => "v#{s.version.to_s}" }
  s.social_media_url = 'https://twitter.com/yiming_t'
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics'
  s.libraries        = 'iconv', 'z', 'c++', 'sqlite3'

  s.subspec 'Basic' do |ss|
    ss.vendored_frameworks = 'TencentOpenAPI/Basic/TencentOpenAPI.framework'
  end

  s.subspec 'Advanced' do |ss|
    ss.vendored_frameworks = 'TencentOpenAPI/Advanced/TencentOpenAPI.framework'
    ss.resource     = 'TencentOpenAPI/Advanced/TencentOpenApi_IOS_Bundle.bundle'
  end

  s.default_subspec = 'Basic'
end
