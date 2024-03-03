//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by User on 04/03/24.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
