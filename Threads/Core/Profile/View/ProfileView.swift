//
//  ProfileView.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidht: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // MARK: BIO AND STATS
            VStack(spacing: 30) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        //MARK: fullname and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("fawaz")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("fawazgates")
                                .font(.subheadline)
                        }
                        
                        Text("Junior IOS Developer")
                            .font(.footnote)
                        
                        Text("1 Followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                //MARK: user content list
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidht, height: 1)
                                        .matchedGeometryEffect(id: "Item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidht, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0 ... 5, id: \.self) { trhead in
                            TreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
