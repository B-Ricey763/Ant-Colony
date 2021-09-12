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
            Float: 550
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
            Name: "cs:Pheromones"
            String: "Follow,Fight,Block,Retrieve"
          }
          Overrides {
            Name: "cs:CustomTeamColor"
            Color {
              A: 1
            }
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
          Overrides {
            Name: "cs:CustomTeamColor:isrep"
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
            X: 12
            Y: 12
            Z: 12
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
        ChildIds: 498234235071796752
        ChildIds: 18136374303903605752
        ChildIds: 17940166606055831803
        ChildIds: 13355168202863297960
        ChildIds: 10752483868962289240
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
        Id: 498234235071796752
        Name: "AnimatedAntAsset"
        Transform {
          Location {
            Y: 5.7220459e-06
            Z: -28.6141357
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13532279741720607089
        ChildIds: 5702728255659678964
        ChildIds: 17590692102651082015
        ChildIds: 11501496481856237019
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
        Id: 5702728255659678964
        Name: "AntAnimated"
        Transform {
          Location {
            Z: 35.0079346
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 498234235071796752
        ChildIds: 11960145151287958227
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
        Id: 11960145151287958227
        Name: "Animation"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.382383198
            Y: 0.382383198
            Z: 0.382383198
          }
        }
        ParentId: 5702728255659678964
        ChildIds: 4442240424763683305
        ChildIds: 12043961198554408713
        ChildIds: 6016847023099181641
        ChildIds: 13748096975208187268
        ChildIds: 5165324319898266996
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
        Id: 4442240424763683305
        Name: "HierarchyAnimation"
        Transform {
          Location {
            X: -3900.03247
            Y: -91.7029648
            Z: 1519.43311
          }
          Rotation {
            Pitch: 2.31240129
            Yaw: 8.86393833
            Roll: 3.89153385
          }
          Scale {
            X: 4.97836161
            Y: 4.97836161
            Z: 4.97836161
          }
        }
        ParentId: 11960145151287958227
        UnregisteredParameters {
          Overrides {
            Name: "cs:looping"
            Bool: true
          }
          Overrides {
            Name: "cs:PlayEvent"
            String: "PlayAntAnim"
          }
          Overrides {
            Name: "cs:AutoPlay"
            Bool: true
          }
          Overrides {
            Name: "cs:QMathLib"
            AssetReference {
              Id: 11646367794685597214
            }
          }
          Overrides {
            Name: "cs:isCubic"
            Bool: false
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
            Id: 13243673205334541749
          }
        }
      }
      Objects {
        Id: 12043961198554408713
        Name: "BasePose"
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
        ParentId: 11960145151287958227
        ChildIds: 8736337829457426955
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
        Id: 8736337829457426955
        Name: "Node"
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
        ParentId: 12043961198554408713
        ChildIds: 10957693840549338298
        ChildIds: 1057154563633485418
        ChildIds: 9422478324475322975
        ChildIds: 5875276331501267511
        ChildIds: 7329935609675104557
        ChildIds: 946769128285890099
        ChildIds: 10614825349446356176
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 10957693840549338298
        Name: "Body"
        Transform {
          Location {
            X: -79.6799164
            Y: -3.17447829
            Z: 52.8791847
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 851467346017777212
        ChildIds: 14520120559916130548
        ChildIds: 6569157790950837566
        ChildIds: 11324526490396052594
        ChildIds: 10374290100624652112
        ChildIds: 7241721259107379342
        ChildIds: 13207415707804389845
        ChildIds: 13422447860219974962
        ChildIds: 13218293934358945700
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 851467346017777212
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
        ParentId: 10957693840549338298
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
        Id: 14520120559916130548
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
        ParentId: 10957693840549338298
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
        Id: 6569157790950837566
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
        ParentId: 10957693840549338298
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
        Id: 11324526490396052594
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
        ParentId: 10957693840549338298
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
        Id: 10374290100624652112
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
        ParentId: 10957693840549338298
        ChildIds: 4474926632243912554
        ChildIds: 15024044204876874540
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
        Id: 4474926632243912554
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
        ParentId: 10374290100624652112
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
              R: 0.960000038
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
        Id: 15024044204876874540
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
        ParentId: 10374290100624652112
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
              R: 0.960000038
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
        Id: 7241721259107379342
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
        ParentId: 10957693840549338298
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
        Id: 13207415707804389845
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
        ParentId: 10957693840549338298
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
        Id: 13422447860219974962
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
        ParentId: 10957693840549338298
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
        Id: 13218293934358945700
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
        ParentId: 10957693840549338298
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
        Id: 1057154563633485418
        Name: "Node"
        Transform {
          Location {
            X: -38.2785759
            Y: -26.0346165
            Z: 77.5462494
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: -8.06298828
            Roll: -66.1408691
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 2869197344306731860
        ChildIds: 2599116245620881411
        ChildIds: 16405528999840473533
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 2869197344306731860
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 0.00116985489
            Y: 0.00062350696
            Z: 176.959198
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -8.53773599e-06
            Roll: -6.40331223e-07
          }
          Scale {
            X: 1.19867289
            Y: 1.19868624
            Z: 7.26289177
          }
        }
        ParentId: 1057154563633485418
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 2599116245620881411
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.00269355
            Y: -389.391571
            Z: 532.841492
          }
          Rotation {
            Pitch: -0.00137969817
            Yaw: 0.000194334905
            Roll: -82.0232849
          }
          Scale {
            X: 1.55643022
            Y: 1.55644798
            Z: 9.43058205
          }
        }
        ParentId: 1057154563633485418
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 16405528999840473533
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 0.00708303927
            Y: -1034.30261
            Z: 838.726624
          }
          Rotation {
            Pitch: -0.00228128303
            Yaw: 0.000168121333
            Roll: -42.1172485
          }
          Scale {
            X: 1.17119181
            Y: 1.17120528
            Z: 7.09638071
          }
        }
        ParentId: 1057154563633485418
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 9422478324475322975
        Name: "Node"
        Transform {
          Location {
            X: -4.95517445
            Y: -32.4547615
            Z: 80.2108231
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 12.8297043
            Roll: -72.2033768
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 579588523741926704
        ChildIds: 15884551211525791581
        ChildIds: 14456303381799684519
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 579588523741926704
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.000914996432
            Y: -0.000461395161
            Z: 267.256561
          }
          Rotation {
            Yaw: -8.53773713e-07
          }
          Scale {
            X: 1.36446333
            Y: 1.36447859
            Z: 8.26743507
          }
        }
        ParentId: 9422478324475322975
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 15884551211525791581
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.00578926224
            Y: -443.250702
            Z: 672.357361
          }
          Rotation {
            Pitch: -0.00137286796
            Yaw: 0.000182500313
            Roll: -82.0239487
          }
          Scale {
            X: 1.77170265
            Y: 1.77172267
            Z: 10.7349405
          }
        }
        ParentId: 9422478324475322975
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 14456303381799684519
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 11.4536858
            Y: -1113.54651
            Z: 1026.58447
          }
          Rotation {
            Pitch: -0.00312139629
            Yaw: 0.000408785127
            Roll: -33.4339256
          }
          Scale {
            X: 1.14392686
            Y: 1.14393985
            Z: 6.93117905
          }
        }
        ParentId: 9422478324475322975
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 5875276331501267511
        Name: "Node"
        Transform {
          Location {
            X: 23.4385929
            Y: -21.5487194
            Z: 76.4926376
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 49.5652885
            Roll: -72.2033691
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 11403095550615760534
        ChildIds: 11348114002685017050
        ChildIds: 4473231044209699024
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 11403095550615760534
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.00166476355
            Y: -0.00139665557
            Z: 389.973389
          }
          Rotation {
          }
          Scale {
            X: 1.36446333
            Y: 1.36447859
            Z: 8.26743507
          }
        }
        ParentId: 5875276331501267511
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 11348114002685017050
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.00723268092
            Y: -443.251984
            Z: 795.0755
          }
          Rotation {
            Pitch: -0.00137286796
            Yaw: 0.00017799747
            Roll: -82.0239258
          }
          Scale {
            X: 1.77170265
            Y: 1.77172267
            Z: 10.7349405
          }
        }
        ParentId: 5875276331501267511
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 4473231044209699024
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 11.452775
            Y: -1113.54846
            Z: 1149.30432
          }
          Rotation {
            Pitch: -0.00312139629
            Yaw: 0.000409848319
            Roll: -33.4339218
          }
          Scale {
            X: 1.14392686
            Y: 1.14393985
            Z: 6.93117905
          }
        }
        ParentId: 5875276331501267511
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 7329935609675104557
        Name: "Node"
        Transform {
          Location {
            X: -37.4824028
            Y: 22.2708302
            Z: 75.1170654
          }
          Rotation {
            Pitch: -7.35594273
            Yaw: -146.707275
            Roll: -66.1406097
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 9268654220351529843
        ChildIds: 15618908145217915417
        ChildIds: 9021614571488414762
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 9268654220351529843
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.000710797904
            Y: 0.000386574306
            Z: 237.51265
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -3.41509394e-06
            Roll: 3.41509394e-06
          }
          Scale {
            X: 1.19867289
            Y: 1.19868624
            Z: 7.26289177
          }
        }
        ParentId: 7329935609675104557
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 15618908145217915417
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.00503793638
            Y: -389.392761
            Z: 593.396851
          }
          Rotation {
            Pitch: -0.00137969817
            Yaw: 0.000193221247
            Roll: -82.0232773
          }
          Scale {
            X: 1.55643022
            Y: 1.55644798
            Z: 9.43058205
          }
        }
        ParentId: 7329935609675104557
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 9021614571488414762
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 0.0062849503
            Y: -1034.30286
            Z: 899.280212
          }
          Rotation {
            Pitch: -0.00228128303
            Yaw: 0.00016750778
            Roll: -42.1172409
          }
          Scale {
            X: 1.17119181
            Y: 1.17120528
            Z: 7.09638071
          }
        }
        ParentId: 7329935609675104557
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 946769128285890099
        Name: "Node"
        Transform {
          Location {
            X: -4.75661
            Y: 26.5677395
            Z: 78.8010178
          }
          Rotation {
            Pitch: 7.53832912
            Yaw: 48.4643517
            Roll: -72.2021179
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 15883734056991996184
        ChildIds: 7350403577933772749
        ChildIds: 10663786969611686636
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 15883734056991996184
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 272.99588
            Y: 100.536011
            Z: -117.602089
          }
          Rotation {
            Pitch: -48.5592117
            Yaw: 137.466599
            Roll: -124.489616
          }
          Scale {
            X: 1.36446333
            Y: 1.36447859
            Z: 8.26743603
          }
        }
        ParentId: 946769128285890099
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 7350403577933772749
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 705.949097
            Y: -151.977783
            Z: -458.9534
          }
          Rotation {
            Pitch: -53.4025
            Yaw: 149.524307
            Roll: 145.769104
          }
          Scale {
            X: 1.77170277
            Y: 1.77172267
            Z: 10.7349415
          }
        }
        ParentId: 946769128285890099
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 10663786969611686636
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 1112.96875
            Y: -609.540039
            Z: -906.027954
          }
          Rotation {
            Pitch: -53.4011688
            Yaw: 149.526215
            Roll: -165.641968
          }
          Scale {
            X: 1.14392686
            Y: 1.14394
            Z: 6.93118
          }
        }
        ParentId: 946769128285890099
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 10614825349446356176
        Name: "Node"
        Transform {
          Location {
            X: 23.2693977
            Y: 14.393054
            Z: 60.6558037
          }
          Rotation {
            Pitch: -6.27160645
            Yaw: 156.11821
            Roll: -63.6366882
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8736337829457426955
        ChildIds: 18132189729606976529
        ChildIds: 14236919711842126885
        ChildIds: 18316525407172939365
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
            Id: 12095835209017042614
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
        Id: 18132189729606976529
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.0011223125
            Y: 0.00215733401
            Z: 402.386963
          }
          Rotation {
          }
          Scale {
            X: 1.36446333
            Y: 1.36447859
            Z: 8.26743507
          }
        }
        ParentId: 10614825349446356176
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 14236919711842126885
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: -0.0067837555
            Y: -443.248901
            Z: 807.49
          }
          Rotation {
            Pitch: -0.00137286796
            Yaw: 0.000184104
            Roll: -82.0239487
          }
          Scale {
            X: 1.77170265
            Y: 1.77172267
            Z: 10.7349405
          }
        }
        ParentId: 10614825349446356176
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 18316525407172939365
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 11.4543715
            Y: -1113.54395
            Z: 1161.71655
          }
          Rotation {
            Pitch: -0.00312822638
            Yaw: 0.000412957277
            Roll: -33.4339294
          }
          Scale {
            X: 1.14392686
            Y: 1.14393985
            Z: 6.93117905
          }
        }
        ParentId: 10614825349446356176
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
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
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
        Id: 6016847023099181641
        Name: "1"
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
        ParentId: 11960145151287958227
        ChildIds: 8916567044987629739
        UnregisteredParameters {
          Overrides {
            Name: "cs:animTime"
            Float: 0
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 8916567044987629739
        Name: "Node"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -5.89312744
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6016847023099181641
        ChildIds: 17288164648078625647
        ChildIds: 5039442085745402112
        ChildIds: 12283415283292890573
        ChildIds: 1624803667792677659
        ChildIds: 9705524360589166832
        ChildIds: 6951076592243903761
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 17288164648078625647
        Name: "Node"
        Transform {
          Location {
            X: -39.1188164
            Y: -26.8531475
            Z: 77.5462494
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: 2.92062163
            Roll: -66.1409912
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 5039442085745402112
        Name: "Node"
        Transform {
          Location {
            X: -4.95517445
            Y: -32.4547615
            Z: 80.2108231
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: -23.8312683
            Roll: -72.2021484
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 12283415283292890573
        Name: "Node"
        Transform {
          Location {
            X: 23.4385929
            Y: -21.5487194
            Z: 76.4926376
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 59.7780304
            Roll: -72.2028503
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 1624803667792677659
        Name: "Node"
        Transform {
          Location {
            X: -37.4824028
            Y: 22.2708302
            Z: 75.1170654
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: -131.878601
            Roll: -66.1407471
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 9705524360589166832
        Name: "Node"
        Transform {
          Location {
            X: -4.75645638
            Y: 26.5677528
            Z: 78.8010178
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 43.8204918
            Roll: -72.2012329
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 6951076592243903761
        Name: "Node"
        Transform {
          Location {
            X: 23.2693977
            Y: 14.393054
            Z: 60.6558037
          }
          Rotation {
            Pitch: -6.27160645
            Yaw: 156.11821
            Roll: -63.6366882
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 8916567044987629739
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 13748096975208187268
        Name: "2"
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
        ParentId: 11960145151287958227
        ChildIds: 5949553813146814743
        UnregisteredParameters {
          Overrides {
            Name: "cs:animTime"
            Float: 0.2
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 5949553813146814743
        Name: "Node"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 2.99000335
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13748096975208187268
        ChildIds: 12846741407383782112
        ChildIds: 3637683648380461710
        ChildIds: 13105100382044390349
        ChildIds: 9178457850257629983
        ChildIds: 3962007661845163368
        ChildIds: 15502112589040751756
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 12846741407383782112
        Name: "Node"
        Transform {
          Location {
            X: -38.2785759
            Y: -26.0346165
            Z: 77.5462494
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: -44.2757874
            Roll: -66.1409607
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 3637683648380461710
        Name: "Node"
        Transform {
          Location {
            X: -4.95517445
            Y: -32.4547615
            Z: 80.2108231
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 31.4376888
            Roll: -72.203064
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 13105100382044390349
        Name: "Node"
        Transform {
          Location {
            X: 23.4385929
            Y: -21.5487194
            Z: 76.4926376
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 20.3505535
            Roll: -72.2019958
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 9178457850257629983
        Name: "Node"
        Transform {
          Location {
            X: -37.4824028
            Y: 22.2708302
            Z: 75.1170654
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: -169.397736
            Roll: -66.1409912
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 3962007661845163368
        Name: "Node"
        Transform {
          Location {
            X: -4.75661
            Y: 26.5677395
            Z: 78.8010178
          }
          Rotation {
            Pitch: 7.53836346
            Yaw: 76.5571365
            Roll: -72.2015381
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 15502112589040751756
        Name: "Node"
        Transform {
          Location {
            X: 23.2693977
            Y: 14.393054
            Z: 60.6558037
          }
          Rotation {
            Pitch: -6.27160645
            Yaw: 105.745125
            Roll: -63.6375122
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 5949553813146814743
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 5165324319898266996
        Name: "3"
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
        ParentId: 11960145151287958227
        ChildIds: 17626843142165258787
        UnregisteredParameters {
          Overrides {
            Name: "cs:animTime"
            Float: 0.2
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 17626843142165258787
        Name: "Node"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -5.89312744
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5165324319898266996
        ChildIds: 635892165215005108
        ChildIds: 1327273688658326002
        ChildIds: 9893421110154863628
        ChildIds: 7233796153745396663
        ChildIds: 11771597117827111624
        ChildIds: 7306741922215928274
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 635892165215005108
        Name: "Node"
        Transform {
          Location {
            X: -39.1188164
            Y: -26.8531475
            Z: 77.5462494
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: 2.92062163
            Roll: -66.1409912
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 1327273688658326002
        Name: "Node"
        Transform {
          Location {
            X: -4.95517445
            Y: -32.4547615
            Z: 80.2108231
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: -23.8312683
            Roll: -72.2021484
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 9893421110154863628
        Name: "Node"
        Transform {
          Location {
            X: 23.4385929
            Y: -21.5487194
            Z: 76.4926376
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 59.7780304
            Roll: -72.2028503
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 7233796153745396663
        Name: "Node"
        Transform {
          Location {
            X: -37.4824028
            Y: 22.2708302
            Z: 75.1170654
          }
          Rotation {
            Pitch: -7.35595703
            Yaw: -131.878601
            Roll: -66.1407471
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 11771597117827111624
        Name: "Node"
        Transform {
          Location {
            X: -4.75661
            Y: 26.5677395
            Z: 78.8010178
          }
          Rotation {
            Pitch: 7.5383358
            Yaw: 36.0083
            Roll: -72.201416
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 7306741922215928274
        Name: "Node"
        Transform {
          Location {
            X: 23.2693977
            Y: 14.393054
            Z: 60.6558037
          }
          Rotation {
            Pitch: -6.27160645
            Yaw: 156.11821
            Roll: -63.6366882
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.1
          }
        }
        ParentId: 17626843142165258787
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
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 17590692102651082015
        Name: "ClientInterpolate"
        Transform {
          Location {
            X: 407.34198
            Y: -329.444611
            Z: 12.178421
          }
          Rotation {
            Yaw: 2.73207461e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 498234235071796752
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
            Id: 11192573481923161174
          }
        }
      }
      Objects {
        Id: 11501496481856237019
        Name: "TeamColor"
        Transform {
          Location {
            X: -67.0090332
            Y: 0.0159912109
            Z: 73.1192551
          }
          Rotation {
            Yaw: 179.999985
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: -0.22676681
          }
        }
        ParentId: 498234235071796752
        ChildIds: 16565145571183525393
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 2
          }
          Overrides {
            Name: "bp:Shape Fill"
            Float: 0.700733602
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 4.77493763
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.686357498
              G: 1
              B: 0.36
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
        Blueprint {
          BlueprintAsset {
            Id: 6412508969258821711
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
      Objects {
        Id: 16565145571183525393
        Name: "TeamColorDisplay"
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
        ParentId: 11501496481856237019
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 6085474421704206694
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
            Id: 2530898997614350979
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
            X: -78.5195312
            Z: 24.809433
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
            Name: "bp:Color"
            Color {
              R: 0.409999967
              G: 0.252516538
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
          Overrides {
            Name: "cs:AttackSFX"
            ObjectReference {
              SubObjectId: 10752483868962289240
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
      Objects {
        Id: 10752483868962289240
        Name: "AttackSound"
        Transform {
          Location {
            X: -56.8387451
            Z: 47.8080597
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
        AudioInstance {
          AudioAsset {
            Id: 14900485359441015965
          }
          Volume: 1
          Falloff: 750
          Radius: 500
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
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
      Id: 6412508969258821711
      Name: "Glow Shape Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_glow"
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
    Assets {
      Id: 14900485359441015965
      Name: "Cracking Break Impact Hit 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_cracking_break_impact_hit_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 98
}
