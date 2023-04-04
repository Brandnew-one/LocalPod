//
//  Button + Extension.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI

// MARK: - 특정 뷰를 버튼으로 만들어주는 Modifier
private struct ButtonWrapper: ViewModifier {
  let action: () -> Void

  init(action: @escaping () -> Void) {
    self.action = action
  }

  func body(content: Content) -> some View {
    Button(
      action: action,
      label: { content }
    )
  }
}

extension View {
  public func wrapToButton(
    action: @escaping () -> Void
  ) -> some View {
    modifier(ButtonWrapper(action: action))
  }
}
