Assets {
  Id: 15062892900477932302
  Name: "CustomProgressBar"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7711847144560344443
      Objects {
        Id: 7711847144560344443
        Name: "HealthCustomProgressBar"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4898575731042166209
        ChildIds: 10372325818221296871
        ChildIds: 8129907743181845210
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10372325818221296871
        Name: "ProgressBarClient"
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
        ParentId: 7711847144560344443
        UnregisteredParameters {
          Overrides {
            Name: "cs:UiText"
            ObjectReference {
              SubObjectId: 14971593160919001830
            }
          }
          Overrides {
            Name: "cs:ProgressImage"
            ObjectReference {
              SubObjectId: 16151111614910213366
            }
          }
          Overrides {
            Name: "cs:Progress"
            ObjectReference {
              SubObjectId: 8129907743181845210
            }
          }
          Overrides {
            Name: "cs:RegenColor"
            Color {
              R: 0.120000005
              G: 0.912582934
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:DegenColor"
            Color {
              R: 1
              G: 0.459999979
              B: 0.459999979
              A: 1
            }
          }
          Overrides {
            Name: "cs:IndicatorMultiplier"
            Float: 5
          }
          Overrides {
            Name: "cs:Indicator"
            AssetReference {
              Id: 7551128325692298338
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
        Script {
          ScriptAsset {
            Id: 15192443041543211320
          }
        }
      }
      Objects {
        Id: 8129907743181845210
        Name: "UI Progress Bar"
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
        ParentId: 7711847144560344443
        ChildIds: 16151111614910213366
        ChildIds: 14971593160919001830
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 410
          Height: 25
          UIY: -100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          StatBar {
            Color {
              R: 0.89
              A: 1
            }
            BackgroundColor {
              A: 1
            }
            Percent: 0.681122065
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomright"
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
        Id: 16151111614910213366
        Name: "progressShadow"
        Transform {
          Location {
            X: 25
            Z: 525
          }
          Rotation {
            Yaw: -140
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8129907743181845210
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 275
          Height: 25
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 6870392980482202572
            }
            Color {
              A: 0.8
            }
            TeamSettings {
            }
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
        Id: 14971593160919001830
        Name: "Text"
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
        ParentId: 8129907743181845210
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 400
          Height: 25
          UIY: -1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Text {
            Label: "100"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 15
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
              Id: 2465654029814408298
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
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
      }
    }
    Assets {
      Id: 6870392980482202572
      Name: "BG Highlighted 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundHighlighted_020"
      }
    }
    Assets {
      Id: 2465654029814408298
      Name: "Roboto Slab"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "RobotoSlabRegular_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
