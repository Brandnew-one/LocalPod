//
//  Color + Extension.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI
import UIKit

extension Color {
  fileprivate static let bundle: Bundle = .branUI
}

extension UIColor {
  fileprivate static let bundle: Bundle = .branUI

  fileprivate convenience init(
    _ name: String,
    bundle: Bundle
  ) {
    self.init(named: name, in: bundle, compatibleWith: nil)!
  }
}

extension Color {
  public static let branDarkGray: Color = Color(
    "DarkGray",
    bundle: bundle
  )

  public static let branGray: Color = Color(
    "Gray",
    bundle: bundle
  )

  public static let branWhite: Color = Color(
    "White",
    bundle: bundle
  )

  public static let branWhiteGray: Color = Color(
    "WhiteGray",
    bundle: bundle
  )

  public static let branOrange: Color = Color(
    "Orange",
    bundle: bundle
  )
}

extension UIColor {
  public static let branDarkGray: UIColor = UIColor(
    "DarkGray",
    bundle: bundle
  )

  public static let branGray: UIColor = UIColor(
    "Gray",
    bundle: bundle
  )

  public static let branWhite: UIColor = UIColor(
    "White",
    bundle: bundle
  )

  public static let branWhiteGray: UIColor = UIColor(
    "WhiteGray",
    bundle: bundle
  )

  public static let branOrange: UIColor = UIColor(
    "Orange",
    bundle: bundle
  )
}
