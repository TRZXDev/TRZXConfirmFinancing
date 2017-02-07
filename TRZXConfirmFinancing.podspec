Pod::Spec.new do |s|
  s.name         = 'TRZXConfirmFinancing'
  s.summary      = 'High performance cache framework for iOS.'
  s.version      = '0.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'fpli' => '952241861@qq.com' }
  s.homepage     = 'https://github.com/TRZXDev/TRZXConfirmFinancing'
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/TRZXDev/TRZXConfirmFinancing.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files  = "TRZXConfirmFinancing/TRZXConfirmFinancing/**/*.{h,m}"
  
  s.frameworks = 'UIKit','Foundation' 
  s.dependency "TRZXNetwork"


end