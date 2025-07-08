class SeePricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRatForLocation(location);
    double taxAmount = productPrice + taxRate;
    double shippingCost = getShippingCost(location);
    double totlePrice = productPrice + taxAmount + shippingCost;
    return totlePrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);

    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRatForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2) ;
  }

  static double getTaxRatForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
