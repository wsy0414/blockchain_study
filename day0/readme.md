# Day 0
## Basic Knowledge
理想有3種特性
去中心化
安全性
可擴展
但現實目前只能三選二

Transaction Fee = Gas Price * Gas
Gas是一個Transaction需要用到的消耗單位，每個操作都會消耗Gas

## L1s L2 and Rollups
### Layer1
最底層的區塊鏈ETH BTC Solana

### Layer2
建立在Layer1上的東西，不包含smart contract

### Rollup
增加Layer1的交易數量且不增加Gas
做法是將多筆Transactionc合併為一筆
如為了解決ETH的可擴展性及交易速度所以衍生出Layer2，在Layer2交易時會將數個交易打包送至Layer1(ETH)作為一筆Transaction

Optimistic:一律默認所有交易是有效的，但之後可以進行挑戰，並進行驗證，如果挑戰成功該節點質押的token會被沒收
zero-knowlegdge(zk)：通過數學計算在L1建立合約進行驗證 

目前很多L2因為要收集Transaction會有中心化的序列器，但這會導致如果該序列器有問題甚至阻擋特定用戶交易，是潛在問題

Rollup stage(l2 beat):為L2提供一些證明並制定標準，並希望L2朝去中心化努力
L2的發展會有3個階段：Full training wheels(stage 0) -> Enhanced Rollup Governance(Stage 1) -> No Training Wheels(Stage 2)
Full training wheels:
* 中心化管理，因為需要再有問題時及時處理
* 數據可用性：需要提供資料及透過開源軟體給使用者驗證
Enhanced Rollup Governance:
* 開始由智能合約接手管理
* 開始有驗證提交系統
No Training Wheels:
* 完全交由智能合約管理

### Bridge
資產在鏈之間轉移
lock and unlock: 在源鏈上透過合約鎖定資產，在目標鏈的合約上解縮相應數目資產並發送到目標地址
mint and burn：在源鏈上透過合約燒掉資產，在目標鏈的合約上鑄造相應數目資產並發送到目標地址