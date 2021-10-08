Assets {
  Id: 8849503483940266870
  Name: "Custom Concrete Damaged 01"
  PlatformAssetType: 13
  SerializationVersion: 100
  CustomMaterialAsset {
    BaseMaterialId: 2441707628016867841
    ParameterOverrides {
      Overrides {
        Name: "material_scale"
        Float: 100
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.396000028
          G: 0.357885033
          B: 0.243540019
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.191875607
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.690413892
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
    }
    Assets {
      Id: 2441707628016867841
      Name: "Concrete Damaged 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_concrete_cracked_001_uv"
      }
    }
  }
}
