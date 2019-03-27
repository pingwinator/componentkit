Pod::Spec.new do |s|
  s.name = "ComponentKit"
  s.version = "0.15.1"
  s.summary = "A React-inspired view framework for iOS"
  s.license = "BSD"
  s.authors = "adamjernst@fb.com"
  s.homepage = "https://componentkit.org"
  s.social_media_url = "https://twitter.com/componentkit"
  s.frameworks = ["UIKit", "CoreText"]
  s.libraries = "c++"
  s.requires_arc = true
  s.xcconfig = {"CLANG_CXX_LANGUAGE_STANDARD"=>"c++11", "CLANG_CXX_LIBRARY"=>"libc++"}
  s.source = https://github.com/pingwinator/componentkit.git

  s.ios.deployment_target    = '8.1'
  s.ios.vendored_framework   = 'ios/ComponentKit.framework'
  s.tvos.deployment_target    = '9.1'
  s.tvos.vendored_framework   = 'tvos/ComponentKit.framework'
end
