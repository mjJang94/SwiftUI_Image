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
        
            
            //Resizable
//            HStack(spacing : 20){
//            Image("SwiftUI")
//            Image("SwiftUI")
//                .resizable()
//                .frame(width: 50, height: 50)
//            Image("SwiftUI")
//                .resizable()
//                .frame(width: 200, height: 200)
//            }
//
//            HStack(spacing: 20){
//            Image("SwiftUI")
//                .resizable(capInsets: .init(top: 0, leading: 20, bottom: 0, trailing: 0))
//                .frame(width: 150, height: 150)
//
//            Image("SwiftUI")
//                .resizable(resizingMode: .tile)
//                .frame(width: 150, height: 150)
//            }
            
            
            //ContentMode
//            HStack(spacing: 20){
//                Image("SwiftUI").resizable()
//                    .frame(width: 100, height: 150)
//
//                Image("SwiftUI").resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 150)
//
//                Image("SwiftUI").resizable()
//                    .scaledToFill()
//                    .frame(width: 100, height: 150)
//                    .clipped()
//
//            }
            
            //AspectRatio
//            HStack(spacing: 20) {
//                Image("SwiftUI").resizable().aspectRatio(CGSize(width: 1.6, height: 1),                   contentMode: .fit).frame(width: 150, height: 150)
//
//                Image("SwiftUI").resizable().aspectRatio(0.7, contentMode: .fill)
//                    .frame(width: 150, height: 150)
//                    .clipped()
//            }
            
            //ClipShape
//            HStack(spacing: 20) {
//                Image("SwiftUI").clipShape(Circle())
//                Image("SwiftUI").clipShape(
//                    Rectangle().inset(by:10)
//                )
//                Image("SwiftUI").clipShape(
//                    Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))
//                )
//            }
            
            //RenderingMode
            VStack{
                Image("SwiftUI")
                Image("SwiftUI").renderingMode(.original)
                Image("SwiftUI").renderingMode(.template)
            }
            .foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
