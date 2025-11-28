import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List(PanicData.topics) { topic in
                NavigationLink(destination: TopicDetailView(topic: topic)) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(topic.title)
                            .font(.headline)
                        Text(topic.shortDescription)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Помощь при панике")
        }
    }
}

//
//  HomeView.swift.swift
//  PANICAPP
//
//  Created by Vladimir Kopylov on 28/11/2025.
//

