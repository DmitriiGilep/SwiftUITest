//
//  TestViews.swift
//  SwiftUITest
//
//  Created by DmitriiG on 28.02.2023.
//

import SwiftUI

struct TestViews: View {
    
    @State private var isPushEnabled = false
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $isPushEnabled) {
                        Text("Включить нотификации")
                    }
                }
                Section {
                    VStack {
                        Slider(value: $speed, in: 0...100) { editing in
                            isEditing = editing
                        }
                        Text("\(speed)")
                            .foregroundColor(isEditing ? .red: .green)
                    }
                    .padding(16)
                }
                
                .navigationTitle("Настройки")
            }
        }
    }
}
