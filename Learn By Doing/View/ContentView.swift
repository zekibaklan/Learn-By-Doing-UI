//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Zeki Baklan on 14.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    
//    MARK: - CONTENT
    
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            
            HStack(alignment: .center,spacing: 20) {
                ForEach(0 ..< 5) { item in
                    CardView()
                }
                
                
        }//:HSTACK
            .padding(20)

            
        }
        
     
    }
}
//    MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
