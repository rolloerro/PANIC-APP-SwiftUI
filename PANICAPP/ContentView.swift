//
//  ContentView.swift
//  PANICAPP
//
//  Created by Vladimir Kopylov on 28/11/2025.
//
import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    
    @State private var isPanicMode = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 55.751244, longitude: 37.618423),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        VStack(spacing: 24) {
            
            Button(action: {
                isPanicMode.toggle()
            }) {
                Text(isPanicMode ? "ОТМЕНА" : "ПАНИКА")
                    .font(.largeTitle.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isPanicMode ? .gray : .red)
                    .foregroundColor(.white)
                    .cornerRadius(18)
            }
            
            if isPanicMode {
                Text("РЕЖИМ ПАНИКИ АКТИВИРОВАН")
                    .font(.headline)
                    .foregroundColor(.red)
            }
            
            VStack(spacing: 12) {
                Text("📍 Скинуть гео — ТЫ НЕ ОДИН\nпомощь рядом")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                
                Button(action: sendGeo) {
                    Text("Отправить геолокацию")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(14)
                }
                
                Text("🥷MSL72Rhp + Case$Tars👽🚀")
                    .font(.caption)
                    .foregroundColor(.purple)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func sendGeo() {
        print("Геолокация отправлена.")
    }
}
