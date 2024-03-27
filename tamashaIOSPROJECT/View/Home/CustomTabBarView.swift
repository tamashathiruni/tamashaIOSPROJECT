import SwiftUI

struct CustomTabBarView: View {
    
    @State private var selectedTab: Tab = .house
    
    var body: some View {
        NavigationView {
            VStack {
                Header()
                Spacer()
                VStack(spacing: 0.0) {
                    
                    switch selectedTab {
                    case .house:
                        HouseView()
                    case .magnifyingglass:
                        SearchView()
                    case .heart:
                        FevouriteView()
                    case .person:
                        PersonView()
                    }
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
            .padding(.bottom, -30)
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView()
    }
}
