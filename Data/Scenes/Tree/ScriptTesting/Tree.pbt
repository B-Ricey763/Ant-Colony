Name: "ScriptTesting"
RootId: 15146144627536064546
Objects {
  Id: 9075376143127677212
  Name: "Static Player Equipment"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15146144627536064546
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16657464430720987128
      value {
        Overrides {
          Name: "Name"
          String: "Static Player Equipment"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "cs:EquipmentTemplate"
          AssetReference {
            Id: 9439221140441414754
          }
        }
      }
    }
    TemplateAsset {
      Id: 8395179537800625630
    }
  }
}
Objects {
  Id: 545885846661575972
  Name: "Cube - Bottom-Aligned"
  Transform {
    Location {
      X: -600
      Y: 800
    }
    Rotation {
      Yaw: -19.9999943
    }
    Scale {
      X: 1
      Y: 9.25
      Z: 4.25000048
    }
  }
  ParentId: 15146144627536064546
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
      Id: 1990013444985363097
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
Objects {
  Id: 5886486340009436552
  Name: "Cube - Bottom-Aligned"
  Transform {
    Location {
      X: 1850
      Y: -300
    }
    Rotation {
      Yaw: -20
    }
    Scale {
      X: 1
      Y: 9.25
      Z: 4.25000048
    }
  }
  ParentId: 15146144627536064546
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
      Id: 1990013444985363097
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
  Id: 13793501792289967447
  Name: "Worker Ant"
  Transform {
    Location {
      Y: -525
      Z: 75
    }
    Rotation {
      Yaw: 45
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15146144627536064546
  UnregisteredParameters {
    Overrides {
      Name: "cs:Speed"
      Float: 2.5
    }
    Overrides {
      Name: "cs:Speed:tooltip"
      String: "How fast the ant will move"
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
    FilePartitionName: "Worker Ant"
  }
}
