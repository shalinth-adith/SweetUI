import SwiftUI

struct CheckoutView: View {
    var order: Order

    @State private var confirmationNumber = ""
    @State private var showingConfirmation = false
    @State private var isLoading = false
    @State private var showingError = false
    @State private var errorMessage = ""
    @State private var estimatedDeliveryTime = ""

    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 233)

                    Text("Your total cost is \(order.cost, format: .currency(code: "INR"))")
                        .font(.title)

                    Button("Place Order") {
                        Task {
                            await placeOrder()
                        }
                    }
                    .padding(.vertical)

                    if isLoading {
                        Color.black.opacity(0.3)
                            .ignoresSafeArea()
                        ProgressView("Placing Order...")
                            .padding()
                            .background(.ultraThickMaterial)
                            .cornerRadius(12)
                    }
                }
            }
            .navigationTitle(Text("Checkout"))
            .navigationBarTitleDisplayMode(.inline)
            .scrollBounceBehavior(.basedOnSize)
            .alert("Thank you!", isPresented: $showingConfirmation) {
                Button("OK") { }
            } message: {
                Text(confirmationNumber)
            }
            .alert("Error", isPresented: $showingError) {
                Button("OK") { }
            } message: {
                Text(errorMessage)
            }
        }
    }

    func placeOrder() async {
        isLoading = true

        guard let encoded = try? JSONEncoder().encode(order) else {
            errorMessage = "Failed to encode order"
            showingError = true
            isLoading = false
            return
        }

        let url = URL(string: "https://reqres.in/api/cupcakes")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"

        do {
            let (_, _) = try await URLSession.shared.upload(for: request, from: encoded)

            let minutes = Int.random(in: 20...40)
            estimatedDeliveryTime = "Your cupcakes will arrive in approximately \(minutes) minutes."

            confirmationNumber = """
            Order placed successfully! 🎉

            \(order.cupcakes.count) items sent to:
            \(order.name), \(order.streetAddress), \(order.city) - \(order.zipCode)

            \(estimatedDeliveryTime)
            """
            showingConfirmation = true
        } catch {
            errorMessage = "Checkout failed: \(error.localizedDescription)"
            showingError = true
        }

        isLoading = false
    }
}

#Preview {
    CheckoutView(order: Order())
}
