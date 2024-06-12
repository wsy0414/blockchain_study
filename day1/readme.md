# Block Chain Study


## Day1 Solidity

deploy my first smart contract by remixIDE

example code:

```
ragma solidity ^0.8.25; // 可以用包含0.8.25以上的版本進行編譯
ragma solidity 0.8.25; // 僅限0.8.25的版本進行編譯
ragma solidity >=0.8.25 <0.9.0; // 可以用包含0.8.25以上和小於0.9.0的版本進行編譯
```

### Basic Type

```
uint: 只能正整數 default = uint256
int: 可以正可以負
address: 地址
```

### 變數可見性

```
uint number; // default = internal
uint public number; // 外部和內部都可見且會有一個getter function
uint private number //
uint internal number; //
uint external number; //只有外部可見，只適用於function
```

### 局部變數命名規則

### view, pure

view代表該函數只是從區塊鏈中讀取狀態，不需要打交易

```
function retrieve() public view returns(uint256) {
  return favoriteNumber;
}
```

pure代表該函數只能回傳一個變量不能是變數

```
function retrieve() public pure returns(uint256) {
  return 6;
}
```

外部調用這兩個function不需要花費gas但如果是其他需要花費gas的function調用的話就需要付gas

### memory

array、struct才需要用到
* stack
* memory 只會被暫時儲存，只在該次被呼叫時存在，可以在function內被修改
* storage
* calldata 只會被暫時儲存，只在該次被呼叫時存在，不行再function內被修改

deploy a contract on Sepolia:0xE2Da5Bb2B2904006f99587A9c5570CB6946C8aaf