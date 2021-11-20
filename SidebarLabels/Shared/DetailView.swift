//
//  DetailView.swift
//  SidebarDefault
//
//  Created by Scott James Remnant on 6/15/21.
//

import SwiftUI

struct DetailView: View {
    @Binding var selection: ContentView.NavigationItem?
    
    var body: some View {
        VStack {
            switch selection {
            case .planes:
                Image(systemName: "airplane")
                Text("Planes")
            case .trains:
                Image(systemName: "tram")
                Text("Trains")
            case .automobiles:
                Image(systemName: "car")
                Text("Automobiles")
            case .none:
                Text("Placeholder")
            }
        }
        .font(.title)
        .symbolRenderingMode(.multicolor)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selection: .constant(.planes))
    }
}
