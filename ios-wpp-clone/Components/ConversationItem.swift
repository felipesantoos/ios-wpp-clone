//
//  Conversation.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 30/11/22.
//

import SwiftUI

struct ConversationItem: View {
    var conversation: Conversation

    var body: some View {
        HStack(alignment: .top) {
            DefaultConversationImage()
            VStack(alignment: .leading) {
                HStack {
                    Text(conversation.name)
                        .font(.custom("Arial", size: 18.0))
                        .bold()
                    Spacer()
                    Text(conversation.lastMessageTime)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 1.0)
                HStack {
                    conversation.showCheckmark ?
                        AnyView(Image(systemName: "checkmark")
                            .foregroundColor(.gray)) :
                        AnyView(EmptyView())
                    Text(conversation.lastMessage)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(.vertical, 4.0)
        .padding(.horizontal, 16.0)
    }
}

struct ConversationItem_Previews: PreviewProvider {
    static var previews: some View {
        ConversationItem(
            conversation: Conversation(
                name: "Gabriel de Jesus",
                lastMessageTime: "12:00",
                lastMessage: "Good morning!",
                showCheckmark: false
            )
        )
    }
}
