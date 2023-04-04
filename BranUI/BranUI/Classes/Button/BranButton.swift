//
//  BranButton.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI

public enum ButtonColor {
  case orange
  case darkGray

  fileprivate var foregroundColor: Color {
    switch self {
    case .orange:
      return .branWhite
    case .darkGray:
      return .branWhite
    }
  }

  fileprivate var backgroundColor: Color {
    switch self {
    case .orange:
      return .branOrange
    case .darkGray:
      return .branDarkGray
    }
  }
}

fileprivate struct CTAButtonWrapper: ViewModifier {
  private var buttonColor: ButtonColor
  let action: () -> Void

  fileprivate init(
    _ color: ButtonColor,
    action: @escaping () -> Void
  ) {
    self.buttonColor = color
    self.action = action
  }

  func body(content: Content) -> some View {
    content
      .foregroundColor(buttonColor.foregroundColor)
      .frame(maxWidth: .infinity, minHeight: 48, maxHeight: 48)
      .background(buttonColor.backgroundColor)
      .cornerRadius(16)
      .padding([.leading, .trailing], 1)
      .wrapToButton { action() }
  }
}
