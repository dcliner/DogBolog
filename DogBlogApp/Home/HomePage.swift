//
//  BlogPostList.swift
//  DogBlogApp
//
//  Created by Derefaa Cline on 5/9/23.
//

import SwiftUI

struct HomePage: View {
    @State private var dogCards: [DogCard] = [
        DogCard(image: "TinyPug", name: "Pug", description: "They are small and chubby", maindescription: "ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32."),
    DogCard(image: "Fluffy", name: "Fluffy", description: "So much hair but so very cute", maindescription: "ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.")
    
    ]
    var body: some View {
        VStack {
            Button {
                print("reload")
            } label: {
                Image(systemName: "repeat.circle.fill")
                    
            }.padding(.leading, 315.0)
                .font(.title)
            
                NavigationView {
                    
                    List(dogCards, id: \.id) { card in
                       
                            CardDetailView(dogCard: card)
                        
                        
                    }
                    .navigationTitle("Home")
                    }

            
        }
        
    }
    }


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
