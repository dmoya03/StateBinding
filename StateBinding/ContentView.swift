//
//  ContentView.swift
//  StateBinding
//
//  Created by Daniel Moya on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = true
    @State private var numero = 0
    @State private var numeroDonate = 123
    @State private var numeroDonate2 = "0"
    @State private var x = "Titulo"
    
    var body: some View {
        VStack {
            Text(x).font(.largeTitle)
            HStack{
                Button(action:{
                    show.toggle()
                    if show {
                        numero -= 1
                    } else {
                        numero += 1
                    }
                }){
                    if show {
                        Image(systemName: "heart").font(.largeTitle).foregroundColor(.red)
                    } else {
                        Image(systemName: "heart.fill").font(.largeTitle).foregroundColor(.red)
                    }
                }
                Text(String(numero)).bold()
                Button(action:{
                    if numeroDonate2.isEmpty{
                        print("error")
                    } else {
                        numeroDonate = numeroDonate + Int(numeroDonate2)!
                    }
                }){
                    Image(systemName: "dollarsign.circle.fill").font(.largeTitle).foregroundColor(.yellow)
                }
                Text(String(numeroDonate)).font(.largeTitle)
            }
            TextField("Cantidad a Donar", text: $numeroDonate2).keyboardType(.numberPad)
                .multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Titulo", text: $x).textFieldStyle(RoundedBorderTextFieldStyle())
            vista2(x: $x)
            vista3(x: $x)
        }
        
    }
}

struct vista2: View {
    @Binding var x: String
    var body: some View{
        Text(x).font(.largeTitle).foregroundColor(.red)
    }
}

struct vista3: View {
    @Binding var x: String
    var body: some View{
        Text(x).font(.largeTitle).foregroundColor(.red)
    }
}

#Preview {
    ContentView()
}
