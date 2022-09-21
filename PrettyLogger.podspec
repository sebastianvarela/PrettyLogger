Pod::Spec.new do |s|
  s.name         = "PrettyLogger"
  s.version      = "2.1.5"
  s.swift_version = '5.0'
  s.summary      = "A pretty set of log functions to print message in console using levels and emojis to improve visibility 💪"
  s.description  = <<-DESC
  A pretty set of log functions to print message in console using levels (Debug, Info, Trace, Warning & Error) and emojis to improve visibility 💪
                   DESC
  s.homepage     = "https://github.com/sebastianvarela/PrettyLogger"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Sebastián Varela" => "sebastian.varela@s3ba.net" }
  s.social_media_url   = "http://twitter.com/skirmish84"

  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '10.1'

  s.source       = { :git => "https://github.com/sebastianvarela/PrettyLogger.git", :tag => "v#{s.version}" }
  s.source_files  = "Source", "Source/**/*.{swift}"
  s.framework  = "UIKit"
end
