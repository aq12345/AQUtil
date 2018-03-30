

Pod::Spec.new do |s|


s.name         = "AQUtil"
s.version      = "1.0.1"
s.summary      = "A Swift Util of AQUtil."

s.description  = <<-DESC
A Swift Util for AQ, Just only have Util .
DESC

s.homepage     = "https://github.com/aq12345/AQUtil.git"

s.license      = "MIT"

s.author             = { "aq" => "352532901@qq.com" }

s.platform     = :ios, "9.0"

s.source       = { :git => "https://github.com/aq12345/AQUtil.git", :tag => "#{s.version}" }

s.source_files  = "AQUtil/Classes/Util/*.{swift}"


end
