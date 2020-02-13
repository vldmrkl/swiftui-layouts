//
//  CommentsView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-13.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct CommentsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var comments = [
        "Cool Pic!",
        "🔥🔥🔥",
        "I like it",
    ]


    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Circle().fill(Color.yellow)
                        .frame(width: 25, height: 25)

                    Text("username").font(.system(size: 14)).bold() + Text(" ") + Text("Photo description")
                        .font(.system(size: 14))
                }

                Text("1 hour ago")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
                    .padding(.leading, 35)
            }.padding(5)

            Divider()

            ForEach(comments, id: \.self) { comment in
                CommentView(comment: comment)
            }

            Spacer()
        }
        .navigationBarTitle(Text("Comments"), displayMode: .inline)
        .navigationBarItems(
            leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
            },
            trailing: Image(systemName: "paperplane"))
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
