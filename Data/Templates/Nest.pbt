Assets {
  Id: 7135105357064074460
  Name: "Nest"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2524265454032193188
      Objects {
        Id: 2524265454032193188
        Name: "Nest"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16948506006131246756
        ChildIds: 5288328143641997138
        ChildIds: 7553776193849367170
        ChildIds: 8665522750775552507
        UnregisteredParameters {
          Overrides {
            Name: "cs:WorkerAnt"
            AssetReference {
              Id: 5424554356108232616
            }
          }
          Overrides {
            Name: "cs:AntTypes"
            AssetReference {
              Id: 12053104852533493342
            }
          }
          Overrides {
            Name: "cs:TableUtil"
            AssetReference {
              Id: 12550425098317280896
            }
          }
          Overrides {
            Name: "cs:AntTrigger"
            ObjectReference {
              SubObjectId: 54196432698546914
            }
          }
          Overrides {
            Name: "cs:HasUI"
            Bool: true
          }
          Overrides {
            Name: "cs:AntLifespan"
            Int: 180
          }
          Overrides {
            Name: "cs:ownerId"
            String: ""
          }
          Overrides {
            Name: "cs:NestLevels"
            AssetReference {
              Id: 14420070072366796500
            }
          }
          Overrides {
            Name: "cs:SoldierAnt"
            AssetReference {
              Id: 11666330275160844173
            }
          }
          Overrides {
            Name: "cs:Ants"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ownerId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:Ants:isrep"
            Bool: true
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
        }
      }
      Objects {
        Id: 16948506006131246756
        Name: "NestAntBreeder"
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
        ParentId: 2524265454032193188
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
        Script {
          ScriptAsset {
            Id: 16314800843784287262
          }
        }
      }
      Objects {
        Id: 5288328143641997138
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
        ParentId: 2524265454032193188
        ChildIds: 16321086256260597762
        ChildIds: 54196432698546914
        ChildIds: 9911070672485469393
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
        Id: 16321086256260597762
        Name: "Pheromone"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 15
            Y: 15
            Z: 15
          }
        }
        ParentId: 5288328143641997138
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
        Id: 54196432698546914
        Name: "HitboxTrigger"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 1.75
            Y: 1.75
            Z: 1.75
          }
        }
        ParentId: 5288328143641997138
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
      }
      Objects {
        Id: 9911070672485469393
        Name: "NestFoodRetriever"
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
        ParentId: 5288328143641997138
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
            Id: 528607838593141041
          }
        }
      }
      Objects {
        Id: 7553776193849367170
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
        ParentId: 2524265454032193188
        ChildIds: 7044005038846505785
        ChildIds: 11897309993486708010
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
        Id: 7044005038846505785
        Name: "Cone - Truncated Hollow Concave"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 7.25000143
            Y: 7.25000143
            Z: 7.25000143
          }
        }
        ParentId: 7553776193849367170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.419999957
              G: 0.0917880759
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6790656294252803114
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
            Id: 5937460153309580301
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
        Id: 11897309993486708010
        Name: "Overhead"
        Transform {
          Location {
            X: 150
            Y: 675
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7553776193849367170
        ChildIds: 14429168247670439619
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
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
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
      }
      Objects {
        Id: 14429168247670439619
        Name: "BillboardPanel"
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
        ParentId: 11897309993486708010
        ChildIds: 6484194213014994861
        ChildIds: 10770229987186620597
        ChildIds: 14950490131871101354
        ChildIds: 3968948418615930842
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
          Width: 500
          Height: 100
          UIX: 1050.46948
          UIY: 484.688354
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 6484194213014994861
        Name: "NestOverheadUI"
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
        ParentId: 14429168247670439619
        UnregisteredParameters {
          Overrides {
            Name: "cs:Billboard"
            AssetReference {
              Id: 15059080292312999422
            }
          }
          Overrides {
            Name: "cs:Health"
            ObjectReference {
              SubObjectId: 14950490131871101354
            }
          }
          Overrides {
            Name: "cs:Name"
            ObjectReference {
              SubObjectId: 10770229987186620597
            }
          }
          Overrides {
            Name: "cs:ManageButton"
            ObjectReference {
              SubObjectId: 3968948418615930842
            }
          }
          Overrides {
            Name: "cs:Nest"
            ObjectReference {
              SubObjectId: 2524265454032193188
            }
          }
          Overrides {
            Name: "cs:NestLevels"
            AssetReference {
              Id: 14420070072366796500
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
            Id: 6275012588805332057
          }
        }
      }
      Objects {
        Id: 10770229987186620597
        Name: "Name"
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
        ParentId: 14429168247670439619
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
          Height: 60
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "BRicey\'s Nest"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 28
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 841534158063459245
            }
            VerticalJustification {
              Value: "mc:everticaljustification:top"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 14950490131871101354
        Name: "Health"
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
        ParentId: 14429168247670439619
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
          Width: 450
          Height: 44
          UIY: -1.486
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              R: 0.0662911
              G: 0.909999967
              A: 1
            }
            BackgroundColor {
              R: 0.020833334
              G: 0.020833334
              B: 0.020833334
              A: 0.728000045
            }
            Percent: 0.575404167
            FillBrush {
              Id: 841534158063459245
            }
            BackgroundBrush {
              Id: 841534158063459245
            }
            FillType {
              Value: "mc:eprogressbarfilltype:lefttoright"
            }
            FillTileType {
              Value: "mc:eslatebrushtiletype:notile"
            }
            BackgroundTileType {
              Value: "mc:eslatebrushtiletype:notile"
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 3968948418615930842
        Name: "ManageButton"
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
        ParentId: 14429168247670439619
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 200
          Height: 50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Button {
            Label: "Manage Nest"
            FontColor {
              A: 1
            }
            FontSize: 20
            ButtonColor {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            HoveredColor {
              R: 0.609375
              G: 0.609375
              B: 0.609375
              A: 1
            }
            PressedColor {
              R: 0.270833343
              G: 0.270833343
              B: 0.270833343
              A: 1
            }
            DisabledColor {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Brush {
              Id: 841534158063459245
            }
            IsButtonEnabled: true
            ClickMode {
              Value: "mc:ebuttonclickmode:default"
            }
            Font {
            }
            Justification {
              Value: "mc:etextjustify:center"
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScaleToFit: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 8665522750775552507
        Name: "Collider"
        Transform {
          Location {
            Z: 200
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 5
          }
        }
        ParentId: 2524265454032193188
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 4442241141733743205
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
    }
    Assets {
      Id: 5937460153309580301
      Name: "Cone - Truncated Hollow Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_convex_001"
      }
    }
    Assets {
      Id: 6790656294252803114
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    Assets {
      Id: 4442241141733743205
      Name: "Cube - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_test_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 97
}
