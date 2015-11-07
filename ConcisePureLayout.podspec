Pod::Spec.new do |s|
  s.name         = 'ConcisePureLayout'
  s.version      = '0.1.0'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.authors      =  { 'Almas Adilbek' => 'almas.adilbek@gmail.com' }
  s.social_media_url   = "http://twitter.com/mixdesign"
  s.summary      = 'ConcisePureLayout is a group of category files that simplify method invocations of PureLayout library.'
  s.homepage     = 'https://github.com/mixdesign/ConcisePureLayout'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  { :git => 'https://github.com/mixdesign/ConcisePureLayout.git', :tag => "0.1.0" }
  s.source_files  = "ConcisePureLayout", "ConcisePureLayout/**/*.{h,m}"
  s.requires_arc = true
end