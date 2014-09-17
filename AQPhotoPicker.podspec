Pod::Spec.new do |s|
  s.name         = 'AQPhotoPicker'
  s.version      = '0.1'
  s.summary      = 'With this control, you can capture photos from iPhone camera or select photos from album by implementing only one callback method.'
  s.homepage     = 'https://github.com/aqavi-paracha/AQPhotoPicker'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'Abdul Qavi' => 'aqvai07@gmail.com' }
  s.social_media_url   = 'http://twitter.com/aqavi_paracha'
  s.platform     = :ios, '5.0'
  s.source       = { 
:git => 'https://github.com/aqavi-paracha/AQPhotoPicker.git', 
:tag => '0.1'
}

  s.source_files  = '*'
  s.requires_arc = true

end
