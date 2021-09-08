Assets {
  Id: 12413830522082211936
  Name: "Draggable Camera"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4769900289687730961
      Objects {
        Id: 4769900289687730961
        Name: "Draggable Camera"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1968023670321749218
        ChildIds: 3383545793211609836
        UnregisteredParameters {
          Overrides {
            Name: "cs:CameraMoveBinding"
            String: "ability_secondary"
          }
          Overrides {
            Name: "cs:ScrollSpeed"
            Float: 100
          }
          Overrides {
            Name: "cs:ClampX"
            Vector2 {
              X: -10000
              Y: 10000
            }
          }
          Overrides {
            Name: "cs:ClampY"
            Vector2 {
              X: -10000
              Y: 10000
            }
          }
          Overrides {
            Name: "cs:CameraMoveBinding:tooltip"
            String: "The key which, if pressed by the player, will allow them to drag the camera."
          }
          Overrides {
            Name: "cs:ScrollSpeed:tooltip"
            String: "How far the camera moves relative to moving the cursor. Higher numbers will move the camera faster, and lower numbers will move the camera slower."
          }
          Overrides {
            Name: "cs:ClampX:tooltip"
            String: "The camera will not be able to move outside of these X bounds. Make sure the first value is lower than the second."
          }
          Overrides {
            Name: "cs:ClampY:tooltip"
            String: "The camera will not be able to move outside of these Y bounds. Make sure the first value is lower than the second."
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
        NetworkContext {
        }
      }
      Objects {
        Id: 1968023670321749218
        Name: "DraggableCameraClient"
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
        ParentId: 4769900289687730961
        UnregisteredParameters {
          Overrides {
            Name: "cs:Camera"
            ObjectReference {
              SubObjectId: 3383545793211609836
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
        Script {
          ScriptAsset {
            Id: 17602896061753053205
          }
        }
      }
      Objects {
        Id: 3383545793211609836
        Name: "Draggable Camera"
        Transform {
          Location {
            Z: 500
          }
          Rotation {
            Pitch: -33
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4769900289687730961
        UnregisteredParameters {
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
        Camera {
          UseAsDefault: true
          InitialDistance: 600
          IsDistanceAdjustable: true
          MinDistance: 300
          MaxDistance: 1200
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 95
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
          UseAsAudioListener: true
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "A top-down camera that can be dragged around the X-Y plane by holding Right Click (or whatever binding you select.)\r\n\r\nThe camera has configurable bindings, X and Y boundaries, and scroll speed. Feel free to hop into DraggableCameraClient.lua to modify the camera to suit your project\'s needs.\r\n\r\nCertain camera logic pulled from Mergelandia."
  }
  SerializationVersion: 98
  DirectlyPublished: true
}
