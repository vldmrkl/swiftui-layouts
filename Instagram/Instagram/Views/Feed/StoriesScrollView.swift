//
//  StoriesScrollView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-06.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct StoriesScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(0...10, id: \.self) { _ in
                    VStack {
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 80, height: 60)
                        Text("username").font(.footnote).frame(width: 80)
                    }
                }
            }
            .frame(height: 80)
            .padding(5)
        }
    }
}

struct StoriesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesScrollView()
            .frame(height: 90)
            .frame(maxWidth: .infinity)
    }
}
