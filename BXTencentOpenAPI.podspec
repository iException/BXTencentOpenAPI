Pod::Spec.new do |s|
  s.name             = 'BXTencentOpenAPI'
  s.version          = '3.3.0'
  s.summary          = 'Tencent Open API library for iOS to access Tencent platform.'
  s.description      = <<-DESC
                       It's a shame that Tencent dev team doesn't have an official pod for their Open API library.
                       Therefore, we create this pod to track the official Tencent Open API SDK.
                       DESC
  s.homepage         = 'https://github.com/iException/BXTencentOpenAPI'
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  s.author           = { 'Yiming Tang' => 'yimingnju@gmail.com' }
  s.source           = { :git => 'https://github.com/iException/BXTencentOpenAPI.git', :tag => "v#{s.version.to_s}" }
  s.social_media_url = 'https://twitter.com/yiming_t'
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics'
  s.libraries        = 'iconv', 'z', 'c++', 'sqlite3'
  s.vendored_frameworks = 'TencentOpenAPI/TencentOpenAPI.framework'
end
