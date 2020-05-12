//
//  ContentView.swift
//  SwiftUI_Image
//
//  Created by Paymint on 2020/05/12.
//  Copyright © 2020 Paymint. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
        
            
            HStack(spacing : 20){
            Image("SwiftUI")
            Image("SwiftUI")
                .resizable()
                .frame(width: 50, height: 50)
            Image("SwiftUI")
                .resizable()
                .frame(width: 200, height: 200)
            }
            
            HStack(spacing: 20){
            Image("SwiftUI")
                .resizable(capInsets: .init(top: 0, leading: 20, bottom: 0, trailing: 0))
                .frame(width: 150, height: 150)
                
            Image("SwiftUI")
                .resizable(resizingMode: .tile)
                .frame(width: 150, height: 150)
            }
            
            HStack(spacing: 20){
                Image("SwiftUI").resizable()
                    .frame(width: 100, height: 150)
                
                Image("SwiftUI").resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                
                Image("SwiftUI").resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 150)
                    .clipped()
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
