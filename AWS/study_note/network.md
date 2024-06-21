
# ネットワーク ACL とセキュリティグループの違い

## ネットワーク ACL (Access Control List)

ネットワークACLは、Amazon VPC (Virtual Private Cloud) 内のサブネットに適用されるセキュリティ機能で、入出力トラフィックを制御するためのルールを設定します。

### 特長

- **適用範囲**: サブネットレベル
- **ステートレス**: 各リクエストとレスポンスが個別に評価されるため、戻りのトラフィックもルールで許可する必要がある。
- **ルールの柔軟性**: 入力（Inbound）および出力（Outbound）両方のルールを設定でき、許可と拒否の両方のルールを持つ。

### 設定例

- ルール番号: 100
- 許可/拒否: 許可
- プロトコル: TCP
- ポート範囲: 80 (HTTP)
- 送信元: 0.0.0.0/0 (全てのIPアドレス)


### 参考文献

- [AWS Documentation - Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)

---

## セキュリティグループ

セキュリティグループは、Amazon EC2インスタンスなどのリソースに適用されるセキュリティ機能で、トラフィックの制御に役立ちます。

### 特長

- **適用範囲**: インスタンスレベル
- **ステートフル**: 関連するリクエストとレスポンスが自動的に許可されるため、戻りのトラフィックを別途許可する必要がない。
- **許可のみ**: 入力（Inbound）および出力（Outbound）の許可ルールのみ設定できる（拒否ルールは設定できない）。

### 設定例

- ルールタイプ: インバウンド
- プロトコル: TCP
- ポート範囲: 22 (SSH)
- 送信元: 203.0.113.0/24 (特定のIPアドレス範囲)


### 参考文献

- [AWS Documentation - Security Groups](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)

---

## ネットワーク ACL とセキュリティグループの違い

| 項目 | ネットワーク ACL | セキュリティグループ |
| --- | --- | --- |
| 適用範囲 | サブネットレベル | インスタンスレベル |
| 状態 | ステートレス | ステートフル |
| ルールの性質 | 入力と出力の許可・拒否ルール | 入力と出力の許可ルールのみ |
| 設定の柔軟性 | 各方向に個別のルールを設定 | 単純化された許可ルール |

---

### 追加の参考資料

- [AWS Security Group vs Network ACL](https://aws.amazon.com/premiumsupport/knowledge-center/security-groups-vs-acls/)


