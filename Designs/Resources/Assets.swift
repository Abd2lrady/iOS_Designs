// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal static let barsStatusBarIPhoneLight = ImageAsset(name: "Bars_Status_Bar_iPhone_Light")
  internal static let fill1 = ImageAsset(name: "Fill_1")
  internal static let group = ImageAsset(name: "Group")
  internal static let group1 = ImageAsset(name: "Group_1")
  internal static let group10 = ImageAsset(name: "Group_10")
  internal static let group11 = ImageAsset(name: "Group_11")
  internal static let group12 = ImageAsset(name: "Group_12")
  internal static let group5 = ImageAsset(name: "Group_5")
  internal static let group6 = ImageAsset(name: "Group_6")
  internal static let group7 = ImageAsset(name: "Group_7")
  internal static let group7Copy2 = ImageAsset(name: "Group_7_Copy_2")
  internal static let group8 = ImageAsset(name: "Group_8")
  internal static let group9 = ImageAsset(name: "Group_9")
  internal static let oval = ImageAsset(name: "Oval")
  internal static let rectangle121Copy = ImageAsset(name: "Rectangle_121_Copy")
  internal static let rectangleCopy3 = ImageAsset(name: "Rectangle_Copy_3")
  internal static let arrowCopy2 = ImageAsset(name: "arrow_copy_2")
  internal static let arrowCopy3 = ImageAsset(name: "arrow_copy_3")
  internal static let arrowCopy4 = ImageAsset(name: "arrow_copy_4")
  internal static let arrowCopy5 = ImageAsset(name: "arrow_copy_5")
  internal static let arrowCopy6 = ImageAsset(name: "arrow_copy_6")
  internal static let arrowCopy7 = ImageAsset(name: "arrow_copy_7")
  internal static let arrowCopy8 = ImageAsset(name: "arrow_copy_8")
  internal static let translate = ImageAsset(name: "translate")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
