Name: "Ant"
RootId: 3479631479404238312
Objects {
  Id: 16137945997379044863
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
  ParentId: 3479631479404238312
  ChildIds: 4898516926836906635
  ChildIds: 11495588188940787574
  ChildIds: 11295474961491674229
  ChildIds: 15955908659583514918
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
  InstanceHistory {
    SelfId: 16137945997379044863
    SubobjectId: 13532279741720607089
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 15955908659583514918
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
  ParentId: 16137945997379044863
  UnregisteredParameters {
    Overrides {
      Name: "cs:AttackVFX"
      ObjectReference {
        SelfId: 11295474961491674229
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
  Id: 11295474961491674229
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
  ParentId: 16137945997379044863
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
  Id: 11495588188940787574
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
  ParentId: 16137945997379044863
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
  InstanceHistory {
    SelfId: 11495588188940787574
    SubobjectId: 18136374303903605752
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 4898516926836906635
  Name: "Capsule"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16137945997379044863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18407728922800619620
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.377483428
        B: 0.0600000024
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
      Id: 488830156233060266
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
  InstanceHistory {
    SelfId: 4898516926836906635
    SubobjectId: 2865089715300050437
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 17724973602277247763
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
  ParentId: 3479631479404238312
  ChildIds: 15475307546321621661
  ChildIds: 3710973169358181605
  ChildIds: 9638285591496209674
  ChildIds: 12800483908946217582
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
  InstanceHistory {
    SelfId: 17724973602277247763
    SubobjectId: 10502976312462210973
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 12800483908946217582
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
  ParentId: 17724973602277247763
  ChildIds: 9086880221795774353
  ChildIds: 4066969816418687828
  ChildIds: 8773168255534376842
  ChildIds: 4570448242346086352
  ChildIds: 6091880064069001766
  ChildIds: 15681586561167234448
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
        SelfId: 9638285591496209674
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
  InstanceHistory {
    SelfId: 12800483908946217582
    SubobjectId: 15392640040166782688
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 15681586561167234448
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
  ParentId: 12800483908946217582
  UnregisteredParameters {
    Overrides {
      Name: "cs:PherTrigger"
      ObjectReference {
        SelfId: 15475307546321621661
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
  Id: 6091880064069001766
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
  ParentId: 12800483908946217582
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
  InstanceHistory {
    SelfId: 6091880064069001766
    SubobjectId: 3509259035256970920
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 4570448242346086352
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
  ParentId: 12800483908946217582
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
  InstanceHistory {
    SelfId: 4570448242346086352
    SubobjectId: 6581077015713510238
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 8773168255534376842
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
  ParentId: 12800483908946217582
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
  InstanceHistory {
    SelfId: 8773168255534376842
    SubobjectId: 2159861745317026564
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 4066969816418687828
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
  ParentId: 12800483908946217582
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
  InstanceHistory {
    SelfId: 4066969816418687828
    SubobjectId: 6649872007075768282
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 9086880221795774353
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
  ParentId: 12800483908946217582
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
  InstanceHistory {
    SelfId: 9086880221795774353
    SubobjectId: 1883284959618618143
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 9638285591496209674
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
  ParentId: 17724973602277247763
  UnregisteredParameters {
    Overrides {
      Name: "cs:PherTrigger"
      ObjectReference {
        SelfId: 15475307546321621661
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
  InstanceHistory {
    SelfId: 9638285591496209674
    SubobjectId: 16283821592128653700
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 3710973169358181605
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
  ParentId: 17724973602277247763
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
  InstanceHistory {
    SelfId: 3710973169358181605
    SubobjectId: 6321319620956792939
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 15475307546321621661
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
  ParentId: 17724973602277247763
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
  InstanceHistory {
    SelfId: 15475307546321621661
    SubobjectId: 12896768793721941523
    InstanceId: 10110507008222941403
    TemplateId: 11666330275160844173
  }
}
