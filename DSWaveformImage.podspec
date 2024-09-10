Pod::Spec.new do |s|
  s.name             = 'DSWaveformImage'
  s.version          = '14.2.2' # Set this to the actual version
  s.summary          = 'Generate waveform images from audio files.'
  
  s.description      = <<-DESC
    DSWaveformImage is a framework for rendering waveform images from audio files.
    It allows you to generate images of audio waveforms that can be customized in appearance.
  DESC
  
  s.homepage         = 'https://github.com/Cadence-Development/DSWaveformImage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = "Dennis Schmidt"
  s.source           = { :git => 'https://github.com/Cadence-Development/DSWaveformImage.git', :tag => s.version }
  
  s.ios.deployment_target  = '15.0'
  s.osx.deployment_target  = '12.0'
  s.swift_version    = '5.7'  

  s.subspec 'WaveformImage' do |ss|
    ss.source_files = 'Sources/DSWaveformImage/**/*.{swift}'
    ss.requires_arc  = true
  end

  s.subspec 'WaveformViews' do |ss|
    ss.source_files = 'Sources/DSWaveformImageViews/**/*.{swift}'
    ss.requires_arc  = true
    ss.dependency 'DSWaveformImage/WaveformImage'
  end

  s.default_subspec = 'WaveformImage'
end