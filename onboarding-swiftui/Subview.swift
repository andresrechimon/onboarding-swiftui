//
//  Subview.swift
//  onboarding-swiftui
//
//  Created by Andrés Rechimon on 07/05/2024.
//

import SwiftUI

struct Subview: View {
    var imageString: String
    
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "first")
    }
}
