//
//  ContentView.swift
//  BranTestProject
//
//  Created by Bran on 2023/04/04.
//

import SwiftUI

import BranUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello, BranUI!")

      BranButton(.orange, "Button") {
        print("Hello")
      }

      Image.foodCart
        .resizable()
        .renderingMode(.template)
        .frame(width: 28, height: 28)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
