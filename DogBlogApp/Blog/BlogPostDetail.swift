//
//  BlogPostDetail.swift
//  DogBlogApp
//
//  Created by Derefaa Cline on 5/9/23.
//

import SwiftUI

struct BlogPostDetail: View {
   // let dogBlogDetails : DogBlog
    let dogCardDetails : DogCard
    var body: some View {
        VStack {
            Image(dogCardDetails.image)
            Text(dogCardDetails.name)
                .font(.headline)
            Text(dogCardDetails.maindescription)
        }
    }
}

struct BlogPostDetail_Previews: PreviewProvider {
    static var previews: some View {
        BlogPostDetail(dogCardDetails: DogCard.example)
    }
}
