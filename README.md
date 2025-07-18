#  Sweet UI

A beautifully themed SwiftUI app for customizing, ordering, and reviewing cupcakes — built with modern iOS development practices, navigation, and animations.

---

##  Features

###  Visual Design
- Fully custom color palette with pastel cupcake-themed branding
- Reusable font styles using `.rounded` bold typography
- Branded buttons and card-style form sections
- Light mode optimized UI with theme consistency

###  Cupcake Customization
- Choose from 4 cupcake types (Vanilla, Chocolate, Strawberry, Rainbow)
- Add extras like **Frosting** and **Sprinkles**
- Adjust quantity using a Stepper control

###  Delivery & Checkout Flow
- 3-Step screen flow: `Cart` → `Address` → `Summary`
- Form validation for address input (with zip code check)
- Final order summary and price breakdown
- Network-friendly `Order` model with manual `Codable` conformance

###  Animated Splash Screen
- Custom start screen with animated **falling sprinkles**
- Bouncy cupcake icon and welcome text
- Seamless transition to order screen on tap

###  Architecture & Tech Stack
- Built entirely in **SwiftUI** using `NavigationStack`
- Data modeled with `@Observable`, `@Bindable`, and `@State`
- Modular, reusable `ViewModifier` patterns for buttons, cards, and fonts
- Preview support and clean development structure

---

##  Screenshots

<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-18 at 15 35 39" src="https://github.com/user-attachments/assets/8b061aec-f2e2-421f-9ee7-bcb7d4b1d078" />
<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-18 at 15 35 29" src="https://github.com/user-attachments/assets/f1b1996e-1ceb-4265-a089-4be2b621c4a1" />
<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-18 at 15 35 26" src="https://github.com/user-attachments/assets/ef6016ed-6e2f-4abc-b201-039bed0508cc" />
<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-18 at 15 34 33" src="https://github.com/user-attachments/assets/f98de67f-34da-499d-a89b-346156256b63" />
<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-07-18 at 15 34 20" src="https://github.com/user-attachments/assets/efa23ba5-431d-41ed-9063-478113671a98" />
<img width="332" height="709" alt="Screenshot 2025-07-18 at 3 33 31 PM" src="https://github.com/user-attachments/assets/72bc074a-99c5-4bc8-b9ea-5f98216fb6e1" />


---

## 📁 Folder Structure

SweetUI/
├── Models/
│ └── Order.swift
├── Views/
│ ├── ContentView.swift
│ ├── AddCupcakeView.swift
│ ├── AddressView.swift
│ ├── OrderSummaryView.swift
│ ├── CheckoutView.swift
│ └── SprinkleStartView.swift
├── Theme/
│ └── Theme.swift
├── Shared/
│ └── SprinkleDot.swift
└── Assets.xcassets/

## ✅ Requirements

- iOS 17+
- Xcode 15+
- SwiftUI

---

##  Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/CupcakeCorner.git
Open in Xcode:
open CupcakeCorner.xcodeproj
Run the app in iPhone 15 simulator or newer.

## Acknowledgments

Project inspired by the 100 Days of SwiftUI course by Paul Hudson, with major design and UX enhancements.


Created by

Shalinth
Aspiring iOS Developer | SwiftUI Enthusiast
LinkedIn | GitHub



