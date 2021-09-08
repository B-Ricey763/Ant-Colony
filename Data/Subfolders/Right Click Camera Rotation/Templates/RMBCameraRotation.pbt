Assets {
  Id: 17559549087580804135
  Name: "RMBCameraRotation"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8778115636765377586
      Objects {
        Id: 8778115636765377586
        Name: "RMBCameraRotation"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 724324913679364851
        UnregisteredParameters {
          Overrides {
            Name: "cs:active"
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
        Script {
          ScriptAsset {
            Id: 1928169909175387163
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "A simple script that allows the player to rotate the camera by holding the right mouse button.\r\n\r\nTO USE: Drag into any client context. (A good spot is \"[Framework] Camera Settings\"->\"Client Context\")\r\n\r\nFOR THE BEST RESULTS: \r\n1. Set the player\'s MovementControlMode to \'View Relative.\'\r\n2. Set the player\'s Facing Mode to \'Face Movement.\'\r\n3. Enable \'Adjustable Distance\' on the camera."
  }
  SerializationVersion: 98
  DirectlyPublished: true
}
