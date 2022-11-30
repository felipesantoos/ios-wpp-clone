//
//  HomeScreen.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 28/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Header()
            VStack {
                contactOrGroup(
                    contactOrGroupName: "Gabriel de Jesus",
                    dateLastMessage: "15:14",
                    lastMessage: "Você: Prefiro Flutter à SwiftUI!",
                    showCheckmark: true
                )
                contactOrGroup(
                    contactOrGroupName: "Lucas Rodrigues",
                    dateLastMessage: "Ontem",
                    lastMessage: "Lucas: Felipe, meu amigo do peito..."
                )
            }
            .padding(.vertical, 8.0)
            Spacer()
        }
    }
    
    func contactOrGroupDefaultImage() -> some View {
        return ZStack {
            Circle()
                .frame(maxWidth: 64.0, maxHeight: 64.0)
                .foregroundColor(bgContactOrGroupColor)
            Image(systemName: "person.fill")
                .foregroundColor(.white)
                .font(.system(size: 32.0))
        }
    }
        
    func contactOrGroup(contactOrGroupName: String, dateLastMessage: String, lastMessage: String, showCheckmark: Bool = false) -> some View {
            return HStack(alignment: .top) {
                contactOrGroupDefaultImage()
                VStack(alignment: .leading) {
                    HStack {
                        Text(contactOrGroupName)
                            .font(.custom("Arial", size: 18.0))
                            .bold()
                        Spacer()
                        Text(dateLastMessage)
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 1.0)
                    HStack {
                        showCheckmark ?
                            AnyView(Image(systemName: "checkmark")
                                .foregroundColor(.gray)) :
                            AnyView(EmptyView())
                        Text(lastMessage)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.vertical, 4.0)
            .padding(.horizontal, 16.0)
        }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
