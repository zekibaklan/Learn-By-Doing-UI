//
//  CardView.swift
//  Learn By Doing
//
//  Created by Zeki Baklan on 14.09.2023.
//

import SwiftUI

struct CardView: View {
    //    MARK: - PROPERTIES
    
    var gradient : [Color] = [Color("Color01"),Color("Color02")]
    
    //    MARK: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            VStack {
                
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                   
                
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: -218)
            
            Button {
                print("button was tapped")
            } label: {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    .accentColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                       
                }
                .padding(.vertical)
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)

        }
        
        
            .frame(width: 335,height: 545)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
            .cornerRadius(16)
            .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
