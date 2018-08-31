#
#  Be sure to run `pod spec lint kankanjiuhao.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "kankanjiuhao"
  s.version      = "0.0.1"
  s.summary      = "A short description of kankanjiuhao."

  
  s.description  = <<-DESC
                   Make that change A short description of kankanjiuhao.
                   DESC

  s.homepage     = "https://github.com/JIANG293172/kankanjiuhao.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "JIANG293172" => "904885694@qq.com" }


  s.platform     = :ios
  s.platform     = :ios, "8.4"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  s.source       = { :git => "https://github.com/JIANG293172/kankanjiuhao.git", :tag => "#{s.version}" }
  s.source_files  =  "kankanjiuhao/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

end
