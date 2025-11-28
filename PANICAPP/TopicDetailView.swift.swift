import SwiftUI

struct TopicDetailView: View {
    let topic: PanicTopic

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                Text(topic.title)
                    .font(.title)
                    .bold()

                Text(topic.fullText)
                    .font(.body)
                    .multilineTextAlignment(.leading)

                Spacer()
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

//
//  TopicDetailView.swift.swift
//  PANICAPP
//
//  Created by Vladimir Kopylov on 28/11/2025.
//

