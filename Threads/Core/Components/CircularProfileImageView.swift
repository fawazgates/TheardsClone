//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("fawaz")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
