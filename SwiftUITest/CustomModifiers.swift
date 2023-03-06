//
//  CustomModifiers.swift
//  SwiftUITest
//
//  Created by DmitriiG on 28.02.2023.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .font(.largeTitle)
            .background(Color.red)
    }
}

struct Main: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("body", size: 24))
    }
}
