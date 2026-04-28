class Trade {
  final String symbol;
  final String type; // 'buy' or 'sell'
  final int quantity;
  final double price;
  final DateTime timestamp;

  Trade({
    required this.symbol,
    required this.type,
    required this.quantity,
    required this.price,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'symbol': symbol,
        'type': type,
        'quantity': quantity,
        'price': price,
        'timestamp': timestamp.toIso8601String(),
      };

  factory Trade.fromJson(Map<String, dynamic> json) {
    return Trade(
      symbol: json['symbol'],
      type: json['type'],
      quantity: json['quantity'],
      price: json['price'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
