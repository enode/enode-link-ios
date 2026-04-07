Pod::Spec.new do |spec|
  spec.name           = "EnodeLinkKit"
  spec.version        = "1.0.11"
  spec.summary        = "Enode iOS SDK for energy device linking"

  spec.description    = <<-DESC
    LinkKit enables seamless integration of energy device linking capabilities
    into iOS applications. Features include:
    - Web-based UI for device linking flows
    - WebBLE (Bluetooth Low Energy) support
    - OAuth integration for third-party authentication
    - Real-time device state tracking
  DESC

  spec.homepage       = "https://github.com/enode/enode-link-ios"
  spec.documentation_url = "https://developers.enode.com/docs/link-sdks/ios"
  spec.license        = { :type => "Apache-2.0" }
  spec.author         = { "Enode" => "support@enode.com" }

  spec.platform       = :ios, "13.1"
  spec.swift_version  = "5.0"

  spec.source         = {
    :git => "https://github.com/enode/enode-link-ios.git",
    :tag => spec.version.to_s
  }

  spec.ios.vendored_frameworks = "LinkKit.xcframework"

  spec.frameworks = "CoreBluetooth", "WebKit", "Foundation", "UIKit", "Security"
end
