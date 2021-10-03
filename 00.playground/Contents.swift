import UIKit

func loadSignature(url: URL) async throws -> String? {
    let (data, _) = try await URLSession.shared.data(from: url, delegate: nil)
    return String(data: data, encoding: .utf8)
}
