Assets {
  Id: 16313192488579762104
  Name: "Custom Advanced Material - Copy"
  PlatformAssetType: 13
  SerializationVersion: 98
  CustomMaterialAsset {
    BaseMaterialId: 13153874670286146958
    ParameterOverrides {
      Overrides {
        Name: "roughness"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.609
          G: 0.314582825
          A: 1
        }
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: 1
      }
      Overrides {
        Name: "fresnel_power"
        Float: 0
      }
    }
    Assets {
      Id: 13153874670286146958
      Name: "Advanced Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "universal_material_001"
      }
    }
  }
}
