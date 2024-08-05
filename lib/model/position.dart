class Position {
  Position({
    required this.dhanClientId,
    required this.tradingSymbol,
    required this.securityId,
    required this.positionType,
    required this.exchangeSegment,
    required this.productType,
    required this.buyAvg,
    required this.buyQty,
    required this.costPrice,
    required this.sellAvg,
    required this.sellQty,
    required this.netQty,
    required this.realizedProfit,
    required this.unrealizedProfit,
    required this.rbiReferenceRate,
    required this.multiplier,
    required this.carryForwardBuyQty,
    required this.carryForwardSellQty,
    required this.carryForwardBuyValue,
    required this.carryForwardSellValue,
    required this.dayBuyQty,
    required this.daySellQty,
    required this.dayBuyValue,
    required this.daySellValue,
    required this.drvExpiryDate,
    required this.drvOptionType,
    required this.drvStrikePrice,
    required this.crossCurrency,
  });

  final String? dhanClientId;
  final String? tradingSymbol;
  final String? securityId;
  final String? positionType;
  final String? exchangeSegment;
  final String? productType;
  final double? buyAvg;
  final int? buyQty;
  final int? costPrice;
  final int? sellAvg;
  final int? sellQty;
  final int? netQty;
  final int? realizedProfit;
  final int? unrealizedProfit;
  final int? rbiReferenceRate;
  final int? multiplier;
  final int? carryForwardBuyQty;
  final int? carryForwardSellQty;
  final int? carryForwardBuyValue;
  final int? carryForwardSellValue;
  final int? dayBuyQty;
  final int? daySellQty;
  final int? dayBuyValue;
  final int? daySellValue;
  final String? drvExpiryDate;
  final dynamic drvOptionType;
  final int? drvStrikePrice;
  final bool? crossCurrency;

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      dhanClientId: json["dhanClientId"],
      tradingSymbol: json["tradingSymbol"],
      securityId: json["securityId"],
      positionType: json["positionType"],
      exchangeSegment: json["exchangeSegment"],
      productType: json["productType"],
      buyAvg: json["buyAvg"],
      buyQty: json["buyQty"],
      costPrice: json["costPrice"],
      sellAvg: json["sellAvg"],
      sellQty: json["sellQty"],
      netQty: json["netQty"],
      realizedProfit: json["realizedProfit"],
      unrealizedProfit: json["unrealizedProfit"],
      rbiReferenceRate: json["rbiReferenceRate"],
      multiplier: json["multiplier"],
      carryForwardBuyQty: json["carryForwardBuyQty"],
      carryForwardSellQty: json["carryForwardSellQty"],
      carryForwardBuyValue: json["carryForwardBuyValue"],
      carryForwardSellValue: json["carryForwardSellValue"],
      dayBuyQty: json["dayBuyQty"],
      daySellQty: json["daySellQty"],
      dayBuyValue: json["dayBuyValue"],
      daySellValue: json["daySellValue"],
      drvExpiryDate: json["drvExpiryDate"],
      drvOptionType: json["drvOptionType"],
      drvStrikePrice: json["drvStrikePrice"],
      crossCurrency: json["crossCurrency"],
    );
  }

  Map<String, dynamic> toJson() => {
        "dhanClientId": dhanClientId,
        "tradingSymbol": tradingSymbol,
        "securityId": securityId,
        "positionType": positionType,
        "exchangeSegment": exchangeSegment,
        "productType": productType,
        "buyAvg": buyAvg,
        "buyQty": buyQty,
        "costPrice": costPrice,
        "sellAvg": sellAvg,
        "sellQty": sellQty,
        "netQty": netQty,
        "realizedProfit": realizedProfit,
        "unrealizedProfit": unrealizedProfit,
        "rbiReferenceRate": rbiReferenceRate,
        "multiplier": multiplier,
        "carryForwardBuyQty": carryForwardBuyQty,
        "carryForwardSellQty": carryForwardSellQty,
        "carryForwardBuyValue": carryForwardBuyValue,
        "carryForwardSellValue": carryForwardSellValue,
        "dayBuyQty": dayBuyQty,
        "daySellQty": daySellQty,
        "dayBuyValue": dayBuyValue,
        "daySellValue": daySellValue,
        "drvExpiryDate": drvExpiryDate,
        "drvOptionType": drvOptionType,
        "drvStrikePrice": drvStrikePrice,
        "crossCurrency": crossCurrency,
      };

  @override
  String toString() {
    return "$dhanClientId, $tradingSymbol, $securityId, $positionType, $exchangeSegment, $productType, $buyAvg, $buyQty, $costPrice, $sellAvg, $sellQty, $netQty, $realizedProfit, $unrealizedProfit, $rbiReferenceRate, $multiplier, $carryForwardBuyQty, $carryForwardSellQty, $carryForwardBuyValue, $carryForwardSellValue, $dayBuyQty, $daySellQty, $dayBuyValue, $daySellValue, $drvExpiryDate, $drvOptionType, $drvStrikePrice, $crossCurrency, ";
  }
}
