Name: "ScriptTesting"
RootId: 15146144627536064546
Objects {
  Id: 7520989526994721992
  Name: "Nest Locations"
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
  ParentId: 15146144627536064546
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Nest Locations"
  }
}
Objects {
  Id: 17612226628234792997
  Name: "Food Source"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15146144627536064546
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 9812288447714917136
      value {
        Overrides {
          Name: "Name"
          String: "Food Source"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -700
            Y: -1200
          }
        }
      }
    }
    TemplateAsset {
      Id: 8858284903139370176
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
  Id: 10189406494127475815
  Name: "Worker Ant"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15146144627536064546
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3849646725671175769
      value {
        Overrides {
          Name: "Name"
          String: "Ant"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: -525
            Z: 75
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 5424554356108232616
    }
  }
}
Objects {
  Id: 2736829802186310441
  Name: "Nest"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15146144627536064546
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2524265454032193188
      value {
        Overrides {
          Name: "Name"
          String: "Nest"
        }
        Overrides {
          Name: "Position"
          Vector {
            Z: 1450
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 7135105357064074460
    }
  }
}
