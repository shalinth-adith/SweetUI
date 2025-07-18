import Foundation




struct OrderData: Codable {
    var type: Int
    var quantity: Int
    var specialRequestEnabled: Bool
    var extraFrosting: Bool
    var addSprinkles: Bool
    var name: String
    var streetAddress: String
    var city: String
    var zipCode: String
}
@Observable
class Order {
    static let types = ["Vanilla", "Chocolate", "Strawberry", "Rainbow"]


    

    var type = 0
    var quantity = 3

    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }

    var extraFrosting = false
    var addSprinkles = false

    var name = ""
    var streetAddress = ""
    var city = ""
    var zipCode = ""

    // MARK: - Validation

    var hasValidAddress: Bool {
        name.trimmingCharacters(in: .whitespaces).isEmpty ||
        streetAddress.trimmingCharacters(in: .whitespaces).isEmpty ||
        city.trimmingCharacters(in: .whitespaces).isEmpty ||
        zipCode.trimmingCharacters(in: .whitespaces).count != 5
    }

    // MARK: - Cost Calculation

    var cost: Decimal {
        var cost = Decimal(quantity) * 60
        cost += Decimal(type) / 2

        if extraFrosting {
            cost += 10
        }

        if addSprinkles {
            cost += 5
        }

        return cost
    }

    // MARK: - Codable Conversion

    var data: OrderData {
        OrderData(
            type: type,
            quantity: quantity,
            specialRequestEnabled: specialRequestEnabled,
            extraFrosting: extraFrosting,
            addSprinkles: addSprinkles,
            name: name,
            streetAddress: streetAddress,
            city: city,
            zipCode: zipCode
        )
    }

    func update(from data: OrderData) {
        type = data.type
        quantity = data.quantity
        specialRequestEnabled = data.specialRequestEnabled
        extraFrosting = data.extraFrosting
        addSprinkles = data.addSprinkles
        name = data.name
        streetAddress = data.streetAddress
        city = data.city
        zipCode = data.zipCode
    }
}
