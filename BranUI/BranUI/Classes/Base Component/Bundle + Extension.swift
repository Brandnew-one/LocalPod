//
//  Bundle + Extension.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import Foundation

private class BranBundleClass {}

extension Bundle {
  class var branUI: Bundle {
    Bundle(for: BranBundleClass.self)
  }
}
