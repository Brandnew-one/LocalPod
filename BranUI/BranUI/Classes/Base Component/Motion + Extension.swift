//
//  Motion + Extension.swift
//  BranUI
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI

import Lottie

public enum LottieFile: String {
  case logoLoading = "logo_loading"
}

public struct LottieView: UIViewRepresentable {
  public typealias UIViewType = UIView
  let lottieFile: LottieFile
  let mode: LottieLoopMode

  public init(
    _ lottieFile: LottieFile,
    mode: LottieLoopMode
  ) {
    self.lottieFile = lottieFile
    self.mode = mode
  }

  public func makeUIView(
    context: UIViewRepresentableContext<LottieView>
  ) -> UIView {
    let view = UIView(frame: .zero)
    let animationView = LottieAnimationView()
    animationView.animation = LottieAnimation.named(lottieFile.rawValue)
    animationView.contentMode = .scaleAspectFit
    animationView.loopMode = mode
    animationView.play()

    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)

    NSLayoutConstraint.activate([
      animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
      animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
    ])

    return view
  }

  public func updateUIView(
    _ uiView: UIView,
    context: UIViewRepresentableContext<LottieView>
  ) {
  }
}


