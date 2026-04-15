
Pod::Spec.new do |spec|
  spec.name         = "QSJsonParser"
  spec.version      = "1.0.1"
  spec.summary      = "Json解析器"
  spec.description  = "封装系统方法，对Json数据进行解析"
  spec.homepage     = "https://github.com/fallpine/QSJsonParser"
  spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "QiuSongChen" => "791589545@qq.com" }
  spec.ios.deployment_target     = "15.0"
  spec.watchos.deployment_target = "8.0"
  spec.source       = { :git => "https://github.com/fallpine/QSJsonParser.git", :tag => "#{spec.version}" }
  spec.swift_version = '5'
  spec.source_files  = "QSJsonParser/QSJsonParser/Tool/*.{swift}"
end
