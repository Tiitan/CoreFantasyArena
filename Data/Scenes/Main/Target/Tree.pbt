Name: "Target"
RootId: 14676288520824950456
Objects {
  Id: 6448298587804927434
  Name: "TargetImage"
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
  ParentId: 14676288520824950456
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
    Width: 395
    Height: 665
    UIX: 1755
    UIY: 560
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11182658491449699532
      }
      Color {
        R: 0.89
        G: 0.831059635
        A: 0.4
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
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
}
Objects {
  Id: 3636711532575626652
  Name: "HealthCustomProgressBar"
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
  ParentId: 14676288520824950456
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7711847144560344443
      value {
        Overrides {
          Name: "Name"
          String: "TargetCustomProgressBar"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 8129907743181845210
      value {
        Overrides {
          Name: "UIY"
          Float: 20
        }
        Overrides {
          Name: "UIX"
          Float: -35
        }
        Overrides {
          Name: "Anchor"
          Enum {
            Value: "mc:euianchor:topcenter"
          }
        }
        Overrides {
          Name: "Dock"
          Enum {
            Value: "mc:euianchor:topcenter"
          }
        }
        Overrides {
          Name: "Width"
          Int: 600
        }
        Overrides {
          Name: "Height"
          Int: 35
        }
      }
    }
    ParameterOverrideMap {
      key: 10372325818221296871
      value {
        Overrides {
          Name: "cs:TextDisplayValue"
          Bool: false
        }
        Overrides {
          Name: "cs:UiText"
          ObjectReference {
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14971593160919001830
      value {
        Overrides {
          Name: "VerticalJustification"
          Enum {
            Value: "mc:everticaljustification:baseline"
          }
        }
        Overrides {
          Name: "UIY"
          Float: 0
        }
        Overrides {
          Name: "Label"
          String: "Target"
        }
      }
    }
    ParameterOverrideMap {
      key: 16151111614910213366
      value {
        Overrides {
          Name: "Height"
          Int: 35
        }
      }
    }
    TemplateAsset {
      Id: 15062892900477932302
    }
  }
}
Objects {
  Id: 12007457974625242719
  Name: "Frame"
  Transform {
    Location {
      X: -12935
      Y: -12660
      Z: 9495
    }
    Rotation {
      Yaw: 120.000008
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14676288520824950456
  ChildIds: 1975946795747691057
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
    Width: 700
    Height: 55
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 2569727210782027386
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
  Id: 1975946795747691057
  Name: "Frame"
  Transform {
    Location {
      X: -12935
      Y: -12660
      Z: 9495
    }
    Rotation {
      Yaw: 120.000008
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12007457974625242719
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
    Width: 700
    Height: 55
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 5192650941075331416
      }
      Color {
        A: 0.25
      }
      TeamSettings {
      }
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
  Id: 278264771607132064
  Name: "TargetUiClient"
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
  ParentId: 14676288520824950456
  UnregisteredParameters {
    Overrides {
      Name: "cs:TextUI"
      ObjectReference {
        SelfId: 2772349524017322808
        SubObjectId: 14971593160919001830
        InstanceId: 3636711532575626652
        TemplateId: 15062892900477932302
      }
    }
    Overrides {
      Name: "cs:TargetImage"
      ObjectReference {
        SelfId: 6448298587804927434
      }
    }
    Overrides {
      Name: "cs:LockColor"
      Color {
        R: 0.51
        A: 0.4
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
      Id: 3990604325601233253
    }
  }
}
