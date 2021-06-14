Assets {
  Id: 2854350596081428227
  Name: "GearSlot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9836148054292626210
      Objects {
        Id: 9836148054292626210
        Name: "GearSlot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1606658746776883581
        ChildIds: 7980641859665151893
        UnregisteredParameters {
          Overrides {
            Name: "cs:Slot"
            String: "MainHand2"
          }
          Overrides {
            Name: "cs:ItemSlot"
            String: "MainHand"
          }
          Overrides {
            Name: "cs:Icon"
            ObjectReference {
              SubObjectId: 7980641859665151893
            }
          }
          Overrides {
            Name: "cs:ButtonSelectedColor"
            Color {
              R: 0.5
              G: 0.475000024
              A: 1
            }
          }
          Overrides {
            Name: "cs:HoveredSelectedColor"
            Color {
              R: 1
              G: 0.950000048
              A: 1
            }
          }
          Overrides {
            Name: "cs:PressedSelectedColor"
            Color {
              R: 0.125
              G: 0.118750006
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
        Control {
          Width: 100
          Height: 100
          UIY: -300
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Button {
            Label: "Main 2"
            FontColor {
              R: 0.125
              G: 0.125
              B: 0.125
              A: 1
            }
            FontSize: 16
            ButtonColor {
              R: 0.5
              G: 0.490098715
              B: 0.490098715
              A: 1
            }
            HoveredColor {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            PressedColor {
              R: 0.125
              G: 0.125
              B: 0.125
              A: 1
            }
            DisabledColor {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Brush {
              Id: 2569727210782027386
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
      Objects {
        Id: 7980641859665151893
        Name: "UI Image"
        Transform {
          Location {
            X: -12276.2959
            Y: -20701.4766
            Z: 8260
          }
          Rotation {
            Yaw: 40.0000191
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9836148054292626210
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 80
          Height: 80
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 841534158063459245
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
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
      Id: 2569727210782027386
      Name: "Frame Outline Thin 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameOutline_019"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 87
}
