//
//  LoginView.swift
//  SwiftUITest
//
//  Created by DmitriiG on 28.02.2023.
//

import SwiftUI


struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ScrollView {
            // общий стэк
            VStack {
                
                Spacer()
                    .frame(height: 120)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                
                Spacer()
                    .frame(height: 120)
                
                // стэк ввода логина и пароля
                HStack {
                   Spacer()
                        .frame(width: 16)
                    // стэк полей логина и пароля
                    VStack {
                        // стэк логина
                        HStack {
                            Spacer()
                                .frame(width: 10)
                            TextField("Email or phone", text: $username)
                                .modifier(Main())
                        }
                        .frame(height: 50)
                        .border(.gray,width: 1)
                        
                        // стэк пароля
                        HStack {
                            Spacer()
                                .frame(width: 10)
                            TextField("Password", text: $password)
                                .modifier(Main())
                        }
                        .frame(height: 50)
                    }
                    .background(Color(red: 242/255, green: 242/255, blue: 247/255, opacity: 100))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .cornerRadius(10)
               
                    Spacer()
                        .frame(width: 16)
                }
                
                
                Spacer()
                    .frame(height: 16)
                
                // общий стэк кнопки лог ин
                HStack {
                    Spacer()
                        .frame(width: 16)
                    
                    // стэк кнопки лог ин
                    HStack {
                        Spacer()
                            .frame(width: 10)
                        Button("Log in") {
                            ()
                        }
                        .modifier(Main())
                        .foregroundColor(.white)
                        
                        Spacer()
                            .frame(width: 10)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color(red: 72/255, green: 134/255, blue: 203/255, opacity: 100))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .cornerRadius(10)
                    
                    Spacer()
                        .frame(width: 16)
                    
                }
                
            }
            
        }
            
        }
        
       
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
