//
//  ContentView.swift
//  newInformation
//
//  Created by SUHAIL  on 28/02/22.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        
        ZStack {
            if show == false {
                VStack() {
                    Text("Today")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(spacing: 0) {
                        Text("App of the Day".uppercased()).font(.largeTitle).bold()
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: 150, maxHeight: .infinity, alignment: .bottomLeading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Spacer()
                        
                        HStack() {
                            Image("instagram")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .matchedGeometryEffect(id: "logo", in: namespace)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("DesignCode")
                                    .font(.body).bold()
                                    .matchedGeometryEffect(id: "appTitle", in: namespace)
                                Text("Learn SwiftUI, Swift and DesignUI")
                                    .font(.caption)
                                    .matchedGeometryEffect(id: "description", in: namespace)
                            }
                            .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(
                            VisualEffectBlurView(blurStyle: .systemMaterialDark)
                                .matchedGeometryEffect(id: "blur", in: namespace)
                        )
                            
                    }
                    .frame(maxWidth: .infinity, maxHeight: 336)
                    .background(
                        Image("image4")
                            .resizable()
                            .scaledToFill()
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                    )
                    .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 10)
                   Spacer()
                }
                .padding(20)
            }
            else {
                detailView(namespace: namespace)
                
            }
        }
        
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
