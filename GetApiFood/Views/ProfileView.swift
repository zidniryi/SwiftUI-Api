//
//  ProfileView.swift
//  GetApiFood
//
//  Created by Zidni on 29/04/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Zidni Ridwan Nulmuarif")
                    .font(.title)
                
                HStack {
                    Text("Software Developer")
                        .font(.subheadline)
                    Spacer()
                    Text("Jakarta")
                        .font(.subheadline)
                }
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
