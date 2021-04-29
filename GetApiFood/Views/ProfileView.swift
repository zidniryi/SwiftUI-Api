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
                .frame(height: 400)
            
            CircleImageView()
                .offset(y: -220)
                .padding(.bottom, -200)
            
            VStack(alignment: .leading) {
                Text("Zidni Ridwan Nulmuarif")
                    .font(.title)
                
                HStack {
                    Text("Software Developer")
                        .font(.subheadline)
                    Spacer()
                    Text("Indonesia")
                        .font(.subheadline)
                }
                
                ScrollView{
                    Divider()
                   Text("gitbub : Zidniryi")
                       .foregroundColor(Color.black)
                    Divider()
                   Text("email : zidniryi123@gmail.com")
                       .foregroundColor(Color.black)
                    Divider()
                   Text("ig : @zidniryi")
                       .foregroundColor(Color.black
                   )
                   Divider()
                   Text("linkedin : Zidni Ridwan Nulmuarif")
                       .foregroundColor(Color.black
                   )
                   
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
