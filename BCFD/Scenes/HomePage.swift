//
//  HomePage.swift
//  BCFD
//
//  Created by Wayv on 6/11/25.
//

import SwiftUI

struct HomePage: View {
    var currentBotState = BotState.offline
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .shadow(radius: 10)
                    .frame(width: 400, height: 500)
                VStack {
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.linearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomLeading))
                        .padding([.bottom], 90)
                    Button(action: {
                        
                    }) {
                        Label("Login", systemImage: "power")
                            .padding()
                            .frame(width: 130, height: 140)
                    }
                    .buttonStyle(PlainButton())
                    .buttonStyle(.borderedProminent)
                    Button(action: {}) {
                        Label("Status", systemImage: "gear")
                            .padding()
                            .frame(width: 200, height: 90)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .controlSize(.large)
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

