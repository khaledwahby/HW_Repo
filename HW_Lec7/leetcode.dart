void main() {
  /*
  https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
  */

  List prices = [7, 1, 5, 3, 6, 4];
  int buyDay = -1;
  num BuyPrice = 0;
  int sellDay = -1;
  num sellPrice = 0;
  num profit = 0;

  for (int i = 0; i < prices.length - 1; i++) {
    for (int x = i + 1; x < prices.length; x++) {
      if (profit < prices[x] - prices[i]) {
        profit = prices[x] - prices[i];
        buyDay = i + 1;
        BuyPrice = prices[i];
        sellDay = x + 1;
        sellPrice = prices[x];
      }
    }
  }

  if (profit > 1) {
    print(
      "buy on day $buyDay  with price of $BuyPrice and sell on Day $sellDay with price of $sellPrice with profit of $profit ",
    );
  } else {
    print("no transactions are done and the max profit = 0");
  }
}
