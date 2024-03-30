//
//  ItemCard.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct ItemCard: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var cartManager = CartManager()
    let images: [String] = ["girl3", "slide1", "slide2"]
    
    var body: some View {
        VStack {
            //Header()
            ZStack {
                ImageSlideshowView(imageNames: images)
                
                //.edgesIgnoringSafeArea(.top)
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "cart")
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color("logoColor"))
                        .cornerRadius(10.0)
                        .padding(.top)
                        .padding(.bottom, -30)
                        .frame(width: 10, height: 100)
                }
                .padding()
                .padding(.horizontal)
                .cornerRadius(60.0, corners: .topLeft)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .edgesIgnoringSafeArea(.bottom)
            }
            DescriptionView()
            .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image("threeDot"))
        }
    }
}


struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard()
    }
}


struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

struct DescriptionView: View {
    @State private var isSelected = false
    @State private var quantity = 1
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Silk Blouse")
                .font(.title3)
                .fontWeight(.bold)
            Text("LKR 2300")
                .fontWeight(.bold)
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("Luxury Swedian Chair is a contemporary")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            Text("Size")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            
            
            HStack (alignment: .top) {
                Button(action: {
                    isSelected.toggle()
                }) {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(isSelected ? Color.blue : Color.gray)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text("S")
                                .foregroundColor(.white)
                        )
                }
                Button(action: {
                    isSelected.toggle()
                }) {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(isSelected ? Color.blue : Color.gray)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text("M")
                                .foregroundColor(.white)
                        )
                }
                Button(action: {
                    isSelected.toggle()
                }) {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(isSelected ? Color.blue : Color.gray)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text("L")
                                .foregroundColor(.white)
                        )
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Colors")
                        .fontWeight(.semibold)
                    HStack (alignment: .top) {
                        Button(action: {
                            //
                        }) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.red)
                                .frame(width: 30, height: 30)
                        }
                        Button(action: {
                            //
                        }) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                        }
                        Button(action: {
                            //
                        }) {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.black)
                                .frame(width: 30, height: 30)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                           Button(action: {
                               if quantity > 1 {
                                   quantity -= 1
                               }
                           }) {
                               Image(systemName: "minus")
                                   .padding(8)
                           }
                           .frame(width: 30, height: 30)
                           .overlay(
                               RoundedRectangle(cornerRadius: 15)
                                   .stroke(Color.black, lineWidth: 1)
                           )
                           .foregroundColor(.black)
                           
                           Text("\(quantity)")
                               .font(.title2)
                               .fontWeight(.semibold)
                               .padding(.horizontal, 8)
                           
                           Button(action: {
                               quantity += 1
                           }) {
                               Image(systemName: "plus")
                                   .padding(8)
                           }
                           .frame(width: 30, height: 30)
                           .overlay(
                               Circle()
                                   .stroke(Color.black, lineWidth: 1)
                           )
                       }
                
            }
        }
        .padding()
        .padding(.top)
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .offset(x: 0, y: -30.0)
    }
}


struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
        }
    }
}

struct ImageSlideshowView: View {
    let imageNames: [String]

    var body: some View {
        TabView {
            ForEach(imageNames, id: \.self) { imageName in
                Image(imageName)
                .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom)
    }
}


