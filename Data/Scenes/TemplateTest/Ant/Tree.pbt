Name: "Ant"
RootId: 16799324959067691655
Objects {
  Id: 476417357498698384
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
  ParentId: 16799324959067691655
  ChildIds: 13527360619679213041
  ChildIds: 5107534852098396185
  ChildIds: 290434954539611721
  ChildIds: 2911784596191282617
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
    SelfId: 476417357498698384
    SubobjectId: 13532279741720607089
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 2911784596191282617
  Name: "AttackSound"
  Transform {
    Location {
      X: -56.838623
      Z: 47.8080597
    }
    Rotation {
      Yaw: -6.83018516e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 476417357498698384
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
  InstanceHistory {
    SelfId: 2911784596191282617
    SubobjectId: 10752483868962289240
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 290434954539611721
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
  ParentId: 476417357498698384
  UnregisteredParameters {
    Overrides {
      Name: "cs:AttackVFX"
      ObjectReference {
        SelfId: 5019408911052737306
      }
    }
    Overrides {
      Name: "cs:AttackSFX"
      ObjectReference {
        SelfId: 2911784596191282617
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
  InstanceHistory {
    SelfId: 290434954539611721
    SubobjectId: 13355168202863297960
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 5107534852098396185
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
  ParentId: 476417357498698384
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
    SelfId: 5107534852098396185
    SubobjectId: 18136374303903605752
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 13527360619679213041
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
  ParentId: 476417357498698384
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
    FilePartitionName: "AnimatedAntAsset"
  }
  InstanceHistory {
    SelfId: 13527360619679213041
    SubobjectId: 498234235071796752
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 3211861458611864700
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
  ParentId: 16799324959067691655
  ChildIds: 1128790896252378610
  ChildIds: 16927083771543739274
  ChildIds: 6677433912544262757
  ChildIds: 13188262167653853979
  ChildIds: 7551805561825297665
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
    SelfId: 3211861458611864700
    SubobjectId: 10502976312462210973
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 7551805561825297665
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
  ParentId: 3211861458611864700
  ChildIds: 12065712970023674110
  ChildIds: 16220229652682265659
  ChildIds: 11576957378500847845
  ChildIds: 16574492479045599423
  ChildIds: 56643036411910911
  ChildIds: 13073371169514327271
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
        SelfId: 6677433912544262757
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
    SelfId: 7551805561825297665
    SubobjectId: 15392640040166782688
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 13073371169514327271
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
  ParentId: 7551805561825297665
  UnregisteredParameters {
    Overrides {
      Name: "cs:PherTracker"
      ObjectReference {
        SelfId: 6677433912544262757
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
  InstanceHistory {
    SelfId: 13073371169514327271
    SubobjectId: 593686138465484550
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 56643036411910911
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
  ParentId: 7551805561825297665
  UnregisteredParameters {
    Overrides {
      Name: "cs:PherTrigger"
      ObjectReference {
        SelfId: 1128790896252378610
      }
    }
    Overrides {
      Name: "cs:HitboxTrigger"
      ObjectReference {
        SelfId: 16927083771543739274
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
  InstanceHistory {
    SelfId: 56643036411910911
    SubobjectId: 13662231590664022302
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 16574492479045599423
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
  ParentId: 7551805561825297665
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
    SelfId: 16574492479045599423
    SubobjectId: 6581077015713510238
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 11576957378500847845
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
  ParentId: 7551805561825297665
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
    SelfId: 11576957378500847845
    SubobjectId: 2159861745317026564
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 16220229652682265659
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
  ParentId: 7551805561825297665
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
    SelfId: 16220229652682265659
    SubobjectId: 6649872007075768282
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 12065712970023674110
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
  ParentId: 7551805561825297665
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
    SelfId: 12065712970023674110
    SubobjectId: 1883284959618618143
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 13188262167653853979
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
  ParentId: 3211861458611864700
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
  InstanceHistory {
    SelfId: 13188262167653853979
    SubobjectId: 745025937401829626
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 6677433912544262757
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
  ParentId: 3211861458611864700
  UnregisteredParameters {
    Overrides {
      Name: "cs:PherTrigger"
      ObjectReference {
        SelfId: 1128790896252378610
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
    SelfId: 6677433912544262757
    SubobjectId: 16283821592128653700
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 16927083771543739274
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
  ParentId: 3211861458611864700
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
    SelfId: 16927083771543739274
    SubobjectId: 6321319620956792939
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
Objects {
  Id: 1128790896252378610
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
  ParentId: 3211861458611864700
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
    SelfId: 1128790896252378610
    SubobjectId: 12896768793721941523
    InstanceId: 11597600141301826485
    TemplateId: 11666330275160844173
  }
}
