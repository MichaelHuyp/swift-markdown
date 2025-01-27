Pod::Spec.new do |s|
    s.name = "swift-markdown"
    s.version = "0.0.2"
    s.summary = "Swift Markdown is a Swift package for parsing, building, editing, and analyzing Markdown documents."
    s.homepage = "https://github.com/vencewill/swift-markdown"
    s.license = { :type => "Apache", :file => "LICENSE.txt" }
    s.author = { 
        "Apple" => "apple@apple.com",
        "Vance Will" => "23724267+vencewill@users.noreply.github.com"
    }
    s.source = { 
        :git => "https://github.com/vencewill/swift-markdown.git", 
        :tag => "pod-" + s.version.to_s,
        :submodules => true
    }
    s.ios.deployment_target = "9.0"
    s.tvos.deployment_target = "9.0"
    s.osx.deployment_target = "10.9"
    s.swift_version = '5.0'
    s.requires_arc = true
    s.module_name = "Markdown"
    s.source_files = [
        "Sources/Markdown/**/*.swift",
        "Sources/CAtomic/**/*.{h,c}",
        "swift-cmark/src/**/*.{h,c}",
        "swift-cmark/extensions/**/*.{h,c}",
    ]
    s.preserve_paths = [
        "README.md",
        "swift-cmark/src/*.inc",
        "swift-cmark/COPYING",
        "swift-cmark/README.md",
    ]
    s.pod_target_xcconfig = {
        'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'SWIFT_MARKDOWN_COCOA_PODS'
    }
end
