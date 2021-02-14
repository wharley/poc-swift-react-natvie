//
//  ContentView.swift
//  poc-swift-react-natvie
//
//  Created by Wharley Ornelas Rocha on 2/13/21.
//

import SwiftUI

struct Contacts: Identifiable {
    let id: Int
    let name: String
    let course: String
    let color: Color
}

struct ContentView: View {
    var contactList = [
        Contacts(id: 1, name: "Wharley Ornelas", course: "JavaScript", color: .red),
        Contacts(id: 2, name: "João Rocha", course: "Java", color: .blue),
        Contacts(id: 3, name: "Iara Rocha", course: "JavaScript", color: .red),
        Contacts(id: 4, name: "Maria Rita Ornelas", course: "Banco de Dados", color: .green),
        Contacts(id: 5, name: "Angelica Ornelas", course: "Java", color: .blue)
    ]
        
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                HStack {
                    Text(contact.name)
                    Text(contact.course).foregroundColor(contact.color)
                }
                .onTapGesture {
                    print("row:", contact.name)
                    let showDetails = EventsList()
                    showDetails.showDetails(contact: contact)
                }
            }.navigationTitle("Students")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
