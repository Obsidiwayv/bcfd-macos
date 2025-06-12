//
//  HomePage.swift
//  BCFD
//
//  Created by Wayv on 6/11/25.
//

import SwiftUI

struct HomePage: View {
    var currentBotState = BotState.offline
    @State var tokenInput: String = "Token"
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .shadow(radius: 1)
                    .frame(width: 300, height: 380)
                VStack {
                    Text("Bot")
                        .background(
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundStyle(.linearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomLeading)))
                        .font(.system(size: 30))
                        .padding([.bottom], 60)
                    
                    TextField("TokenInput", text: $tokenInput)
                        .padding()
                        .frame(width: 240, height: 50)
                        .textFieldStyle(.plain)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .foregroundColor(.gray)
                    
                    Button(action: {
                        
                    }) {
                        Label("Login", systemImage: "power")
                            .frame(width: 260, height: 50)
                            .font(.system(size: 15))
                    }
                    .buttonStyle(UIButtonStyle(bgColor: Color("backgroundPrimary")))
                    
                    Button(action: {}) {
                        Label("Status", systemImage: "gear")
                            .frame(width: 260, height: 50)
                            .font(.system(size: 15))
                    }
                    .buttonStyle(UIButtonStyle(bgColor: Color("base"), fgColor: .black))
                }
            }
        }
        .padding()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

