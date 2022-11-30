//
//  DefaultConversationImage.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 30/11/22.
//

import SwiftUI

struct DefaultConversationImage: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(maxWidth: 64.0, maxHeight: 64.0)
                .foregroundColor(bgContactOrGroupColor)
            Image(systemName: "person.fill")
                .foregroundColor(.white)
                .font(.system(size: 32.0))
        }
    }
}

struct DefaultConversationImage_Previews: PreviewProvider {
    static var previews: some View {
        DefaultConversationImage()
    }
}
