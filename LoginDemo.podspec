

Pod::Spec.new do |spec|

  spec.name         = "LoginDemo"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of LoginDemo."
  spec.description  = "A short description of LoginDemo."

  spec.homepage     = "http://EXAMPLE/LoginDemo"

  spec.license      = "MIT"

  spec.author             = { "ManalibNu10" => "manalib@nu10.co" }

  spec.source       = { :git => "https://github.com/ManalibNu10/LoginDemo.git", :tag => "1.0.1" }

  spec.source_files  = "LoginDemo", "Classes/**/*.{h,m}"

  spec.exclude_files = "Classes/Exclude"

  spec.swift_version = "5"
  

end
