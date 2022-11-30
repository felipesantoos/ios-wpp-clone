//
//  Header.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 28/11/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                HStack {
                    logo()
                    Spacer()
                    topHeaderGroupButtons()
                }
                .padding(.horizontal, 16.0)
                Spacer()
                tabButtons()
                    .padding(.horizontal, 16.0)
            }
            .frame(width: view.size.width, height: 84.0)
            .padding(.vertical, 16.0)
            .background(primaryGreenColor)
            .shadow(radius: 4.0)
        }
        .frame(maxHeight: 116.0)
    }
    
    func logo() -> some View {
        return Text("WhatsApp")
            .font(.custom("Arial", size: 28.0))
            .bold()
            .foregroundColor(.white)
    }
    
    func topHeaderGroupButtons() -> some View {
        return HStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 24.0))
                .foregroundColor(.white)
            Spacer()
                .frame(maxWidth: 24.0)
            Image(systemName: "ellipsis")
                .font(.system(size: 24.0))
                .rotationEffect(.degrees(90.0))
                .foregroundColor(.white)
        }
    }

    func tabButtons() -> some View {
        return HStack {
            Image(systemName: "camera.fill")
                .font(.system(size: 24.0))
                .foregroundColor(.white)
            Spacer()
            tabButtonWithNumber(text: "Conversas", hasCircledNumber: true, circledNumber: 5, isSelected: true)
            Spacer()
            Text("Status")
                .font(.custom("Arial", size: 18.0))
                .foregroundColor(.white)
            Spacer()
            tabButtonWithNumber(text: "Chamadas")
        }
    }
}

func tabButtonWithNumber(text: String, hasCircledNumber: Bool = false, circledNumber: Int = 0, isSelected: Bool = false) -> some View {
    let tabButton = ZStack {
        HStack {
            Text(text)
                .font(.custom("Arial", size: 18.0))
                .foregroundColor(.white)
            hasCircledNumber ? AnyView(ZStack {
                Circle()
                    .frame(width: 20.0)
                    .foregroundColor(.white)
                Text("\(circledNumber)")
                    .font(.custom("Arial", size: 14.0))
                    .foregroundColor(primaryGreenColor)
            }) : AnyView(EmptyView())
        }
        hasCircledNumber ? AnyView(
            Rectangle()
                .frame(height: 4.0)
                .foregroundColor(.white)
                .offset(y: 28.0)
        ) : AnyView(EmptyView())
    }
    
    if isSelected {
        return AnyView(tabButton.bold())
    }
    
    return AnyView(tabButton)
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
