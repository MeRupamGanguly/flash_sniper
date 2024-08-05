class Order {
  Order({
    required this.dhanClientId,
    required this.correlationId,
    required this.transactionType,
    required this.exchangeSegment,
    required this.productType,
    required this.orderType,
    required this.validity,
    required this.tradingSymbol,
    required this.securityId,
    required this.quantity,
    required this.disclosedQuantity,
    required this.price,
    required this.triggerPrice,
    required this.afterMarketOrder,
    required this.amoTime,
    required this.boProfitValue,
    required this.boStopLossValue,
    required this.drvExpiryDate,
    required this.drvOptionType,
    required this.drvStrikePrice,
  });

  final String? dhanClientId;
  final String? correlationId;
  final String? transactionType;
  final String? exchangeSegment;
  final String? productType;
  final String? orderType;
  final String? validity;
  final String? tradingSymbol;
  final String? securityId;
  final String? quantity;
  final String? disclosedQuantity;
  final String? price;
  final String? triggerPrice;
  final bool? afterMarketOrder;
  final String? amoTime;
  final String? boProfitValue;
  final String? boStopLossValue;
  final String? drvExpiryDate;
  final String? drvOptionType;
  final double? drvStrikePrice;

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      dhanClientId: json["dhanClientId"],
      correlationId: json["correlationId"],
      transactionType: json["transactionType"],
      exchangeSegment: json["exchangeSegment"],
      productType: json["productType"],
      orderType: json["orderType"],
      validity: json["validity"],
      tradingSymbol: json["tradingSymbol"],
      securityId: json["securityId"],
      quantity: json["quantity"],
      disclosedQuantity: json["disclosedQuantity"],
      price: json["price"],
      triggerPrice: json["triggerPrice"],
      afterMarketOrder: json["afterMarketOrder"],
      amoTime: json["amoTime"],
      boProfitValue: json["boProfitValue"],
      boStopLossValue: json["boStopLossValue"],
      drvExpiryDate: json["drvExpiryDate"],
      drvOptionType: json["drvOptionType"],
      drvStrikePrice: json["drvStrikePrice"],
    );
  }

  Map<String, dynamic> toJson() => {
        "dhanClientId": dhanClientId,
        "correlationId": correlationId,
        "transactionType": transactionType,
        "exchangeSegment": exchangeSegment,
        "productType": productType,
        "orderType": orderType,
        "validity": validity,
        "tradingSymbol": tradingSymbol,
        "securityId": securityId,
        "quantity": quantity,
        "disclosedQuantity": disclosedQuantity,
        "price": price,
        "triggerPrice": triggerPrice,
        "afterMarketOrder": afterMarketOrder,
        "amoTime": amoTime,
        "boProfitValue": boProfitValue,
        "boStopLossValue": boStopLossValue,
        "drvExpiryDate": drvExpiryDate,
        "drvOptionType": drvOptionType,
        "drvStrikePrice": drvStrikePrice,
      };

  @override
  String toString() {
    return "$dhanClientId, $correlationId, $transactionType, $exchangeSegment, $productType, $orderType, $validity, $tradingSymbol, $securityId, $quantity, $disclosedQuantity, $price, $triggerPrice, $afterMarketOrder, $amoTime, $boProfitValue, $boStopLossValue, $drvExpiryDate, $drvOptionType, $drvStrikePrice, ";
  }
}
