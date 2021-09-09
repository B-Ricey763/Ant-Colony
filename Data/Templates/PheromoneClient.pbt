Assets {
  Id: 8756663139210238839
  Name: "PheromoneClient"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15722002967888165853
      Objects {
        Id: 15722002967888165853
        Name: "PheromoneClient"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 3
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "cs:Type"
            String: "Follow"
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9380945477228822454
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 12.8741264
              G: 100
              B: 8.00000381
              A: 1
            }
          }
          Overrides {
            Name: "cs:Type:isrep"
            Bool: true
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
            Id: 11767570182938301858
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 11767570182938301858
      Name: "Cone - Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_convex_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 98
}
