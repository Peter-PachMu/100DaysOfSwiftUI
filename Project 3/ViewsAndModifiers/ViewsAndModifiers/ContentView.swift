//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by PeterPachMu on 7/08/23.
//

import SwiftUI

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            //.foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

//3 Challenge

struct Title: ViewModifier  {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func bigTitle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
//    @State private var useRedText = false

    
        var body: some View {
            VStack(spacing: 10) {
                Text("Title")
                    .bigTitle()
                CapsuleText(text: "First")
                    .foregroundColor(.green)
                CapsuleText(text: "Second")
            }
        

//    var motto1: some View {
//        Text("Draco dormiens")
//
//    }
//
//
//
//    let motto2 = Text("nunquam titillandus")
//
//    var body: some View {
//        VStack{
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.blue)
//        }
        
        
//        Button("Hello World") {
//            // flip the Boolean between true and false
//            useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red : .blue)
    
//        VStack {
//            Text("Gryffindor")
//                //.font(.largeTitle)
//                .blur(radius: 0)
//            Text("Hufflepuff")
//            Text("Ravenclaw")
//            Text("Slytherin")
//        }
//        //.font(.title)
//        .blur(radius: 5)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
