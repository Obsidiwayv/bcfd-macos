//
//  ContentView.swift
//  BCFD
//
//  Created by Wayv on 6/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            HomePage()
            Spacer()
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
