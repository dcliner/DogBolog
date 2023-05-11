//
//  CardDetailView.swift
//  DogBlogApp
//
//  Created by Derefaa Cline on 5/9/23.
//

import SwiftUI

struct CardDetailView: View {
    let dogCard:DogCard
    var body: some View {
        VStack(alignment: .leading) {
            Image(dogCard.image)
                .resizable()
                .padding(.vertical, 11.0)
                .padding(.top, 16.0)
                .frame(width: 320, height:200)
            cardText.padding(.horizontal, 8)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(radius: 16)
        
    }
    var cardText: some View{
        VStack(alignment: .leading) {
            Text(dogCard.name)
                .font(.headline)
                .padding(0.3)
            Text(dogCard.description)
                .font(.body)
                .fontWeight(.ultraLight)
            
            
        }.padding(.bottom,12)
        
    }
    
}
struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(dogCard: DogCard.example)
    }
}
