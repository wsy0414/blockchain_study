# Block Chain Study


## Day1 Solidity

deploy my first smart contract by remixIDE

example code:

```
pragma solidity ^0.8.25; // 可以用包含0.8.25以上的版本進行編譯
pragma solidity 0.8.25; // 僅限0.8.25的版本進行編譯
pragma solidity >=0.8.25 <0.9.0; // 可以用包含0.8.25以上和小於0.9.0的版本進行編譯
```

### Basic Type

```
uint: 只能正整數 default = uint256
int: 可以正可以負
address: 地址
bool
bytes
string
```

### 變數可見性

```
uint number; // default = internal
uint public number; // 外部和內部都可見且會有一個getter function
uint private number // 只有當前合約可以調用
uint internal number; // 當前合約和子合約可以調用
uint external number; //只有外部可見，只適用於function
```

### 局部變數命名規則

### view, pure
掛上這兩個關鍵字後該function不可以改變狀態

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
array、struct、string、map才需要用到，string因為實際上就是byte[]
* stack
* memory 只會被暫時儲存，只在該次被呼叫時存在，可以在function內被修改
* storage: 一般在函數下宣告變數時都是被存在此處，不可用在function的參數
* calldata 只會被暫時儲存，只在該次被呼叫時存在，不行再function內被修改

deploy a contract on Sepolia:0xE2Da5Bb2B2904006f99587A9c5570CB6946C8aaf
deploy a contract on ZKsync Sepolia:0x826C254f491B1B9d1cA634e131177437b3d141f5