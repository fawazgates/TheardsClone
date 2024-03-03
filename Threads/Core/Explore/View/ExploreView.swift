//
//  ExploreView.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchTest = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 5, id: \.self) {user in
                        UserCell()
                        
                        Divider()
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchTest, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
