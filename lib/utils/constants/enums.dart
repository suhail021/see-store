/* --
      LIST OF Enums
      They cannot be created inside a class.
-- */

/// Dropdown popup display styles
enum TextSizes { small, medium, large }

enum PaymentMethods {
  paypal,
  googlePay,
  applePay,
  visa,
  masterCard,
  creditCard,
  paystack,
  razorPay,
  paytm,
}

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  canceled,
  returned,
  refunded,
}
