//
//  FeedView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-06.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StoriesScrollView()
                    .frame(height: 90)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 5)

                Divider()

                ForEach(0...10, id: \.self) { _ in
                    PostView()
                }
                
            }
            .navigationBarTitle(Text("Instagram"), displayMode: .inline)
            .navigationBarItems(
                leading: Image(systemName: "camera"),
                trailing: Image(systemName: "paperplane")
            )
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
