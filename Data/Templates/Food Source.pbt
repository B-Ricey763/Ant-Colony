Assets {
  Id: 8858284903139370176
  Name: "Food Source"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9812288447714917136
      Objects {
        Id: 9812288447714917136
        Name: "Food Source"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4494021318730891717
        ChildIds: 15287162475141928865
        UnregisteredParameters {
          Overrides {
            Name: "cs:SlowMultiplier"
            Float: 0.75
          }
          Overrides {
            Name: "cs:Food"
            Int: 50
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
          FilePartitionName: "Food Source"
        }
      }
      Objects {
        Id: 4494021318730891717
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
        ParentId: 9812288447714917136
        ChildIds: 17365920952786095277
        ChildIds: 16107918730906765809
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
        Id: 17365920952786095277
        Name: "Pheromone"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 2.75
            Y: 2.75
            Z: 2.75
          }
        }
        ParentId: 4494021318730891717
        UnregisteredParameters {
          Overrides {
            Name: "cs:Type"
            String: "Retrieve"
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
        Id: 16107918730906765809
        Name: "FoodGiver"
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
        ParentId: 4494021318730891717
        UnregisteredParameters {
          Overrides {
            Name: "cs:AntTrigger"
            ObjectReference {
              SubObjectId: 17365920952786095277
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
            Id: 12207472224316918083
          }
        }
      }
      Objects {
        Id: 15287162475141928865
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
        ParentId: 9812288447714917136
        ChildIds: 8558658788443552906
        ChildIds: 13453806695578418850
        ChildIds: 8647753597173426244
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
        Id: 8558658788443552906
        Name: "Food Source"
        Transform {
          Location {
            Z: 3.97572327
          }
          Rotation {
            Pitch: 4.32628918
            Yaw: 22.2552834
            Roll: 1.04267287
          }
          Scale {
            X: 1.26210368
            Y: 1.26210368
            Z: 1.26210368
          }
        }
        ParentId: 15287162475141928865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.786
              G: 0.76517868
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4686690056851062644
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.36399651
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.59484971
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
            Id: 4214934300711528327
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
        Id: 13453806695578418850
        Name: "Food Source"
        Transform {
          Location {
            Z: 3.97572327
          }
          Rotation {
            Pitch: 4.32628918
            Yaw: 62.7419624
            Roll: 1.04266274
          }
          Scale {
            X: 1.26210439
            Y: 1.26210308
            Z: 2.90160203
          }
        }
        ParentId: 15287162475141928865
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.786
              G: 0.76517868
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4686690056851062644
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.36399651
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.59484971
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
            Id: 4214934300711528327
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
        Id: 8647753597173426244
        Name: "Flare Ray VFX"
        Transform {
          Location {
            Z: -84.0363617
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 30
            Y: 8
            Z: 1
          }
        }
        ParentId: 15287162475141928865
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.966887355
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 1
              G: 0.615894
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 0.99
              G: 0.452384114
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Offset A"
            Float: 0
          }
          Overrides {
            Name: "bp:Emissive Brightness"
            Float: 0.589291573
          }
          Overrides {
            Name: "bp:Ray Density"
            Float: 3.81970549
          }
          Overrides {
            Name: "bp:Ray Width"
            Float: 5.85635471
          }
          Overrides {
            Name: "bp:Ray Appearance"
            Enum {
              Value: "mc:erayappearance:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Ray Color Method"
            Enum {
              Value: "mc:eraycoloringoptions:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Ray Speed"
            Float: 4.98035622
          }
          Overrides {
            Name: "bp:Depth Fade"
            Float: 0.122134179
          }
          Overrides {
            Name: "bp:Align with Sun"
            Bool: false
          }
          Overrides {
            Name: "bp:Camera Depth Fade Distance"
            Float: 2.20222521
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
            Id: 8141935410761630427
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
    }
    Assets {
      Id: 4214934300711528327
      Name: "Rock Pile 002"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rocks_small_002"
      }
    }
    Assets {
      Id: 8141935410761630427
      Name: "Flare Ray VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ray_system"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 98
}
