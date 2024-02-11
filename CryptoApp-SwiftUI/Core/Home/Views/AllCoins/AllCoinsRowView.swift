import SwiftUI

struct AllCoinsRowView: View {
    var body: some View {
        HStack {
            // ID
            Text("1")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
            
            // Coin information
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .font(.headline)
                
                Text("BTC")
                    .font(.caption)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // Coin price & percentage information
            VStack(alignment: .trailing, spacing: 4) {
                Text("$48 166,70")
                    .font(.headline)
                
                Text("+ 0,84 %")
                    .font(.caption)
                    .foregroundStyle(.green)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    AllCoinsRowView()
}
