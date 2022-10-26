//
//  detailView.swift
//  newInformation
//
//  Created by SUHAIL  on 09/03/22.
//

import SwiftUI
import SwiftUIX

struct detailView: View {
    
    var namespace: Namespace.ID
    @State var appear = false
    
    var body: some View {
        VStack() {
            
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
                    VisualEffectBlurView(blurStyle: .dark)
                        .matchedGeometryEffect(id: "blur", in: namespace)
                )
            }
            .frame(maxWidth: .infinity, maxHeight: 700)
            .background(
                Image("image4")
                    .resizable()
                    .scaledToFill()
                    .matchedGeometryEffect(id: "image", in: namespace)
            )
            .mask(
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .matchedGeometryEffect(id: "image", in: namespace)
            )
            .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 10)
            Text("I appreciate how Meng explained the reasoning behind his design decisions in relation to apple's guidelines. I might retry the design in Figma with auto-layout to avoid constraints issues how Meng explained the reasoning behind his design decisions in relation to apple's")
                .padding()
                .offset(y: appear ? 0 : 100)
           Spacer()
        }
        .onAppear {
            appear = true
        }
        .onDisappear {
            appear = false
        }
        
        .ignoresSafeArea()
    }
}

struct detailView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        detailView(namespace: namespace)
    }
}
