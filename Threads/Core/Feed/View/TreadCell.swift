//
//  TreadCell.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import SwiftUI

struct TreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("fawaz gates")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10 m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.systemGray3))
                        }
                    }
                    
                    Text("Junior IOS Developer")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button {
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 0)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    TreadCell()
}
