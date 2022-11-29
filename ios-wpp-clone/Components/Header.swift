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
            .frame(width: view.size.width, height: 96.0)
            .padding(.vertical, 16.0)
            .background(primaryGreenColor)
        }
    }
    
    func logo() -> some View {
        return Text("WhatsApp")
            .font(.custom("Arial", size: 28.0))
            .bold()
            .foregroundColor(.white)
    }
    
    func topHeaderGroupButtons() -> some View {
        return HStack {
            Image(systemName: "globe")
                .font(.system(size: 24.0))
                .foregroundColor(.white)
            Image(systemName: "house")
                .font(.system(size: 24.0))
                .foregroundColor(.white)
        }
    }

    func tabButtons() -> some View {
        return HStack {
            Image(systemName: "camera.fill")
                .font(.system(size: 24.0))
                .foregroundColor(.white)
            Spacer()
            tabButton(text: "Conversas", circledNumber: 5)
            Spacer()
            Text("Status")
                .font(.custom("Arial", size: 20.0))
                .foregroundColor(.white)
            Spacer()
            Text("Chamadas")
                .font(.custom("Arial", size: 20.0))
                .foregroundColor(.white)
        }
    }
}

func tabButton(text: String, circledNumber: Int) -> some View {
    return ZStack {
        HStack {
            Text(text)
                .font(.custom("Arial", size: 20.0))
                .foregroundColor(.white)
                .bold()
            ZStack {
                Circle()
                    .frame(width: 24.0)
                    .foregroundColor(.white)
                Text("\(circledNumber)")
                    .foregroundColor(primaryGreenColor)
            }
        }
        Rectangle()
            .frame(height: 4.0)
            .foregroundColor(.white)
            .offset(y: 28.0)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
