//
//  CommentView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-13.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct CommentView: View {
    @State private var liked = false
    var comment: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Circle().fill(Color.green)
                    .frame(width: 25, height: 25)

                Text("username2").font(.system(size: 14)).bold() + Text(" ") + Text(comment)
                    .font(.system(size: 14))

                Spacer()

                Image(systemName: liked ? "heart.fill" : "heart")
                    .foregroundColor(liked ? Color.red : Color.gray)
                    .onTapGesture {
                        self.liked.toggle()
                }
            }

            Text("1 hour ago")
                .font(.system(size: 12))
                .foregroundColor(Color.gray)
                .padding(.leading, 35)
                .padding(.top, -5)
        }.padding(5)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(comment: "Some text")
    }
}
