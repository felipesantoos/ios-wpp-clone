//
//  Header.swift
//  ios-wpp-clone
//
//  Created by Felipe Santos on 28/11/22.
//

import SwiftUI

struct AppBar: View {
    let headerHeight: Double = 84.0

    var body: some View {
        GeometryReader { view in
            VStack {
                HStack {
                    appLogo()
                    Spacer()
                    appActionButtonList()
                }
                .padding(.horizontal, 16.0)
                Spacer()
                appTabBarButtonList()
                    .padding(.horizontal, 16.0)
            }
            .frame(width: view.size.width, height: 84.0)
            .padding(.vertical, 16.0)
            .background(primaryGreenColor)
            .background(
                RoundedRectangle(cornerRadius: 0.0)
                    .offset()
                    .shadow(radius: 4.0)
            )
        }
        .frame(maxHeight: appBarHeight)
    }
    
    func appLogo() -> some View {
        return Text(appName)
            .font(.custom("Arial", size: 28.0))
            .bold()
            .foregroundColor(.white)
    }
    
    func appActionButtonList() -> some View {
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

    func appTabBarButtonList() -> some View {
        return HStack {
            Image(systemName: "camera.fill")
                .font(.system(size: 20.0))
                .foregroundColor(.white)
            Spacer()
            tabBarButtonItem(
                text: conversations,
                hasCircledNumber: true,
                circledNumber: 5,
                isSelected: true
            )
            Spacer()
            tabBarButtonItem(text: status, hasCircleMark: true)
            Spacer()
            tabBarButtonItem(text: calls, hasCircledNumber: true, circledNumber: 1)
        }
    }
}

func tabBarButtonItem(
    text: String,
    hasCircledNumber: Bool = false,
    circledNumber: Int = 0,
    hasCircleMark: Bool = false,
    isSelected: Bool = false
) -> some View {
    let tabButton = ZStack {
        HStack {
            Text(text)
                .font(.custom("Arial", size: 18.0))
                .foregroundColor(.white)
            hasCircledNumber ? AnyView(
                ZStack {
                    Circle()
                        .frame(width: 20.0)
                        .foregroundColor(.white)
                    Text("\(circledNumber)")
                        .font(.custom("Arial", size: 14.0))
                        .foregroundColor(primaryGreenColor)
                }
            ) : hasCircleMark ? AnyView(
                Circle()
                    .frame(width: 8.0)
                    .foregroundColor(.white)
            ) :
            AnyView(
                EmptyView()
            )
        }
        isSelected ? AnyView(
            Rectangle()
                .frame(height: 4.0)
                .foregroundColor(.white)
                .offset(y: 25.0)
        ) : AnyView(
            EmptyView()
        )
    }
    
    if isSelected {
        return AnyView(tabButton.bold())
    }
    
    return AnyView(tabButton)
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        AppBar()
    }
}
