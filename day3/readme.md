# Day3
payable表示該函數或合約可以接收或發送coin

## Revert
撤銷之前的操作，並且返回剩餘的gas
所以用require()，如果沒有達成條件會執行revert

## Oracle problems
因為區塊鏈本身是無法主動取得外部資料的原因是為了保證安全性和可靠性
從外部取得資料會因為各節點使用不同資料來源造成資料無法驗證
所以需要透過預言機來取得外部資料
預言機本身是一個仲介服務
取得外部資料來源並進行整理和驗證再讓其他人透過refrence smart contract來取得所需要的資料或是計算結果

chainlink一個讓合約可以使用真實世界數據的預言機服務

## Interface
跳用實作指定interface的contract
```
ITest({實作的contract address}).functionName();
```

實作interface
```
contract Test is ITest {
    // 必須使用override，只要該function被定義在interface內
    function testFunction() override {

    }
}
```

如果使用的地址不是實作該interface，可以被compile但執行時會出錯然後會revert

## 數學單位
沒有小數，所以處理數字時都需要用int去計算所以永遠都要注意位數是否足夠

deploy on sepoliea:0xd0F52233fb0A748e9C46DceD70E0Da29Bb06fAA1