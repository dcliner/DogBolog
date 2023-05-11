//
//  HomePage.swift
//  DogBlogApp
//
//  Created by Derefaa Cline on 5/9/23.
//

import SwiftUI

struct BlogDetailCard: View {
    let dogCard:DogCard
    var body: some View {
        VStack {
            Image(dogCard.image)
                .resizable()
                .padding(.vertical)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 390, height: 200)
            Text(dogCard.description)
                .font(.title2)
                .fontWeight(.heavy)
                .bold()
                .padding(.leading, -1.0)
                .frame(width: 350,height: 30, alignment: .leading)
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.1)
                
            Text("Click and see")
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.leading)
                .frame(width: 350,height: 20, alignment: .leading)
                .padding()
            
                
                
        }
        
    }
}

struct BlogDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        BlogDetailCard(dogCard: DogCard.example)
    }
}
