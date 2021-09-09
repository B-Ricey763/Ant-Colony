Assets {
  Id: 9380945477228822454
  Name: "Custom Gel Transparent"
  PlatformAssetType: 13
  SerializationVersion: 98
  CustomMaterialAsset {
    BaseMaterialId: 11949475519191856783
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "emissive"
        Float: 0
      }
      Overrides {
        Name: "roughness"
        Float: 0.302661896
      }
      Overrides {
        Name: "bubble brightness"
        Float: 0.687797427
      }
    }
    Assets {
      Id: 11949475519191856783
      Name: "Gel Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_gel"
      }
    }
  }
}
