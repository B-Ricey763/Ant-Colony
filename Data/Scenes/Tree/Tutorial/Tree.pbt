Name: "Tutorial"
RootId: 3287588989648812579
Objects {
  Id: 17444019951087507596
  Name: "TutorialClient"
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
  ParentId: 3287588989648812579
  ChildIds: 11188861771801638406
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
  }
}
Objects {
  Id: 11188861771801638406
  Name: "VisibleGroup"
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
  ParentId: 17444019951087507596
  ChildIds: 2375746768822720874
  ChildIds: 12009647397054203425
  ChildIds: 15274824850515506115
  ChildIds: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 7230362894523753966
  Name: "UI"
  Transform {
    Location {
      X: 40.4309845
      Y: -91.8260422
      Z: 10.0048828
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11188861771801638406
  ChildIds: 10250420591215026717
  ChildIds: 4924138809270523036
  ChildIds: 8475677514356201703
  ChildIds: 3808026836744700941
  ChildIds: 16188914121211497063
  ChildIds: 14763109228676773625
  ChildIds: 13860804088412467890
  ChildIds: 12723171209544454355
  ChildIds: 13110039446312458728
  ChildIds: 274019426007221383
  ChildIds: 12672634257874777599
  ChildIds: 7484713010485185584
  ChildIds: 11333683624439328014
  ChildIds: 11231215531313978379
  ChildIds: 1379438412461608248
  ChildIds: 13989400346184117864
  ChildIds: 10988709905175376680
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
  Id: 10988709905175376680
  Name: "TutorialUIGlow"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12836268827236121612
      value {
        Overrides {
          Name: "Name"
          String: "TutorialUIGlow"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -185.04187
            Y: 250.77417
            Z: -17.7788086
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.999999762
            Y: 7.8734231
            Z: 5.56629944
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 13761320620657966073
      value {
        Overrides {
          Name: "Color"
          Color {
            G: 0.063
            B: 0.0354635902
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 16504764396331973289
    }
  }
}
Objects {
  Id: 13989400346184117864
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -557.761902
      Y: 551.778137
      Z: -7.77587891
    }
    Rotation {
      Pitch: 90
      Roll: 110.375832
    }
    Scale {
      X: 0.999999642
      Y: 2
      Z: 2
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 4671427552870104515
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      CanvasWorldSize {
        X: 200
        Y: 200
      }
      RedrawTime: 30
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11231215531313978379
    SubobjectId: 10764068149946424172
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
    WasRoot: true
  }
}
Objects {
  Id: 4671427552870104515
  Name: "UI Image"
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
  ParentId: 13989400346184117864
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3024661489947519422
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16506730869337494649
    SubobjectId: 16982895740695139102
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
  }
}
Objects {
  Id: 1379438412461608248
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -112.117409
      Y: 525.605347
      Z: -7.77587891
    }
    Rotation {
      Pitch: 90
      Roll: 159.992142
    }
    Scale {
      X: 0.999999642
      Y: 2
      Z: 2
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 16206192227816115612
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      CanvasWorldSize {
        X: 200
        Y: 200
      }
      RedrawTime: 30
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11231215531313978379
    SubobjectId: 10764068149946424172
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
    WasRoot: true
  }
}
Objects {
  Id: 16206192227816115612
  Name: "UI Image"
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
  ParentId: 1379438412461608248
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11688828642921244700
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16506730869337494649
    SubobjectId: 16982895740695139102
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
  }
}
Objects {
  Id: 11231215531313978379
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -11.2042313
      Y: -397.086548
      Z: -7.77587891
    }
    Rotation {
      Pitch: 90
      Roll: -71.2176208
    }
    Scale {
      X: 0.999999642
      Y: 2
      Z: 2
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 16506730869337494649
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      CanvasWorldSize {
        X: 200
        Y: 200
      }
      RedrawTime: 30
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11231215531313978379
    SubobjectId: 10764068149946424172
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
    WasRoot: true
  }
}
Objects {
  Id: 16506730869337494649
  Name: "UI Image"
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
  ParentId: 11231215531313978379
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 4660724207929530957
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16506730869337494649
    SubobjectId: 16982895740695139102
    InstanceId: 9545035705701166582
    TemplateId: 14375827282498110448
  }
}
Objects {
  Id: 11333683624439328014
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -286.921143
      Y: -251.83194
      Z: 4626.81152
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.999999642
      Y: 2.33586264
      Z: 1.3137908
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10764068149946424172
      value {
        Overrides {
          Name: "Name"
          String: "TutorialUICorners"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25.670517
            Y: -160.00589
            Z: 2.37451172
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.999999642
            Y: 2.23019743
            Z: 1.25355613
          }
        }
      }
    }
    TemplateAsset {
      Id: 14375827282498110448
    }
  }
}
Objects {
  Id: 7484713010485185584
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -424.80426
      Y: 252.505646
      Z: 4626.81152
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.999999642
      Y: 2.33586264
      Z: 1.3137908
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10764068149946424172
      value {
        Overrides {
          Name: "Name"
          String: "TutorialUICorners"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -331.474365
            Y: -160.00589
            Z: 2.37451172
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.999999642
            Y: 2.2402935
            Z: 1.25752306
          }
        }
      }
    }
    TemplateAsset {
      Id: 14375827282498110448
    }
  }
}
Objects {
  Id: 12672634257874777599
  Name: "TutorialUICorners"
  Transform {
    Location {
      X: -47.3066254
      Y: 252.505646
      Z: 4626.81152
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.999999642
      Y: 2.33586264
      Z: 1.3137908
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10764068149946424172
      value {
        Overrides {
          Name: "Name"
          String: "TutorialUICorners"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -465.235229
            Y: 344.331696
            Z: 2.37451172
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.999999642
            Y: 2.2260406
            Z: 1.24414849
          }
        }
      }
    }
    TemplateAsset {
      Id: 14375827282498110448
    }
  }
}
Objects {
  Id: 274019426007221383
  Name: "TutorialUICorners"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10764068149946424172
      value {
        Overrides {
          Name: "Name"
          String: "TutorialUICorners"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -87.7376099
            Y: 344.331696
            Z: 2.37451172
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
          }
        }
      }
    }
    TemplateAsset {
      Id: 14375827282498110448
    }
  }
}
Objects {
  Id: 13110039446312458728
  Name: "World Text"
  Transform {
    Location {
      X: -535.452209
      Y: -368.695404
      Z: 8.11474609
    }
    Rotation {
      Pitch: 90
      Roll: 179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 15131635458292369905
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
  Text {
    Text: "HINT!                     pheromones will attract\r\nboth your Workers and Soldiers!"
    FontAsset {
    }
    Color {
      R: 1
      G: 0.941457
      B: 0.32
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 15131635458292369905
  Name: "World Text"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.25688695e-12
      Roll: -6.83018561e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13110039446312458728
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
  Text {
    Text: "           Attract All"
    FontAsset {
    }
    Color {
      R: 0.160000026
      G: 0.949933708
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 12723171209544454355
  Name: "World Text"
  Transform {
    Location {
      X: -275.930176
      Y: 133.973755
      Z: 8.11474609
    }
    Rotation {
      Pitch: 90
      Yaw: -3.05175781e-05
      Roll: 179.999969
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 4181252588197135635
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
  Text {
    Text: "Place                            pheromones to steer\r\nyour soldier ants into battle!"
    FontAsset {
    }
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 4181252588197135635
  Name: "World Text"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.25688695e-12
      Roll: -6.83018561e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12723171209544454355
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
  Text {
    Text: "           Attract Soldier"
    FontAsset {
    }
    Color {
      R: 0.960000038
      G: 0.119999945
      B: 0.119999945
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 13860804088412467890
  Name: "FightPathGif"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12305527242119061361
      value {
        Overrides {
          Name: "Name"
          String: "FightPathGif"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.289554417
            Y: 0.289554417
            Z: 0.289554417
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -465.835144
            Y: 343.74295
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -90
          }
        }
      }
    }
    TemplateAsset {
      Id: 7092957975237310670
    }
  }
}
Objects {
  Id: 14763109228676773625
  Name: "World Text"
  Transform {
    Location {
      X: -172.854736
      Y: -370.174
      Z: 8.11474609
    }
    Rotation {
      Pitch: 90
      Yaw: -3.05175781e-05
      Roll: 179.999969
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
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
  Text {
    Text: "Breed Worker and Soldier ants from your Nest!"
    FontAsset {
    }
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 16188914121211497063
  Name: "MakeWorkerGif"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12305527242119061361
      value {
        Overrides {
          Name: "Name"
          String: "MakeWorkerGif"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.289554417
            Y: 0.289554417
            Z: 0.289554417
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -330.488831
            Y: -161.659607
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -90
          }
        }
      }
    }
    TemplateAsset {
      Id: 10308603066148201194
    }
  }
}
Objects {
  Id: 3808026836744700941
  Name: "World Text"
  Transform {
    Location {
      X: 100.362961
      Y: 133.973755
      Z: 8.11474609
    }
    Rotation {
      Pitch: 90
      Yaw: -3.05175781e-05
      Roll: 179.999924
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 10123689728154359027
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
  Text {
    Text: "Place                  pheromones to restrict your\r\nants\' movements, such as wandering off!"
    FontAsset {
    }
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 10123689728154359027
  Name: "World Text"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.25688695e-12
      Roll: -6.83018561e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3808026836744700941
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
  Text {
    Text: "           Repel All"
    FontAsset {
    }
    Color {
      R: 1
      G: 0.4
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 8475677514356201703
  Name: "BlockingGif"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12305527242119061361
      value {
        Overrides {
          Name: "Name"
          String: "BlockingGif"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.289554417
            Y: 0.289554417
            Z: 0.289554417
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -87.8878
            Y: 344.443909
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -90
          }
        }
      }
    }
    TemplateAsset {
      Id: 10555495400541670452
    }
  }
}
Objects {
  Id: 4924138809270523036
  Name: "World Text"
  Transform {
    Location {
      X: 234.315903
      Y: -370.203308
      Z: 8.11474609
    }
    Rotation {
      Pitch: 90
      Yaw: 3.4150944e-06
      Roll: 179.999985
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  ChildIds: 16108104454126874193
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
  Text {
    Text: "Place                            pheromones between your Nest\r\nand a nearby food sources to make worker ants gather\r\nfood."
    FontAsset {
    }
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 16108104454126874193
  Name: "World Text"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -1.36603776e-05
      Yaw: 8.14222171e-13
      Roll: -4.55345689e-05
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4924138809270523036
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
  Text {
    Text: "           Attract Worker"
    FontAsset {
    }
    Color {
      R: 0.0466224588
      G: 0.88
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:left"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:top"
    }
  }
}
Objects {
  Id: 10250420591215026717
  Name: "FoodPathGif"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7230362894523753966
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 12305527242119061361
      value {
        Overrides {
          Name: "Name"
          String: "FoodPathGif"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.289554417
            Y: 0.289554417
            Z: 0.289554417
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: -90
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 25.3144608
            Y: -160.409088
          }
        }
      }
    }
    TemplateAsset {
      Id: 9907616146743200762
    }
  }
}
Objects {
  Id: 15274824850515506115
  Name: "TutorialCamera"
  Transform {
    Location {
      Z: 140
    }
    Rotation {
      Pitch: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11188861771801638406
  UnregisteredParameters {
    Overrides {
      Name: "cs:Speed"
      Float: 400
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
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  Camera {
    InitialDistance: 400
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -89
    MaxPitch: 89
    DoesPositionOffsetSpring: true
    AudioListenerOffset {
    }
  }
}
Objects {
  Id: 12009647397054203425
  Name: "ToggleTutorialUI"
  Transform {
    Location {
      Z: -4614.43213
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11188861771801638406
  UnregisteredParameters {
    Overrides {
      Name: "cs:DefaultCamera"
      ObjectReference {
        SelfId: 10277894910007317153
      }
    }
    Overrides {
      Name: "cs:TutorialCamera"
      ObjectReference {
        SelfId: 15274824850515506115
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
      Id: 2512593181206900922
    }
  }
}
Objects {
  Id: 2375746768822720874
  Name: "Plane 4m - One Sided"
  Transform {
    Location {
      Z: -14.1777344
    }
    Rotation {
    }
    Scale {
      X: 10
      Y: 10
      Z: 1
    }
  }
  ParentId: 11188861771801638406
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.0440000035
        G: 0.0440000035
        B: 0.0440000035
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5351428073291024820
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 8757068560497122517
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    DisableCastShadows: true
    DisableReceiveDecals: true
    DisableAngularMotionBlur: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
}
