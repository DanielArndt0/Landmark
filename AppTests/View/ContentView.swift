//
//  ContentView.swift
//  AppTests
//
//  Created by Daniel on 01/09/22.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
