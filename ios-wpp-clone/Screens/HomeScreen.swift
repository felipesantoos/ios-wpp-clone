//
//  HomeScreen.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 28/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var conversationList: [Conversation] = conversationListExample
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                List {
                    ForEach(conversationList) { conversation in
                        ConversationItem(conversation: conversation)
                            .listRowInsets(EdgeInsets())
                            .listRowSeparator(.hidden)
                    }
                    .padding(.top, 16.0)
                }
                .listStyle(PlainListStyle())
            }
            .offset(y: appBarHeight)
            AppBar()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
