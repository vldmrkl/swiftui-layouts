//
//  PostView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-06.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack {
                Circle().fill(Color.yellow)
                    .frame(width: 25)
                Text("username")
                    .font(.system(size: 14))
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(5)
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            //            .background(Color.green)

            Image("defaultPostImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)

            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Image(systemName: "suit.heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                }
                .padding(.bottom, 5)

                Text("Liked by user1, user2 and others").font(.footnote)

                Text("username").font(.footnote).bold() + Text(" ") + Text("Photo description")
                    .font(.footnote)

                Text("View all 99 comments")
                    .font(.footnote)
                    .foregroundColor(Color.gray)

                Text("1 hour ago")
                    .font(.system(size: 12))
                .foregroundColor(Color.gray)

            }
            .padding(10)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .frame(height: 400)
    }
}
