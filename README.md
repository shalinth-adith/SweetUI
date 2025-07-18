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
<img width="330" height="714" alt="titlepage" src="https://github.com/user-attachments/assets/5247cb71-af22-4c5d-b47b-37bd675add27" />
<img width="329" height="714" alt="contentview" src="https://github.com/user-attachments/assets/6d9d1e8d-400b-421d-9cdd-db415a70066d" />
<img width="321" height="708" alt="addingcart" src="https://github.com/user-attachments/assets/0c06d7b7-892b-49db-9d1b-931eaf0b6197" />
<img width="327" height="714" alt="addedcart" src="https://github.com/user-attachments/assets/e275a177-4321-4d80-b8fa-520f11fc0a88" />
<img width="322" height="712" alt="addressview" src="https://github.com/user-attachments/assets/d6898528-f117-4fc8-9c51-01e88a251bc2" />
<img width="324" height="713" alt="order summary" src="https://github.com/user-attachments/assets/f16382cb-9970-453b-a180-0626958f0e8e" />
<img width="324" height="711" alt="placingoder" src="https://github.com/user-attachments/assets/6423bfe4-2baf-4adc-9b6f-30ceba12bfff" />




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


