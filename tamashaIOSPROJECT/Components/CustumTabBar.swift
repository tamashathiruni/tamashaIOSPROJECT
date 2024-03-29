//
//  CustumTabBar.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//
import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case magnifyingglass
    case bell
    case person
    
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab

    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }

    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .blue
        case .magnifyingglass:
            return .red
        case .bell:
            return .blue
        case .person:
            return Color("logoTextColor")
        }
    }

    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? tabColor : Color.gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(height: 60)
            .background(Color("logoColor"))
            .cornerRadius(10)
            .padding()
        }
    }
}

struct HouseView: View {
    var body: some View {
        MainView()
    }
}

struct SearchView: View {
    var body: some View {
        FilterView()
    }
}

struct PersonView: View {
    var body: some View {
        MyProfileView()
    }
}

struct FevouritesView: View {
    var body: some View {
        NotificationView()
    }
}


