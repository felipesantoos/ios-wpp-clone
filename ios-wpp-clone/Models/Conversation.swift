//
//  Conversation.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 30/11/22.
//

import Foundation

struct Conversation: Identifiable {
    var id = UUID()
    var name: String
    var lastMessageTime: String
    var lastMessage: String
    var showCheckmark: Bool
}
