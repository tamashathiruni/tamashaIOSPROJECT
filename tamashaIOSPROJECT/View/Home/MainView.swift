//
//  MainView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC04 on 2024-03-27.
//
import SwiftUI

struct MainView: View {
    @State private var selectedIndex: Int = 0
    @State private var isShowingMens: Bool = false
    @State private var isShowingWomens: Bool = false
    
    private let categories = ["All", "Mens", "Womens", "Shirts", "Blouse", "Trousers"]
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                
                ZStack(alignment: .leading) {
                    VStack {
                        VStack(alignment: .center, spacing: 5) {
                            Text("For Your Everyday Look ")
                                .foregroundColor(.black)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("with ")
                                .font(.title2)
                                .fontWeight(.bold)
                            + Text("MOANA")
                                .foregroundColor(Color("logoTextColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, -10)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< categories.count) { i in
                                    CategoryView(isActive: i == selectedIndex, text: categories[i])
                                        .onTapGesture {
                                            selectedIndex = i
                                            navigate(selectedIndex: i)
                                        }
                                }
                            }
                            .padding()
                            .padding(.bottom, -10)
                        }
                        
                        Text("Popular")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .padding(.horizontal)
                            .padding(.bottom, -10)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(productsPopular) { product in
                                    PopularItemView(image: Image(product.image), size: 180)
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                        .padding(.bottom, -20)
                        
                        Text("Best Selling")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .padding(.horizontal)
                            .padding(.bottom, -10)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(productsBestSell) { product in
                                    BestSellItemView(image: Image(product.image), size: 180)
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isShowingMens, content: {
            ShopMenView()
                .navigationViewStyle(StackNavigationViewStyle())
        })
        .fullScreenCover(isPresented: $isShowingWomens, content: {
            ShopWomenView()
                .navigationViewStyle(StackNavigationViewStyle())
        })
    }
    
    private func navigate(selectedIndex: Int) {
        switch categories[selectedIndex] {
        case "Mens":
            isShowingMens = true
        case "Womens":
            isShowingWomens = true
        default:
            break
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("logoTextColor"))
            
            if isActive {
                Color("logoTextColor")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct PopularItemView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)

            Text("Floral Dress")
                .fontWeight(.bold)

            Text("LKR 2500")
        }
        .frame(width: size)
        .padding(.horizontal, -20)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

struct BestSellItemView: View {
    let image: Image
    let size: CGFloat
    //let name:
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)

            Text("Floral Dress")
                .fontWeight(.bold)

            Text("LKR 2500")
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        .padding(.horizontal, -18)
    }
}


