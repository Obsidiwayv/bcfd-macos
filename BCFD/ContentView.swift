//
//  ContentView.swift
//  BCFD
//
//  Created by Wayv on 6/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var searchBarString = "Search"
    var body: some View {
        HStack {
            HomePage()
            Spacer()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.white)
                        .shadow(radius: 1)
                    VStack {
                        HStack {
                            Text("Commands")
                                .font(.system(size: 20))
                                .padding()
                                .foregroundColor(.black)
                            Spacer()
                            Button(action: {}) {
                                Label("Add Command", systemImage: "plus")
                                    .padding()
                            }
                            .padding()
                            .buttonStyle(UIButtonStyle(bgColor: Color("backgroundPrimary")))
                        }
                        TextField("Search Bar", text: $searchBarString)
                            .padding()
                            .textFieldStyle(.plain)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                            .foregroundColor(.gray)
                            .frame(width: 400, height: 100)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .shadow(radius: 1)
                    .frame(height: 50)
            }
        }
        .padding()
        .frame(minWidth: 800, minHeight: 600)
        .background(Color.white)
        .tint(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
