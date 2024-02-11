import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading ,spacing: 5) {
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom, 8)
            
            // Coin information
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$48 166,70")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            // Coin percentage information
            Text("+0,84 %")
                .font(.title2)
                .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray), lineWidth: 1)
            
        )
    }
}

#Preview {
    TopMoversItemView()
}
