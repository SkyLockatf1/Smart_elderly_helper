//
//  SwiftUIView.swift
//  Smart_Hospital_Bed
//
//  Created by Sky Lock on 19/4/2022.
//

import SwiftUI

struct Home: View {
    @State private var docAlert = false
    @State private var nurseAlert = false
    var body: some View {
        NavigationView{
            VStack{
                Image("user")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("User")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
            HStack{
                Button(action: {nurseAlert = true}){
                    Text("Nurse")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .padding()
                }
                    .frame(maxWidth: 200, minHeight: 90)
                    .background(Color.red)
                    .cornerRadius(10)
                    .alert("Successfully Call Nurse", isPresented: $nurseAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    Button(action: {}){
                        Text("Family Member")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(10)
                        
                    }
                    .frame(maxWidth: 200, minHeight: 90)
                    .background(Color.green)
                    .cornerRadius(10)
                }
                HStack{
                    Button(action: {}){
                        Text("Doctor Advice")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    .frame(maxWidth: 200, minHeight: 90)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Button(action: {}){
                        Text("Social Worker")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.brown)
                        
                    }
                    .frame(maxWidth: 200, minHeight: 90)
                    .background(Color.yellow)
                    .cornerRadius(10)
                }
                Button(action:{docAlert = true}){
                    Text("Emergency Call")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                .padding(.all)
                .frame(maxWidth: 300, minHeight: 80)
                .background(Color.red)
                .cornerRadius(10)
                .alert("Successfully Call Doc.", isPresented: $docAlert) {
                    Button("OK", role: .cancel) { }
                }
            }
            .padding()
            .frame(width: nil)
            .background(Color.white)
            .navigationTitle("Smart Elerly Helper")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environment(\.sizeCategory, .medium)
            .previewLayout(.device)
            .previewDevice("iPhone 13 mini")

    }
}
