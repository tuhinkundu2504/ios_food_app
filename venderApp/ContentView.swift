//
//  ContentView.swift
//  venderApp
//
//  Created by Tuhin Kundu on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SplashScreen()
    }
}
struct Home:View {
    var body: some View {
        Text("Redirect to home screen ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
        Text("This is the first Screen").font(.footnote).fontWeight(.light)
       
    }
}

struct SplashScreen:View {
    var body: some View {
        ZStack {
            CustomSplashScreen(image: "image1", mainTitle: "Order", subTitle: "Indian Food", descText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        }
    }
}

#Preview {
    ContentView()
}
var totalPages = 3;

struct CustomSplashScreen: View {
    var image: String
    var mainTitle: String
    var subTitle: String
    var descText: String
    
    var body: some View {
        VStack {
            HStack{
                
                Text("Zoomato").font(.system(size: 30)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                Spacer()
                HStack {
                    
                    Text("Skip").font(.title3).fontWeight(.light)
                }
            }.padding().frame(height: 50).background(.red)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Image(image).resizable().aspectRatio(contentMode: .fit).padding(.horizontal,20)
            HStack {
                Text(mainTitle).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.red)
                Text(subTitle).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.semibold).foregroundColor(.yellow)
            }
            Text(descText).font(.system(size: 18)).fontWeight(.light).padding()
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Button(action: {}, label: {
                Text("Next").font(.system(size: 20))
                    .fontWeight(.semibold).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity).padding().foregroundColor(.white).background(.red).cornerRadius(40)
            }).padding()
        }
    }
}
