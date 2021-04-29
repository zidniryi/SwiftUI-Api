//
//  CircleImageView.swift
//  GetApiFood
//
//  Created by Zidni on 29/04/21.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("me")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 8)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
