Assets {
  Id: 9907616146743200762
  Name: "FoodPathGif"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12305527242119061361
      Objects {
        Id: 12305527242119061361
        Name: "SpritePlayer"
        Transform {
          Scale {
            X: 0.289554417
            Y: 0.289554417
            Z: 0.289554417
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 225216005344877071
        ChildIds: 15991938775422306345
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
        Id: 225216005344877071
        Name: "AtlasAnimator"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1.6
            Z: 0.899999917
          }
        }
        ParentId: 12305527242119061361
        UnregisteredParameters {
          Overrides {
            Name: "cs:PortalObject"
            ObjectReference {
              SubObjectId: 15991938775422306345
            }
          }
          Overrides {
            Name: "cs:Rows"
            Int: 4
          }
          Overrides {
            Name: "cs:Columns"
            Int: 4
          }
          Overrides {
            Name: "cs:FPS"
            Int: 18
          }
          Overrides {
            Name: "cs:GameID"
            String: "c4e2c1/antcolonygifs1"
          }
          Overrides {
            Name: "cs:NumberOfSheets"
            Int: 3
          }
          Overrides {
            Name: "cs:EndFramesOffset"
            Int: 3
          }
          Overrides {
            Name: "cs:StartSheetIndex"
            Int: 1
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
            Id: 6451325529007986387
          }
        }
      }
      Objects {
        Id: 15991938775422306345
        Name: "Buffer1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1.6
            Z: 0.9
          }
        }
        ParentId: 12305527242119061361
        UnregisteredParameters {
          Overrides {
            Name: "bp:Use World Capture"
            Bool: false
          }
          Overrides {
            Name: "bp:Game ID"
            String: "a2ebe8/gifuploader"
          }
          Overrides {
            Name: "bp:Portal Shape"
            Int: 2
          }
          Overrides {
            Name: "bp:Portal Spread"
            Float: 1
          }
          Overrides {
            Name: "bp:Edge Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:View Distortion Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Swirl Element Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Distortion"
            Float: 0
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Intersection Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: false
          }
          Overrides {
            Name: "bp:Unlit"
            Bool: true
          }
          Overrides {
            Name: "bp:Mask Range"
            Float: 1
          }
          Overrides {
            Name: "bp:Mask Hardness"
            Float: 1
          }
          Overrides {
            Name: "bp:Use Radial Mask"
            Bool: false
          }
          Overrides {
            Name: "bp:Mask Color"
            Color {
            }
          }
          Overrides {
            Name: "bp:U Scale"
            Float: 0
          }
          Overrides {
            Name: "bp:V Scale"
            Float: 0
          }
          Overrides {
            Name: "bp:U Offset"
            Float: -0
          }
          Overrides {
            Name: "bp:V Offset"
            Float: -0
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
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
        Blueprint {
          BlueprintAsset {
            Id: 11337689419568862315
          }
          TeamSettings {
          }
        }
      }
    }
    Assets {
      Id: 11337689419568862315
      Name: "Game Portal"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_webportal"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 100
}
