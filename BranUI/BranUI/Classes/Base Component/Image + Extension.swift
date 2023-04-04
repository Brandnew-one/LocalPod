//
//  Image + Extension.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI
import UIKit

extension Image {
  fileprivate static let bundle: Bundle = .branUI
}

extension UIImage {
  fileprivate static let bundle: Bundle = .branUI

  fileprivate convenience init(
    _ name: String,
    bundle: Bundle
  ) {
    self.init(named: name, in: bundle, compatibleWith: nil)!
  }
}

extension Image {
  public static let foodCart: Image = Image(
    "icons8-food-cart",
    bundle: bundle
  )
}

extension UIImage {
  public static let foodCart: UIImage = UIImage(
    "icons8-food-cart",
    bundle: bundle
  )
}
