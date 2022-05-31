//
//  QueryResultView.swift
//  macOSQL
//
//  Created by Dalton Turner on 5/30/22.
//

import Foundation
import SwiftUI

struct QueryResultView: View {

    struct Person: Identifiable {
        let givenName: String
        let familyName: String
        let id = UUID()
    }

    private var people = [
        Person(givenName: "Juan", familyName: "Chavez"),
        Person(givenName: "Mei", familyName: "Chen"),
        Person(givenName: "Tom", familyName: "Clark"),
        Person(givenName: "Gita", familyName: "Kumar"),
    ]

    @State private var selectedPeople = Set<Person.ID>()

    var body: some View {
        Table(people, selection: $selectedPeople) {
            TableColumn("given_name", value: \.givenName)
            TableColumn("family_name", value: \.familyName)
        }

        Text("\(selectedPeople.count) row(s) selected")
    }
}
