Assets {
  Id: 11666330275160844173
  Name: "Ant"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6085474421704206694
      Objects {
        Id: 6085474421704206694
        Name: "Ant"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10502976312462210973
        ChildIds: 13532279741720607089
        UnregisteredParameters {
          Overrides {
            Name: "cs:Speed"
            Float: 3
          }
          Overrides {
            Name: "cs:Type"
            String: "Soldier"
          }
          Overrides {
            Name: "cs:SpeedMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:Health"
            Float: 15
          }
          Overrides {
            Name: "cs:Damage"
            Float: 1
          }
          Overrides {
            Name: "cs:AttackSpeed"
            Float: 0.5
          }
          Overrides {
            Name: "cs:MaxHealth"
            Float: 15
          }
          Overrides {
            Name: "cs:Speed:tooltip"
            String: "How fast the ant will move"
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
          FilePartitionName: "Ant"
        }
      }
      Objects {
        Id: 10502976312462210973
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
        ParentId: 6085474421704206694
        ChildIds: 12896768793721941523
        ChildIds: 6321319620956792939
        ChildIds: 16283821592128653700
        ChildIds: 745025937401829626
        ChildIds: 15392640040166782688
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
        Id: 12896768793721941523
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
        ParentId: 10502976312462210973
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
        Id: 6321319620956792939
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
        ParentId: 10502976312462210973
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
        Id: 16283821592128653700
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
        ParentId: 10502976312462210973
        UnregisteredParameters {
          Overrides {
            Name: "cs:PherTrigger"
            ObjectReference {
              SubObjectId: 12896768793721941523
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
        Id: 745025937401829626
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
        ParentId: 10502976312462210973
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
        Id: 15392640040166782688
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
        ParentId: 10502976312462210973
        ChildIds: 1883284959618618143
        ChildIds: 6649872007075768282
        ChildIds: 2159861745317026564
        ChildIds: 6581077015713510238
        ChildIds: 3509259035256970920
        ChildIds: 13662231590664022302
        ChildIds: 593686138465484550
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
              SubObjectId: 16283821592128653700
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
        Id: 1883284959618618143
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
        ParentId: 15392640040166782688
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
        Id: 6649872007075768282
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
        ParentId: 15392640040166782688
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
        Id: 2159861745317026564
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
        ParentId: 15392640040166782688
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
        Id: 6581077015713510238
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
        ParentId: 15392640040166782688
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
        Id: 3509259035256970920
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
        ParentId: 15392640040166782688
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
        Id: 13662231590664022302
        Name: "AttackActivity"
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
        ParentId: 15392640040166782688
        UnregisteredParameters {
          Overrides {
            Name: "cs:PherTrigger"
            ObjectReference {
              SubObjectId: 12896768793721941523
            }
          }
          Overrides {
            Name: "cs:HitboxTrigger"
            ObjectReference {
              SubObjectId: 6321319620956792939
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
            Id: 16173495246270346640
          }
        }
      }
      Objects {
        Id: 593686138465484550
        Name: "FightFollowActivity"
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
        ParentId: 15392640040166782688
        UnregisteredParameters {
          Overrides {
            Name: "cs:PherTracker"
            ObjectReference {
              SubObjectId: 16283821592128653700
            }
          }
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
            Id: 10644540542362755635
          }
        }
      }
      Objects {
        Id: 13532279741720607089
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
        ParentId: 6085474421704206694
        ChildIds: 12160242249120557406
        ChildIds: 18136374303903605752
        ChildIds: 17940166606055831803
        ChildIds: 13355168202863297960
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
        Id: 12160242249120557406
        Name: "SoldierAntKitBash"
        Transform {
          Location {
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
        ParentId: 13532279741720607089
        ChildIds: 11352441572362565374
        ChildIds: 15282587864310055072
        ChildIds: 7031940739297707037
        ChildIds: 11214372466361003223
        ChildIds: 16509233434736014793
        ChildIds: 15333297094082412246
        ChildIds: 16407536142242161068
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
        Id: 11352441572362565374
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
        ParentId: 12160242249120557406
        ChildIds: 2634575339712211774
        ChildIds: 17760660817423194943
        ChildIds: 4398336640563007024
        ChildIds: 7763192388637745582
        ChildIds: 3247644581324986629
        ChildIds: 5006395420234966623
        ChildIds: 16991198457135967891
        ChildIds: 12414340432165778773
        ChildIds: 3751763993297032092
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
        Id: 2634575339712211774
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 17760660817423194943
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 4398336640563007024
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 7763192388637745582
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 3247644581324986629
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
        ParentId: 11352441572362565374
        ChildIds: 18364114384614301759
        ChildIds: 6176264364829799967
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
        Id: 18364114384614301759
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
        ParentId: 3247644581324986629
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
              R: 0.799999952
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
        Id: 6176264364829799967
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
        ParentId: 3247644581324986629
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
              R: 0.799999952
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
        Id: 5006395420234966623
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 16991198457135967891
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 12414340432165778773
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 3751763993297032092
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
        ParentId: 11352441572362565374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14489884669867359557
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.329999983
              B: 0.329999983
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
        Id: 15282587864310055072
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
        ParentId: 12160242249120557406
        ChildIds: 15361484973034786477
        ChildIds: 6218575055317056698
        ChildIds: 12777749568036303621
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
        Id: 15361484973034786477
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
        ParentId: 15282587864310055072
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
        Id: 6218575055317056698
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
        ParentId: 15282587864310055072
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
        Id: 12777749568036303621
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
        ParentId: 15282587864310055072
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
        Id: 7031940739297707037
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
        ParentId: 12160242249120557406
        ChildIds: 13662866210198625047
        ChildIds: 7268047397527638087
        ChildIds: 5501760772153222059
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
        Id: 13662866210198625047
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
        ParentId: 7031940739297707037
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
        Id: 7268047397527638087
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
        ParentId: 7031940739297707037
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
        Id: 5501760772153222059
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
        ParentId: 7031940739297707037
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
        Id: 11214372466361003223
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
        ParentId: 12160242249120557406
        ChildIds: 9759107273979893267
        ChildIds: 2207168387728901472
        ChildIds: 2926156438542676762
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
        Id: 9759107273979893267
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
        ParentId: 11214372466361003223
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
        Id: 2207168387728901472
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
        ParentId: 11214372466361003223
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
        Id: 2926156438542676762
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
        ParentId: 11214372466361003223
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
        Id: 16509233434736014793
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
        ParentId: 12160242249120557406
        ChildIds: 2809003096265351228
        ChildIds: 17669683357771036667
        ChildIds: 4626122139464661118
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
        Id: 2809003096265351228
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
        ParentId: 16509233434736014793
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
        Id: 17669683357771036667
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
        ParentId: 16509233434736014793
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
        Id: 4626122139464661118
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
        ParentId: 16509233434736014793
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
        Id: 15333297094082412246
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
        ParentId: 12160242249120557406
        ChildIds: 16593345412202354971
        ChildIds: 1042700635125097488
        ChildIds: 4940074715593757251
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
        Id: 16593345412202354971
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
        ParentId: 15333297094082412246
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
        Id: 1042700635125097488
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
        ParentId: 15333297094082412246
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
        Id: 4940074715593757251
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
        ParentId: 15333297094082412246
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
        Id: 16407536142242161068
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
        ParentId: 12160242249120557406
        ChildIds: 10224111859017250140
        ChildIds: 5699018595908372369
        ChildIds: 8387618530465839708
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
        Id: 10224111859017250140
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
        ParentId: 16407536142242161068
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
        Id: 5699018595908372369
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
        ParentId: 16407536142242161068
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
        Id: 8387618530465839708
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
        ParentId: 16407536142242161068
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
        Id: 18136374303903605752
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
        ParentId: 13532279741720607089
        UnregisteredParameters {
          Overrides {
            Name: "cs:FoodVisual"
            ObjectReference {
              SelfId: 841534158063459245
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
      Objects {
        Id: 17940166606055831803
        Name: "AttackVFX"
        Transform {
          Location {
            X: 150
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13532279741720607089
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
        Blueprint {
          BlueprintAsset {
            Id: 1163765928706645129
          }
          TeamSettings {
          }
          Vfx {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
      Objects {
        Id: 13355168202863297960
        Name: "AntAttackClient"
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
        ParentId: 13532279741720607089
        UnregisteredParameters {
          Overrides {
            Name: "cs:AttackVFX"
            ObjectReference {
              SubObjectId: 17940166606055831803
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
            Id: 3475605915820015184
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
      Id: 1163765928706645129
      Name: "Plasma Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_plasma_impact"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 97
}
