//
//  Sidebar.swift
//  Sidebar
//
//  Created by Scott James Remnant on 8/29/21.
//

import SwiftUI

struct Sidebar: View {
    enum NavigationItem: Int {
        case planes
        case trains
        case automobiles
    }

    @SceneStorage("selection") var savedSelection: NavigationItem?
    var selection: Binding<NavigationItem?> {
        Binding {
            print("GET \(savedSelection)")
            return savedSelection //?? .planes
        } set: {
            print("SET \($0)")
            savedSelection = $0
        }
    }

    var body: some View {
        List {
            NavigationLink(tag: NavigationItem.planes, selection: selection) {
                DetailView(title: "Planes")
            } label: {
                Label("Planes", systemImage: "airplane")
            }

            NavigationLink(tag: NavigationItem.trains, selection: selection) {
                DetailView(title: "Trains")
            } label: {
                Label("Trains", systemImage: "tram")
            }

            NavigationLink(tag: NavigationItem.automobiles, selection: selection) {
                DetailView(title: "Automobiles")
            } label: {
                Label("Automobiles", systemImage: "car")
            }
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
