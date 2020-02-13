//
//  StoryView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-13.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var name: String = ""

    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("defaultPostImg")
                .resizable()
                .frame(maxHeight: .infinity)
            VStack(alignment: .trailing) {
                HStack() {
                    Circle().fill(Color.red)
                        .frame(width: 30, height: 30)

                    Text("username")
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                        .bold()

                    Text("2h")
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                        .opacity(0.7)

                    Spacer()

                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.white)
                            .opacity(0.7)
                    }
                }
                .padding(10)
                .padding(.top, 15)

                Spacer()

                HStack() {
                    TextField("Send Message", text: $name)
                        .frame(height: 35)
                        .foregroundColor(Color.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.clear)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white, lineWidth: 1)
                            )
                    )

                    Spacer()
                    Image(systemName: "paperplane")
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                    Image(systemName: "ellipsis")
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                }.padding(10)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
