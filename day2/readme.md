# Day2

## Deploy a contract from a contract
```
simpleStorage = new SimpleStorage();    // just like new a object in java
```

## import
```
import "./SimpleStorage.sol";   // 這會import整個檔案
import {SimpleStorage} from "./SimpleStorage.sol";  // 可以指定要import檔案內的哪個contract

```

## Inheritance
就是繼承也可以進行override
但是父合約的funciton要加上virtual的key word才可以被覆蓋，然後子類別的部分要使用override的key word
