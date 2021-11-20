//
//  DetailView.swift
//  SidebarDefault
//
//  Created by Scott James Remnant on 6/15/21.
//

import SwiftUI

struct DetailView: View {
    var title: String
    
    var body: some View {
        Text("\(title)")
            .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Hello")
    }
}
