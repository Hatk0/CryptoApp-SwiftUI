import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("All Coins")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<20, id: \.self) { _ in
                    AllCoinsRowView()
                }
            }
        }
    }
}

#Preview {
    AllCoinsView()
}
