## リレーショナルDB

### Amazon RDS (Relational Database Service)

Amazon RDSは、リレーショナルデータベースのセットアップ、操作、スケーリングを簡素化するマネージドサービスです。RDSは高可用性、スケーラビリティ、リカバリ機能を提供し、データベース管理者の負担を軽減します。

- **特長**:
  - 高可用性とフェイルオーバー機能
  - 自動バックアップとリストア
  - 手動スケーリングと自動スケーリング
  - マルチAZ展開による災害対策

- **対応するデータベースエンジン**:
  - MySQL
  - PostgreSQL
  - MariaDB
  - Oracle
  - Microsoft SQL Server
  - Amazon Aurora

- **ユースケース**:
  - 複雑なリレーショナルデータ分析
  - 販売サプライチェーン管理
  - ビジネス分析

- **参考文献**:
  - [AWS Documentation - Amazon RDS](https://docs.aws.amazon.com/rds/index.html)

---

## NoSQL

### Amazon DynamoDB

Amazon DynamoDBは、高速で柔軟なNoSQLデータベースサービスです。キーと値のペアを使用して大規模なスループットを提供し、グローバルに分散したデータベースの操作が可能です。

- **特長**:
  - サーバーレスアーキテクチャ
  - 自動スケーリングによる高いスループット
  - シングルデジタルミリ秒のレイテンシ
  - 完全に管理されたマルチリージョン、マルチマスターのレプリケーション

- **ユースケース**:
  - 単純な参照テーブルやキャッシュ
  - リアルタイムのユーザーセッション管理
  - 高トラフィックのウェブサイトとモバイルアプリ
  - IoTデータのストレージ

- **参考文献**:
  - [AWS Documentation - Amazon DynamoDB](https://docs.aws.amazon.com/dynamodb/index.html)

---

## サービス比較: RDS vs DynamoDB

| 項目 | Amazon RDS | Amazon DynamoDB |
| --- | --- | --- |
| データモデル | リレーショナル | キーと値、ドキュメント |
| 適用範囲 | 複雑なリレーショナルクエリ | 単純なキー/値のペア |
| スケーラビリティ | 手動スケーリング (Auroraは自動) | 自動スケーリング |
| 可用性 | マルチAZによる高可用性 | マルチリージョン、マルチマスター |
| 主なユースケース | 複雑なビジネスロジック | 高スループットのリアルタイムアプリケーション |

---

## 結論

AWSのデータベースサービスは、各サービスが異なるニーズを満たすように設計されています。リレーショナルデータベースが必要な場合はAmazon RDS、単純なキー/値ペアや大規模なスループットが必要な場合はAmazon DynamoDBを選択すると良い。

---

### 参考リンク

- [AWS Documentation - Amazon RDS](https://docs.aws.amazon.com/rds/index.html)
- [AWS Documentation - Amazon DynamoDB](https://docs.aws.amazon.com/dynamodb/index.html)
- [AWS データベースサービスの概要](https://aws.amazon.com/products/databases/)
