//
//  Universe.swift
//  SwiftUITest
//
//  Created by DmitriiG on 28.02.2023.
//

import SwiftUI

struct Universe: Identifiable {
    var id: String { name }
    let name: String
}

struct MyUniverse: View {
    @State private var selectedUniverse: Universe?

    var body: some View {
        VStack {
            Text("Какая киновселенная Вам нравится больше?")
                .multilineTextAlignment(.center)
                .modifier(Title())
            Button("Marvel"){
                selectedUniverse = .init(name: "Marvel")
            }
            .padding(8)
            
            Button("DC") {
                selectedUniverse = .init(name: "DC")
            }
            .padding(8)
            
            Text(selectedUniverse?.name ?? "Ничего не нравится")
                .modifier(Main())
        }
        .padding(32)

        .alert(item: $selectedUniverse) { universe in
            Alert(title: Text(universe.name), message: Text("Спасибо за выбор"), dismissButton: .default(Text("Ok")))
        }
    }
}

