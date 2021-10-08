Assets {
  Id: 13150164904394264997
  Name: "Custom Terrain - Desert"
  PlatformAssetType: 13
  SerializationVersion: 100
  CustomMaterialAsset {
    BaseMaterialId: 17740681967006783255
    ParameterOverrides {
      Overrides {
        Name: "direction"
        Bool: false
      }
      Overrides {
        Name: "splotchiness"
        Float: 0.167256817
      }
      Overrides {
        Name: "density"
        Float: 0.0872444957
      }
      Overrides {
        Name: "material_scale"
        Float: 20
      }
      Overrides {
        Name: "edge_wear"
        Float: 0.493460864
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.290000021
          G: 0.257187754
          B: 0.216050014
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
    }
    Assets {
      Id: 17740681967006783255
      Name: "Terrain - Desert"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_rock-sand_001_wa"
      }
    }
  }
}
