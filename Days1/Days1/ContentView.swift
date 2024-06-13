//
//  ContentView.swift
//  Days1
//
//  Created by Palatip Jantawong on 13/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var emailINP = ""
    @State private var passwordINP = ""
    
    var body: some View {
        ZStack{
            Color("bg")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 32, content: {
                HStack {
                    Label("Back", systemImage: "arrow.left")
                        .font(.system(size: 16, weight: .regular))
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("APE Community")
                        .font(.system(size: 18, weight: .semibold))
                    Text("Sign Up")
                        .font(.system(size: 60, weight: .semibold))
                    Text("Become part of our community.")
                        .font(.system(size: 18, weight: .regular))
                })
                
                Rectangle()
                    .frame(width: 360, height: 1)
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Email")
                        .font(.system(size: 14, weight: .medium))
                    TextField("John Doe", text: $emailINP)
                        .padding()
                        .frame(width: 360, height: 40)
                        .foregroundStyle(.gray)
                        .background(Color("font"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Password")
                        .font(.system(size: 14, weight: .medium))
                    SecureField("Password", text: $passwordINP)
                        .padding()
                        .frame(width: 360, height: 40)
                        .foregroundStyle(.gray)
                        .background(Color("font"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
                Button(action: {
                    
                }, label: {
                    Rectangle()
                        .frame(width: 360, height: 40)
                        .foregroundStyle(Color("button"))
                        .clipShape(
                                RoundedRectangle(cornerRadius: 8)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.white, lineWidth: 1)
                                .overlay(content: {
                                    Text("Sign Up")
                                        .font(.system(size: 16, weight: .bold))
                                })
                        )
                })
                
                Rectangle()
                    .frame(width: 360, height: 1)
                
                VStack(alignment: .center, spacing: 8, content: {
                    HStack {
                        Spacer()
                        Text("Socials Sign Up")
                            .font(.system(size: 18, weight: .semibold))
                        Spacer()
                    }
                    HStack(alignment: .center, spacing: 12, content: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 112, height: 44)
                            .overlay {
                                Image("google")
                            }
                            
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 112, height: 44)
                            .overlay {
                                Image("Facebook")
                            }
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 112, height: 44)
                            .overlay {
                                Image("apple")
                            }
                        
                    })
                })
                
                Rectangle()
                    .frame(width: 360, height: 1)
                
                Spacer()
            })
            .foregroundStyle(Color("font"))
            .padding(16)
        }
    }
}

#Preview {
    ContentView()
}
