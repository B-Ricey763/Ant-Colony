Assets {
  Id: 5424554356108232616
  Name: "Ant"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3849646725671175769
      Objects {
        Id: 3849646725671175769
        Name: "Ant"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3124942802132398722
        ChildIds: 17937364273216284170
        UnregisteredParameters {
          Overrides {
            Name: "cs:Speed"
            Float: 2.5
          }
          Overrides {
            Name: "cs:Type"
            String: "Worker"
          }
          Overrides {
            Name: "cs:CarryingFood"
            Bool: false
          }
          Overrides {
            Name: "cs:SpeedMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:Health"
            Float: 10
          }
          Overrides {
            Name: "cs:MaxHealth"
            Float: 10
          }
          Overrides {
            Name: "cs:Speed:tooltip"
            String: "How fast the ant will move"
          }
          Overrides {
            Name: "cs:CarryingFood:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:SpeedMultiplier:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Health:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 3124942802132398722
        Name: "Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3849646725671175769
        ChildIds: 13963067633260766680
        ChildIds: 14426184664135412143
        ChildIds: 11374814271156418348
        ChildIds: 6110466174266552196
        ChildIds: 8948211672571785353
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: Server
        }
      }
      Objects {
        Id: 13963067633260766680
        Name: "PherTrigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 10
            Y: 10
            Z: 10
          }
        }
        ParentId: 3124942802132398722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
        }
      }
      Objects {
        Id: 14426184664135412143
        Name: "HitboxTrigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.75
            Y: 1
            Z: 1
          }
        }
        ParentId: 3124942802132398722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 11374814271156418348
        Name: "PherTracker"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3124942802132398722
        UnregisteredParameters {
          Overrides {
            Name: "cs:PherTrigger"
            ObjectReference {
              SubObjectId: 13963067633260766680
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 9672939361282021061
          }
        }
      }
      Objects {
        Id: 6110466174266552196
        Name: "HealthMonitor"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3124942802132398722
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 7530188864596966948
          }
        }
      }
      Objects {
        Id: 8948211672571785353
        Name: "Ant AI"
        Transform {
          Location {
            Z: -75
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3124942802132398722
        ChildIds: 3580876820945548937
        ChildIds: 10769314031948639570
        ChildIds: 18188625946987962959
        ChildIds: 16714344642664770332
        ChildIds: 8759075265587267194
        ChildIds: 10895791823263118581
        UnregisteredParameters {
          Overrides {
            Name: "cs:Priorities"
            AssetReference {
              Id: 12635891766135779157
            }
          }
          Overrides {
            Name: "cs:AntMover"
            AssetReference {
              Id: 11555320366613091189
            }
          }
          Overrides {
            Name: "cs:PherTracker"
            ObjectReference {
              SubObjectId: 11374814271156418348
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AIActivityHandler {
        }
      }
      Objects {
        Id: 3580876820945548937
        Name: "RoamActivity"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        UnregisteredParameters {
          Overrides {
            Name: "cs:Priorities"
            AssetReference {
              Id: 12635891766135779157
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 1467038181534272658
          }
        }
      }
      Objects {
        Id: 10769314031948639570
        Name: "CollideActivity"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 17465752840329746924
          }
        }
      }
      Objects {
        Id: 18188625946987962959
        Name: "FollowActivity"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 5260854768752014548
          }
        }
      }
      Objects {
        Id: 16714344642664770332
        Name: "BlockActivity"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 16709068358421791926
          }
        }
      }
      Objects {
        Id: 8759075265587267194
        Name: "FoodActivity"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 4117148841755326486
          }
        }
      }
      Objects {
        Id: 10895791823263118581
        Name: "RetrieveActivity"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8948211672571785353
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 9997027585310727671
          }
        }
      }
      Objects {
        Id: 17937364273216284170
        Name: "Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3849646725671175769
        ChildIds: 4098627312272892617
        ChildIds: 11821413564342300754
        ChildIds: 1390767814793935368
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 4098627312272892617
        Name: "AntKitBash"
        Transform {
          Location {
            Z: 9
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 0.382383198
            Y: 0.382383198
            Z: 0.382383198
          }
        }
        ParentId: 17937364273216284170
        ChildIds: 6372045966952398128
        ChildIds: 14142347801232983545
        ChildIds: 12245880051853689190
        ChildIds: 9254204143581343418
        ChildIds: 16543965669449438108
        ChildIds: 1667637249971735981
        ChildIds: 8457154838279414949
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6372045966952398128
        Name: "Body"
        Transform {
          Location {
            X: -65.6032104
            Y: 0.00980224647
            Z: -19.92733
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 12449139978899337001
        ChildIds: 11705588323191536541
        ChildIds: 17024957594102083108
        ChildIds: 17022371917773305329
        ChildIds: 18040162065605468
        ChildIds: 8969823258996478458
        ChildIds: 13739903519557770533
        ChildIds: 3013349135626613725
        ChildIds: 17127163848661723635
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12449139978899337001
        Name: "Sphere"
        Transform {
          Location {
            X: 230.908691
            Y: 0.188232422
            Z: 19.92733
          }
          Rotation {
            Pitch: -19.9999886
          }
          Scale {
            X: 1.7
            Y: 1
            Z: 1.1
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11705588323191536541
        Name: "Sphere"
        Transform {
          Location {
            X: 130.508301
            Y: 0.188232422
            Z: 22.1698914
          }
          Rotation {
            Pitch: 24.9999866
          }
          Scale {
            X: 0.900000036
            Y: 0.3
            Z: 0.3
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17024957594102083108
        Name: "Sphere"
        Transform {
          Location {
            X: 71.1608887
            Y: 0.188232422
            Z: 30.1879349
          }
          Rotation {
            Pitch: -19.9999886
          }
          Scale {
            X: 1.1
            Y: 0.7
            Z: 0.6
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17022371917773305329
        Name: "Sphere"
        Transform {
          Location {
            X: -19.5842285
            Y: 0.188232422
            Z: 37.6549454
          }
          Rotation {
            Pitch: 30
          }
          Scale {
            X: 1.2
            Y: 1
            Z: 0.6
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 18040162065605468
        Name: "Eyes"
        Transform {
          Location {
            X: -9.68713379
            Y: -0.405578613
            Z: 54.9754562
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6372045966952398128
        ChildIds: 3695427664070613507
        ChildIds: 6802669131851828828
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 3695427664070613507
        Name: "Sphere"
        Transform {
          Location {
            X: -0.10279385
            Y: 32.0362434
            Z: 2.14447474
          }
          Rotation {
            Pitch: 27.9162312
            Yaw: -24.8521328
            Roll: 38.9703293
          }
          Scale {
            X: 0.517926753
            Y: 0.312890887
            Z: 0.299281776
          }
        }
        ParentId: 18040162065605468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9430736327232783107
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.151000008
              G: 0.151000008
              B: 0.151000008
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 6802669131851828828
        Name: "Sphere"
        Transform {
          Location {
            X: 0.103113085
            Y: -32.0359268
          }
          Rotation {
            Pitch: 16.0496178
            Yaw: 25.8004055
            Roll: 49.0841599
          }
          Scale {
            X: 0.517926514
            Y: 0.388443381
            Z: 0.299281031
          }
        }
        ParentId: 18040162065605468
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9430736327232783107
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.151000008
              G: 0.151000008
              B: 0.151000008
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 9471374831252195517
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8969823258996478458
        Name: "Ring - Quarter Beveled Thin"
        Transform {
          Location {
            X: -115.107788
            Y: 33.243042
            Z: 20.0557098
          }
          Rotation {
            Pitch: -64.5360794
            Yaw: 10.5873079
            Roll: 68.3034363
          }
          Scale {
            X: 1
            Y: 1.99999988
            Z: 1
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 96680746507564091
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13739903519557770533
        Name: "Ring - Quarter Beveled Thin"
        Transform {
          Location {
            X: -120.242432
            Y: -27.2929688
            Z: 20.0557098
          }
          Rotation {
            Pitch: -64.5359497
            Yaw: 30.5872955
            Roll: 68.3034897
          }
          Scale {
            X: 1
            Y: 1.99999988
            Z: 1
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 96680746507564091
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3013349135626613725
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: -78.8682861
            Y: -12.3348389
          }
          Rotation {
            Pitch: -65.9919739
            Yaw: 58.8547134
            Roll: 91.8235168
          }
          Scale {
            X: 1.03341663
            Y: 0.869121909
            Z: 0.544497
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12962513178075980095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17127163848661723635
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: -79.4002686
            Y: 6.44335938
            Z: 3.57618713
          }
          Rotation {
            Pitch: 70.085083
            Yaw: 145.41774
            Roll: 113.066292
          }
          Scale {
            X: 1.03341663
            Y: 0.869121909
            Z: 0.544497
          }
        }
        ParentId: 6372045966952398128
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12962513178075980095
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14142347801232983545
        Name: "Leg1"
        Transform {
          Location {
            X: -63.9052734
            Y: -83.230957
            Z: -58.9747467
          }
          Rotation {
            Pitch: -16.074585
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 12715617108425133636
        ChildIds: 297053918384834367
        ChildIds: 975267965855766633
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12715617108425133636
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 13.4780273
            Y: 45.0523682
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.53832912
            Yaw: -22.2296906
            Roll: -72.2035751
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 14142347801232983545
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 297053918384834367
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.662719727
            Y: 1.36877441
            Z: 51.6060638
          }
          Rotation {
            Pitch: 7.53809
            Yaw: -22.2282867
            Roll: -154.226685
          }
          Scale {
            X: 0.155643016
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 14142347801232983545
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 975267965855766633
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -12.8154297
            Y: -46.4211426
          }
          Rotation {
            Pitch: 7.53778934
            Yaw: -22.2274323
            Roll: -114.320503
          }
          Scale {
            X: 0.117119186
            Y: 0.117120527
            Z: 0.709638059
          }
        }
        ParentId: 14142347801232983545
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12245880051853689190
        Name: "Leg2"
        Transform {
          Location {
            X: 30.6271973
            Y: -105.111206
            Z: -72.8065186
          }
          Rotation {
          }
          Scale {
            X: 1.13831162
            Y: 1.13831162
            Z: 1.13831162
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 5226734942942410261
        ChildIds: 12217970325556109669
        ChildIds: 430737752473787077
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5226734942942410261
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -14.8465576
            Y: 44.6199951
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 12.8296833
            Roll: -72.2033691
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 12245880051853689190
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12217970325556109669
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -1.32873535
            Y: 0.739746094
            Z: 51.6060638
          }
          Rotation {
            Pitch: 7.53809
            Yaw: 12.8310537
            Roll: -154.227142
          }
          Scale {
            X: 0.155643016
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 12245880051853689190
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 430737752473787077
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 16.1752491
            Y: -44.1205177
            Z: 5.58431053
          }
          Rotation {
            Pitch: 7.53776884
            Yaw: 12.8328066
            Roll: -105.636871
          }
          Scale {
            X: 0.100493297
            Y: 0.100494437
            Z: 0.608899951
          }
        }
        ParentId: 12245880051853689190
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 9254204143581343418
        Name: "Leg3"
        Transform {
          Location {
            X: 108.686768
            Y: -74.2335205
            Z: -72.8065186
          }
          Rotation {
            Yaw: 36.7356224
          }
          Scale {
            X: 1.13831162
            Y: 1.13831162
            Z: 1.13831162
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 17637921053003361195
        ChildIds: 15264696403938339230
        ChildIds: 7679103889555304052
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 17637921053003361195
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -14.8465576
            Y: 44.6199951
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 12.8296833
            Roll: -72.2033691
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 9254204143581343418
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 15264696403938339230
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -1.32873535
            Y: 0.739746094
            Z: 51.6060638
          }
          Rotation {
            Pitch: 7.53809
            Yaw: 12.8310537
            Roll: -154.227142
          }
          Scale {
            X: 0.155643016
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 9254204143581343418
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 7679103889555304052
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 16.1752491
            Y: -44.1205177
            Z: 5.58431053
          }
          Rotation {
            Pitch: 7.53776884
            Yaw: 12.8328066
            Roll: -105.636871
          }
          Scale {
            X: 0.100493297
            Y: 0.100494437
            Z: 0.608899951
          }
        }
        ParentId: 9254204143581343418
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16543965669449438108
        Name: "Leg1"
        Transform {
          Location {
            X: -53.9955025
            Y: 96.8267
            Z: -58.9747467
          }
          Rotation {
            Pitch: -16.074585
            Yaw: -124.487366
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 16864440363515747924
        ChildIds: 11700316852308226650
        ChildIds: 6392114523435474087
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 16864440363515747924
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 13.4780273
            Y: 45.0523682
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.53832912
            Yaw: -22.2296906
            Roll: -72.2035751
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 16543965669449438108
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11700316852308226650
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.662719727
            Y: 1.36877441
            Z: 51.6060638
          }
          Rotation {
            Pitch: 7.53809
            Yaw: -22.2282867
            Roll: -154.226685
          }
          Scale {
            X: 0.155643016
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 16543965669449438108
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 6392114523435474087
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -12.8154297
            Y: -46.4211426
          }
          Rotation {
            Pitch: 7.53778934
            Yaw: -22.2274323
            Roll: -114.320503
          }
          Scale {
            X: 0.117119186
            Y: 0.117120527
            Z: 0.709638059
          }
        }
        ParentId: 16543965669449438108
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1667637249971735981
        Name: "Leg2"
        Transform {
          Location {
            X: 20.7726574
            Y: 112.207466
            Z: -72.8065
          }
          Rotation {
            Yaw: 156.549011
          }
          Scale {
            X: 1.13831162
            Y: 1.13831162
            Z: 1.13831162
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 17629807491187834308
        ChildIds: 7687262037476723499
        ChildIds: 15007979224963668133
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 17629807491187834308
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -14.8465576
            Y: 44.6199951
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 12.8296833
            Roll: -72.2033691
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 1667637249971735981
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 7687262037476723499
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -7.08849955
            Y: -1.75893414
            Z: 52.5425949
          }
          Rotation {
            Pitch: -1.44818115
            Yaw: 12.9209871
            Roll: -152.549622
          }
          Scale {
            X: 0.155643046
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 1667637249971735981
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 15007979224963668133
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 3.72897935
            Y: -49.5196609
            Z: 7.39033794
          }
          Rotation {
            Pitch: -1.44854736
            Yaw: 12.9227238
            Roll: -103.959229
          }
          Scale {
            X: 0.100493297
            Y: 0.100494437
            Z: 0.60890007
          }
        }
        ParentId: 1667637249971735981
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8457154838279414949
        Name: "Leg3"
        Transform {
          Location {
            X: 121.955
            Y: 75.8225937
            Z: -72.5158691
          }
          Rotation {
            Pitch: -11.4456177
            Yaw: 117.780815
            Roll: 11.6002169
          }
          Scale {
            X: 1.13831162
            Y: 1.13831162
            Z: 1.13831162
          }
        }
        ParentId: 4098627312272892617
        ChildIds: 810371222898721025
        ChildIds: 306918578905434955
        ChildIds: 6061440349765200320
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 810371222898721025
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -14.8465576
            Y: 44.6199951
            Z: 77.5785675
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 12.8296833
            Roll: -72.2033691
          }
          Scale {
            X: 0.119867295
            Y: 0.119868629
            Z: 0.726289213
          }
        }
        ParentId: 8457154838279414949
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 306918578905434955
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -1.32873535
            Y: 0.739746094
            Z: 51.6060638
          }
          Rotation {
            Pitch: 7.53809
            Yaw: 12.8310537
            Roll: -154.227142
          }
          Scale {
            X: 0.155643016
            Y: 0.155644789
            Z: 0.943058133
          }
        }
        ParentId: 8457154838279414949
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 6061440349765200320
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 16.1752491
            Y: -44.1205177
            Z: 5.58431053
          }
          Rotation {
            Pitch: 7.53776884
            Yaw: 12.8328066
            Roll: -105.636871
          }
          Scale {
            X: 0.100493297
            Y: 0.100494437
            Z: 0.608899951
          }
        }
        ParentId: 8457154838279414949
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13000546413779774201
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11821413564342300754
        Name: "FoodVisual"
        Transform {
          Location {
            X: -100
            Z: 50
          }
          Rotation {
            Yaw: -45
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17937364273216284170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8336247760868913969
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.950000048
              G: 0.905960381
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 883985107983124514
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1390767814793935368
        Name: "AntClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17937364273216284170
        UnregisteredParameters {
          Overrides {
            Name: "cs:FoodVisual"
            ObjectReference {
              SubObjectId: 11821413564342300754
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 11821139690110946645
          }
        }
      }
    }
    Assets {
      Id: 9471374831252195517
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 9430736327232783107
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
      }
    }
    Assets {
      Id: 96680746507564091
      Name: "Ring - Quarter Beveled Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_ring_faceted_thin_001_ref"
      }
    }
    Assets {
      Id: 12962513178075980095
      Name: "Sphere - Half Slice"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_wedge_001"
      }
    }
    Assets {
      Id: 13000546413779774201
      Name: "Cylinder - Chamfered Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_002"
      }
    }
    Assets {
      Id: 883985107983124514
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 8336247760868913969
      Name: "Food Cheese 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_food_generic_cheese_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 97
}
