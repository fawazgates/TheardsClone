//
//  FeedView.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 5, id: \.self) { thread in
                        TreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh thread")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "arrow.circlepath")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
