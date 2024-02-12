import SwiftUI
import Kingfisher

struct AllCoinsRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // ID
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            // Image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
            
            // Coin information
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.headline)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // Coin price & percentage information
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.headline)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .foregroundStyle(.green)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
