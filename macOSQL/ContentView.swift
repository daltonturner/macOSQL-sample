//
//  ContentView.swift
//  macOSQL
//
//  Created by Dalton Turner on 5/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Set<Int> = [0]
        var body: some View {
            NavigationView {
                List(selection: self.$selection) {
                    Section(header: Text("Employees")) {
                        Label("Employees", systemImage: "text.justify").tag(0)
                        Label("Locations", systemImage: "text.justify")
                    }

                    Section(header: Text("Jobs")) {
                        Label("Job_Codes", systemImage: "text.justify")
                        Label("Salary_Bands", systemImage: "text.justify")
                        Label("Historical_Salary_Bands", systemImage: "text.justify")
                    }
                }
                .listStyle(SidebarListStyle())
                .frame(minWidth: 150, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
                
                Finder()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
}

struct Finder: View {
    var body: some View {
        VStack() {
            TextEditView()
            QueryResultView()
        }
        
        HStack() {
        }
        .navigationTitle("macOSQL")
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "chevron.backward")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "chevron.forward")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: {}) {
                    Image(systemName: "playpause")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
