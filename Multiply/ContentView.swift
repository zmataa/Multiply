//
//  ContentView.swift
//  Multiply
//
//  Created by Zane Matarieh on 9/4/24.
//

import SwiftUI

struct ContentView: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var prod = 0
    @State var imag = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Enter a Number" , text:$num1)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30)
                .padding()
            
                        Text("X")
                            .padding()
                        TextField("Enter a Number" , text:$num2)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                            .frame(width: 200, height: 30)
                            .padding()
                        
                        Button("Calculate") {
                            if let val1 = Int(num1) {
                                if let val2 = Int(num2){
                                    prod = val1 * val2
                                    if (prod == 64){
                                        imag = "shyguy2"
                                    }
                                    else if (prod % 2 == 1){
                                        imag = "24"
                                    }
                                    else{
                                        imag = "25"
                                    }
                                }
                            }
                        }
                    }
                    Text("\(prod)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    Image(imag)
                        .padding()
            Spacer()
        }
    }
    
    #Preview {
        ContentView()
    }

