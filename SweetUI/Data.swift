
import Foundation

@Observable
class Order: Codable {
    static let types = ["Vanilla", "Chocolate", "Strawberry", "Rainbow"]

    var cupcakes: [CupcakeItem] = []
    var name = ""
    var streetAddress = ""
    var city = ""
    var zipCode = ""

    var hasValidAddress: Bool {
        name.trimmingCharacters(in: .whitespaces).isEmpty ||
        streetAddress.trimmingCharacters(in: .whitespaces).isEmpty ||
        city.trimmingCharacters(in: .whitespaces).isEmpty ||
        zipCode.trimmingCharacters(in: .whitespaces).count != 5
    }

    var cost: Decimal {
        var total: Decimal = 0
        for cupcake in cupcakes {
            var itemCost = Decimal(cupcake.quantity) * 60
            itemCost += Decimal(cupcake.type) / 2
            if cupcake.extraFrosting { itemCost += 10 }
            if cupcake.addSprinkles { itemCost += 5 }
            total += itemCost
        }
        return total
    }

    // MARK: - Default init
    init() {
        self.cupcakes = []
        self.name = ""
        self.streetAddress = ""
        self.city = ""
        self.zipCode = ""
    }

    // MARK: - Codable
    enum CodingKeys: CodingKey {
        case cupcakes, name, streetAddress, city, zipCode
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cupcakes = try container.decode([CupcakeItem].self, forKey: .cupcakes)
        name = try container.decode(String.self, forKey: .name)
        streetAddress = try container.decode(String.self, forKey: .streetAddress)
        city = try container.decode(String.self, forKey: .city)
        zipCode = try container.decode(String.self, forKey: .zipCode)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cupcakes, forKey: .cupcakes)
        try container.encode(name, forKey: .name)
        try container.encode(streetAddress, forKey: .streetAddress)
        try container.encode(city, forKey: .city)
        try container.encode(zipCode, forKey: .zipCode)
    }
}
