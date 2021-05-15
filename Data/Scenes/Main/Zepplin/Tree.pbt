Name: "Zepplin"
RootId: 5390711871584181108
Objects {
  Id: 199976093167735266
  Name: "Portal VFX"
  Transform {
    Location {
      X: 10625
      Y: -10475
      Z: 12925
    }
    Rotation {
      Yaw: 105
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 0.5
    }
  }
  ParentId: 5390711871584181108
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.139999986
        G: 0.453244925
        B: 1
        A: 0.384
      }
    }
    Overrides {
      Name: "bp:Color B"
      Color {
        G: 0.140927017
        B: 0.76
        A: 0.47300002
      }
    }
    Overrides {
      Name: "bp:Color C"
      Color {
        R: 0.00754971104
        B: 0.570000052
        A: 0.232000008
      }
    }
    Overrides {
      Name: "bp:Swirl Color"
      Color {
        R: 0.0143048419
        B: 0.269999981
        A: 1
      }
    }
    Overrides {
      Name: "bp:Background Texture"
      Enum {
        Value: "mc:eportalbackground:3"
      }
    }
    Overrides {
      Name: "bp:Portal Shape"
      Int: 1
    }
    Overrides {
      Name: "bp:Portal Spread"
      Float: 1
    }
    Overrides {
      Name: "bp:Edge Distance"
      Float: 0.491221279
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 9.36420918
    }
    Overrides {
      Name: "bp:Intensity Color Blend"
      Float: 1
    }
    Overrides {
      Name: "bp:Scene Tint Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Disable Swirl and Edge"
      Bool: false
    }
    Overrides {
      Name: "bp:Unlit"
      Bool: true
    }
    Overrides {
      Name: "bp:Speed"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Scene View Distortion Type"
      Enum {
        Value: "mc:eportalscenedistortiontype:newenumerator0"
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
  Blueprint {
    BlueprintAsset {
      Id: 6677237403455816226
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 9746697154476485604
  Name: "Zepplin"
  Transform {
    Location {
      X: 11025
      Y: -10975
      Z: 12750
    }
    Rotation {
      Yaw: -65.0000229
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 5390711871584181108
  ChildIds: 17070665414456968353
  ChildIds: 11165601612691461604
  ChildIds: 1423037076817084133
  ChildIds: 12931411916016270203
  ChildIds: 5657932411695166478
  ChildIds: 10131224950424082411
  ChildIds: 14558335972290449277
  ChildIds: 3106806688541745466
  ChildIds: 7883936386416812713
  ChildIds: 9773931251770519014
  ChildIds: 10111157115673087168
  ChildIds: 18093939320232844111
  ChildIds: 16074380404910995359
  ChildIds: 1644719443387758462
  ChildIds: 6039296020647866283
  ChildIds: 6342043307315215311
  ChildIds: 10949290571945000890
  ChildIds: 5835781090721896888
  ChildIds: 11359996725102473312
  ChildIds: 4539461003437227461
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
    Model {
    }
  }
}
Objects {
  Id: 4539461003437227461
  Name: "Balloon"
  Transform {
    Location {
      X: 98.0205078
      Y: 505.981171
      Z: 650
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: -10.0000124
      Roll: -89.9999237
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9746697154476485604
  ChildIds: 3020190056975773054
  ChildIds: 15739299989160457313
  ChildIds: 16995277477109710250
  ChildIds: 9798873047431957300
  ChildIds: 11405629087681836139
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
  Id: 11405629087681836139
  Name: "Ring"
  Transform {
    Location {
      X: 3.8079834
      Y: -0.0009765625
      Z: 855.123108
    }
    Rotation {
      Pitch: -6.10351563e-05
    }
    Scale {
      X: 1.25
      Y: 1.25
      Z: 3.5
    }
  }
  ParentId: 4539461003437227461
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4163602889644584143
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3280846803265585026
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 9798873047431957300
  Name: "Ring"
  Transform {
    Location {
      X: 4.73675537
      Y: -8.77380371e-05
      Z: 78.914917
    }
    Rotation {
      Pitch: -3.05175781e-05
    }
    Scale {
      X: 1.3
      Y: 1.3
      Z: 3.5
    }
  }
  ParentId: 4539461003437227461
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4163602889644584143
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3280846803265585026
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16995277477109710250
  Name: "Sphere"
  Transform {
    Location {
      X: -19.8757324
      Y: -0.000671386719
      Z: 460.548523
    }
    Rotation {
      Pitch: -1.36603776e-05
      Yaw: 3.41509372e-06
      Roll: 5.12264114e-06
    }
    Scale {
      X: 7
      Y: 7
      Z: 10.9999971
    }
  }
  ParentId: 4539461003437227461
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12978027183466891518
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 15739299989160457313
  Name: "Capsule"
  Transform {
    Location {
      X: -4.39611816
      Y: -0.00103759766
      Z: 982.334351
    }
    Rotation {
      Yaw: 3.41509372e-06
      Roll: 5.12264114e-06
    }
    Scale {
      X: 5
      Y: 5
      Z: 11.5
    }
  }
  ParentId: 4539461003437227461
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12978027183466891518
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3020190056975773054
  Name: "Capsule"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 3.41509372e-06
      Roll: 5.12264114e-06
    }
    Scale {
      X: 5
      Y: 5
      Z: 14.499999
    }
  }
  ParentId: 4539461003437227461
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12978027183466891518
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 11359996725102473312
  Name: "Sphere - Half Quarter"
  Transform {
    Location {
      X: -104.013672
      Y: -523.418945
      Z: 37.4990234
    }
    Rotation {
      Yaw: -10.0000067
      Roll: -179.999985
    }
    Scale {
      X: 4.96800041
      Y: -5.83200169
      Z: 4.104
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 5353819818729667171
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5835781090721896888
  Name: "Wing"
  Transform {
    Location {
      X: 522.789124
      Y: 280.023743
      Z: -97.5
    }
    Rotation {
      Pitch: -23.9601383
      Yaw: 87.7235641
      Roll: -11.2012758
    }
    Scale {
      X: 0.3
      Y: 0.3
      Z: 0.3
    }
  }
  ParentId: 9746697154476485604
  ChildIds: 490579866263664310
  ChildIds: 1205618387287668081
  ChildIds: 254980782083591187
  ChildIds: 11207126068441073866
  ChildIds: 5637140635610369368
  ChildIds: 5631800591428410846
  ChildIds: 7694889442790313069
  ChildIds: 15137982377615777835
  ChildIds: 3399998424232041380
  ChildIds: 10432225895628652095
  ChildIds: 16593467689052273819
  ChildIds: 11953766419754752042
  ChildIds: 16562146812381003704
  ChildIds: 15967559030344809876
  ChildIds: 2097642171670095431
  ChildIds: 7749774155287036140
  ChildIds: 1563552306534082363
  ChildIds: 751903718644319159
  ChildIds: 4104734736383591118
  ChildIds: 5500834509931015903
  ChildIds: 13469387722993481151
  ChildIds: 5221549447417067425
  ChildIds: 2305695115208846356
  ChildIds: 5954108599501545947
  ChildIds: 302717358220531636
  UnregisteredParameters {
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
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 302717358220531636
  Name: "Sphere"
  Transform {
    Location {
      X: 76.0932693
      Y: 512.584717
      Z: 64.4182816
    }
    Rotation {
      Pitch: 20.8534126
      Yaw: -99.4037476
      Roll: 1.1587863
    }
    Scale {
      X: 0.999997914
      Y: 11.7999821
      Z: 0.999997914
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5954108599501545947
  Name: "Sphere"
  Transform {
    Location {
      X: -175.33403
      Y: -3.34670973
      Z: 47.9374046
    }
    Rotation {
      Pitch: 14.2122564
      Yaw: -114.422974
      Roll: -4.42294312
    }
    Scale {
      X: 0.999999285
      Y: 11.7999964
      Z: 0.999999285
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 2305695115208846356
  Name: "Cube"
  Transform {
    Location {
      X: 105
      Y: 745
      Z: 55
    }
    Rotation {
      Yaw: -5.00021362
    }
    Scale {
      X: 8.2
      Y: 1.3
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5221549447417067425
  Name: "Sphere"
  Transform {
    Location {
      X: -410.433105
      Y: 837.020081
      Z: 56.1704597
    }
    Rotation {
      Pitch: -9.15527344e-05
      Yaw: 70.000061
      Roll: -179.999954
    }
    Scale {
      X: 0.769230664
      Y: 0.769230664
      Z: 0.769230664
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 13469387722993481151
  Name: "Cube"
  Transform {
    Location {
      X: -585
      Y: 305
      Z: 55
    }
    Rotation {
      Yaw: 69.9997787
    }
    Scale {
      X: 8.2
      Y: 1.3
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5500834509931015903
  Name: "Cube"
  Transform {
    Location {
      X: 545
      Y: 595
      Z: 60
    }
    Rotation {
      Yaw: 79.9997711
    }
    Scale {
      X: 2.69999981
      Y: 0.6
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 4104734736383591118
  Name: "Cube"
  Transform {
    Location {
      X: 420
      Y: 125
      Z: 60
    }
    Rotation {
      Yaw: 59.9998283
    }
    Scale {
      X: 1.9
      Y: 2.2
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 751903718644319159
  Name: "Cube"
  Transform {
    Location {
      X: 325
      Y: -230
      Z: 60
    }
    Rotation {
      Yaw: 64.9998627
    }
    Scale {
      X: 1.89999986
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1563552306534082363
  Name: "Cube"
  Transform {
    Location {
      X: 280
      Y: -330
      Z: 60
    }
    Rotation {
      Yaw: 79.9998779
    }
    Scale {
      X: 1.89999986
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 7749774155287036140
  Name: "Cube"
  Transform {
    Location {
      X: 10
      Y: -805
      Z: 55
    }
    Rotation {
      Yaw: 74.9998932
    }
    Scale {
      X: 1
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 2097642171670095431
  Name: "Cube"
  Transform {
    Location {
      X: 200
      Y: -475
      Z: 55
    }
    Rotation {
      Yaw: 44.9999084
    }
    Scale {
      X: 1
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 15967559030344809876
  Name: "Cube"
  Transform {
    Location {
      X: -80
      Y: 290
      Z: 60
    }
    Rotation {
      Yaw: 79.999939
    }
    Scale {
      X: 1.99999988
      Y: 3.10000014
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16562146812381003704
  Name: "Cube"
  Transform {
    Location {
      X: 290
      Y: 435
      Z: 60
    }
    Rotation {
      Yaw: 89.9999619
    }
    Scale {
      X: 5.3
      Y: 5.20000029
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 11953766419754752042
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 600
      Y: 450
      Z: 60
    }
    Rotation {
      Yaw: -95
    }
    Scale {
      X: 6.6
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16593467689052273819
  Name: "Cube"
  Transform {
    Location {
      X: -215
      Y: 595
      Z: 60
    }
    Rotation {
      Yaw: 79.9999619
    }
    Scale {
      X: 4
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 10432225895628652095
  Name: "Cube"
  Transform {
    Location {
      X: -210
      Y: -70
      Z: 60
    }
    Rotation {
      Yaw: 59.9999695
    }
    Scale {
      X: 1.30000007
      Y: 3.3
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3399998424232041380
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 440
      Y: -160
      Z: 60
    }
    Rotation {
      Yaw: -114.999969
    }
    Scale {
      X: 7.09999895
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 15137982377615777835
  Name: "Cube"
  Transform {
    Location {
      X: 160
      Y: -80
      Z: 60
    }
    Rotation {
      Yaw: 59.9999771
    }
    Scale {
      X: 5
      Y: 4.70000029
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 7694889442790313069
  Name: "Cube"
  Transform {
    Location {
      X: -265
      Y: 185
      Z: 60
    }
    Rotation {
      Yaw: 59.9999771
    }
    Scale {
      X: 2.8
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5631800591428410846
  Name: "Cube"
  Transform {
    Location {
      X: -550
      Y: 130
      Z: 55
    }
    Rotation {
      Yaw: 44.9999733
    }
    Scale {
      X: 2.2
      Y: 1.39999986
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5637140635610369368
  Name: "Cube"
  Transform {
    Location {
      X: -110
      Y: -520
      Z: 55
    }
    Rotation {
      Yaw: 59.9999504
    }
    Scale {
      X: 4.8
      Y: 5.3
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 11207126068441073866
  Name: "Cube"
  Transform {
    Location {
      X: -470
      Y: -200
      Z: 55
    }
    Rotation {
      Yaw: 44.9999733
    }
    Scale {
      X: 4.8
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 254980782083591187
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 160
      Y: -670
      Z: 55
    }
    Rotation {
      Yaw: -120.000008
    }
    Scale {
      X: 5.39999914
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1205618387287668081
  Name: "Sphere"
  Transform {
    Location {
      X: -393.941406
      Y: -536.05481
      Z: 69.7727661
    }
    Rotation {
      Pitch: 4.50131321
      Yaw: -131.419388
      Roll: -2.1680603
    }
    Scale {
      X: 0.999999762
      Y: 11.8000011
      Z: 0.999999762
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 490579866263664310
  Name: "Sphere"
  Transform {
    Location {
      X: -645.407288
      Y: 255.394272
      Z: 40.1646
    }
    Rotation {
      Pitch: 1.92873609
      Yaw: -22.2469177
      Roll: -1.10952759
    }
    Scale {
      X: 0.999999464
      Y: 15.5999851
      Z: 0.999999464
    }
  }
  ParentId: 5835781090721896888
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 10949290571945000890
  Name: "Wing"
  Transform {
    Location {
      X: -415.380554
      Y: 458.904022
      Z: -60
    }
    Rotation {
      Pitch: -8.39330482
      Yaw: 71.8865891
      Roll: -169.519989
    }
    Scale {
      X: 0.3
      Y: 0.3
      Z: 0.3
    }
  }
  ParentId: 9746697154476485604
  ChildIds: 14769278043222252064
  ChildIds: 17739664695497489225
  ChildIds: 6677606451650984109
  ChildIds: 4651958147076604746
  ChildIds: 4851116767469075084
  ChildIds: 1399690319501393145
  ChildIds: 13975927224484525427
  ChildIds: 7922027369994456806
  ChildIds: 3182136065958644004
  ChildIds: 14827650141384319608
  ChildIds: 10131772497854973922
  ChildIds: 11997952268033109579
  ChildIds: 16170402222898238452
  ChildIds: 4575513295775126506
  ChildIds: 1475538438494092848
  ChildIds: 1975633358485365702
  ChildIds: 16812935532945647137
  ChildIds: 15980595727269857951
  ChildIds: 16059561923693623211
  ChildIds: 3026826151918320463
  ChildIds: 3609498459407521539
  ChildIds: 5050701921460526535
  ChildIds: 17280430816702659770
  ChildIds: 14198307050973933770
  ChildIds: 1256687650386022985
  UnregisteredParameters {
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
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 1256687650386022985
  Name: "Sphere"
  Transform {
    Location {
      X: 76.0932693
      Y: 512.584717
      Z: 64.4182816
    }
    Rotation {
      Pitch: 20.8534126
      Yaw: -99.4037476
      Roll: 1.1587863
    }
    Scale {
      X: 0.999997914
      Y: 11.7999821
      Z: 0.999997914
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 14198307050973933770
  Name: "Sphere"
  Transform {
    Location {
      X: -132.366394
      Y: -5.02870941
      Z: 120.150803
    }
    Rotation {
      Pitch: 14.2122564
      Yaw: -114.422974
      Roll: -4.42294312
    }
    Scale {
      X: 0.999999285
      Y: 11.7999964
      Z: 0.999999285
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 17280430816702659770
  Name: "Cube"
  Transform {
    Location {
      X: 105
      Y: 745
      Z: 55
    }
    Rotation {
      Yaw: -5.00021362
    }
    Scale {
      X: 8.2
      Y: 1.3
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5050701921460526535
  Name: "Sphere"
  Transform {
    Location {
      X: -410.433105
      Y: 837.020081
      Z: 56.1704597
    }
    Rotation {
      Pitch: -9.15527344e-05
      Yaw: 70.000061
      Roll: -179.999954
    }
    Scale {
      X: 0.769230664
      Y: 0.769230664
      Z: 0.769230664
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
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
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3609498459407521539
  Name: "Cube"
  Transform {
    Location {
      X: -585
      Y: 305
      Z: 55
    }
    Rotation {
      Yaw: 69.9997787
    }
    Scale {
      X: 8.2
      Y: 1.3
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3026826151918320463
  Name: "Cube"
  Transform {
    Location {
      X: 545
      Y: 595
      Z: 60
    }
    Rotation {
      Yaw: 79.9997711
    }
    Scale {
      X: 2.69999981
      Y: 0.6
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16059561923693623211
  Name: "Cube"
  Transform {
    Location {
      X: 420
      Y: 125
      Z: 60
    }
    Rotation {
      Yaw: 59.9998283
    }
    Scale {
      X: 1.9
      Y: 2.2
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 15980595727269857951
  Name: "Cube"
  Transform {
    Location {
      X: 325
      Y: -230
      Z: 60
    }
    Rotation {
      Yaw: 64.9998627
    }
    Scale {
      X: 1.89999986
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16812935532945647137
  Name: "Cube"
  Transform {
    Location {
      X: 280
      Y: -330
      Z: 60
    }
    Rotation {
      Yaw: 79.9998779
    }
    Scale {
      X: 1.89999986
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1975633358485365702
  Name: "Cube"
  Transform {
    Location {
      X: 10
      Y: -805
      Z: 55
    }
    Rotation {
      Yaw: 74.9998932
    }
    Scale {
      X: 1
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1475538438494092848
  Name: "Cube"
  Transform {
    Location {
      X: 200
      Y: -475
      Z: 55
    }
    Rotation {
      Yaw: 44.9999084
    }
    Scale {
      X: 1
      Y: 0.7
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 4575513295775126506
  Name: "Cube"
  Transform {
    Location {
      X: -80
      Y: 290
      Z: 60
    }
    Rotation {
      Yaw: 79.999939
    }
    Scale {
      X: 1.99999988
      Y: 3.10000014
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16170402222898238452
  Name: "Cube"
  Transform {
    Location {
      X: 290
      Y: 435
      Z: 60
    }
    Rotation {
      Yaw: 89.9999619
    }
    Scale {
      X: 5.3
      Y: 5.20000029
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 11997952268033109579
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 600
      Y: 450
      Z: 60
    }
    Rotation {
      Yaw: -95
    }
    Scale {
      X: 6.6
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 10131772497854973922
  Name: "Cube"
  Transform {
    Location {
      X: -215
      Y: 595
      Z: 60
    }
    Rotation {
      Yaw: 79.9999619
    }
    Scale {
      X: 4
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 14827650141384319608
  Name: "Cube"
  Transform {
    Location {
      X: -210
      Y: -70
      Z: 60
    }
    Rotation {
      Yaw: 59.9999695
    }
    Scale {
      X: 1.30000007
      Y: 3.3
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3182136065958644004
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 440
      Y: -160
      Z: 60
    }
    Rotation {
      Yaw: -114.999969
    }
    Scale {
      X: 7.09999895
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 7922027369994456806
  Name: "Cube"
  Transform {
    Location {
      X: 160
      Y: -80
      Z: 60
    }
    Rotation {
      Yaw: 59.9999771
    }
    Scale {
      X: 5
      Y: 4.70000029
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 13975927224484525427
  Name: "Cube"
  Transform {
    Location {
      X: -265
      Y: 185
      Z: 60
    }
    Rotation {
      Yaw: 59.9999771
    }
    Scale {
      X: 2.8
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1399690319501393145
  Name: "Cube"
  Transform {
    Location {
      X: -550
      Y: 130
      Z: 55
    }
    Rotation {
      Yaw: 44.9999733
    }
    Scale {
      X: 2.2
      Y: 1.39999986
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 4851116767469075084
  Name: "Cube"
  Transform {
    Location {
      X: -110
      Y: -520
      Z: 55
    }
    Rotation {
      Yaw: 59.9999504
    }
    Scale {
      X: 4.8
      Y: 5.3
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 4651958147076604746
  Name: "Cube"
  Transform {
    Location {
      X: -470
      Y: -200
      Z: 55
    }
    Rotation {
      Yaw: 44.9999733
    }
    Scale {
      X: 4.8
      Y: 5.9
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 6677606451650984109
  Name: "Pipe - Half"
  Transform {
    Location {
      X: 160
      Y: -670
      Z: 55
    }
    Rotation {
      Yaw: -120.000008
    }
    Scale {
      X: 5.39999914
      Y: 1
      Z: 0.01
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7516257627012008757
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 17739664695497489225
  Name: "Sphere"
  Transform {
    Location {
      X: -393.941406
      Y: -536.05481
      Z: 69.7727661
    }
    Rotation {
      Pitch: 4.50131321
      Yaw: -131.419388
      Roll: -2.1680603
    }
    Scale {
      X: 0.999999762
      Y: 11.8000011
      Z: 0.999999762
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 14769278043222252064
  Name: "Sphere"
  Transform {
    Location {
      X: -645.407288
      Y: 255.394272
      Z: 40.1646
    }
    Rotation {
      Pitch: 1.92873609
      Yaw: -22.2469177
      Roll: -1.10952759
    }
    Scale {
      X: 0.999999464
      Y: 15.5999851
      Z: 0.999999464
    }
  }
  ParentId: 10949290571945000890
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 12434974458467685788
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 6342043307315215311
  Name: "Cylinder"
  Transform {
    Location {
      X: -66.300766
      Y: 328.348083
      Z: 232.5
    }
    Rotation {
      Pitch: 24.0388775
      Yaw: 129.670868
      Roll: -10.9433746
    }
    Scale {
      X: 0.0720000044
      Y: 0.0720000044
      Z: 5.11200047
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 6039296020647866283
  Name: "Cylinder"
  Transform {
    Location {
      X: 92.1704102
      Y: -382.757568
      Z: 232.5
    }
    Rotation {
      Pitch: 24.039
      Yaw: -60.329071
      Roll: -10.9425354
    }
    Scale {
      X: 0.0720000044
      Y: 0.0720000044
      Z: 5.11200047
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1644719443387758462
  Name: "Cylinder"
  Transform {
    Location {
      X: -159.107666
      Y: 372.127655
      Z: 18
    }
    Rotation {
      Yaw: 170
      Roll: -89.9999771
    }
    Scale {
      X: 0.210000008
      Y: 0.210000008
      Z: 0.18
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 16074380404910995359
  Name: "Sphere - Half Quarter"
  Transform {
    Location {
      X: -104.013794
      Y: -523.414124
      Z: 37.5
    }
    Rotation {
      Yaw: 170.000198
      Roll: 179.999893
    }
    Scale {
      X: 4.96800041
      Y: 5.83200169
      Z: 4.104
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 5353819818729667171
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 18093939320232844111
  Name: "Crescent - 02"
  Transform {
    Location {
      X: 1.00844574
      Y: 72.1971
      Z: 1.5
    }
    Rotation {
      Pitch: 90
      Yaw: -8.13011169
      Roll: -88.1297607
    }
    Scale {
      X: 3.312
      Y: 4.75200033
      Z: 12.0960016
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 4391960024057198399
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 10111157115673087168
  Name: "Sphere - Half Quarter"
  Transform {
    Location {
      X: 119.635895
      Y: 658.990417
      Z: 37.5
    }
    Rotation {
      Pitch: 90
      Yaw: 14.0362635
      Roll: -155.963806
    }
    Scale {
      X: 4.104
      Y: 2.30400014
      Z: 4.89599943
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 5353819818729667171
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 9773931251770519014
  Name: "Sphere - Half Quarter"
  Transform {
    Location {
      X: 120.064148
      Y: 661.056458
      Z: 39
    }
    Rotation {
      Yaw: -10.0000038
      Roll: 179.999893
    }
    Scale {
      X: 4.96800041
      Y: 2.30400038
      Z: 4.104
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 5353819818729667171
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 7883936386416812713
  Name: "Capsule"
  Transform {
    Location {
      X: -6.29710197
      Y: -13.8418369
      Z: 19.5
    }
    Rotation {
      Yaw: -10
      Roll: -89.9999084
    }
    Scale {
      X: 4.62000084
      Y: 0.0003
      Z: 8.16000271
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 916665379155427451
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 3106806688541745466
  Name: "Cylinder"
  Transform {
    Location {
      X: 179.1577
      Y: -442.265259
      Z: 18
    }
    Rotation {
      Yaw: -9.99996948
      Roll: -90
    }
    Scale {
      X: 0.210000008
      Y: 0.210000008
      Z: 0.18
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 14558335972290449277
  Name: "Cylinder"
  Transform {
    Location {
      X: 275.66922
      Y: 302.193604
      Z: 18
    }
    Rotation {
      Yaw: 170
      Roll: -89.9999771
    }
    Scale {
      X: 0.210000008
      Y: 0.210000008
      Z: 0.18
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 10131224950424082411
  Name: "Cylinder"
  Transform {
    Location {
      X: -280.808838
      Y: -365.576813
      Z: 18
    }
    Rotation {
      Yaw: -10
      Roll: -89.9999695
    }
    Scale {
      X: 0.210000008
      Y: 0.210000008
      Z: 0.18
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 5657932411695166478
  Name: "Cylinder"
  Transform {
    Location {
      X: 173.482
      Y: 292.794
      Z: 232.5
    }
    Rotation {
      Pitch: -24.0391712
      Yaw: -149.670578
      Roll: -10.9434023
    }
    Scale {
      X: 0.0720000044
      Y: 0.0720000044
      Z: 5.11200047
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 12931411916016270203
  Name: "Cylinder"
  Transform {
    Location {
      X: -178.714127
      Y: -339.407745
      Z: 232.5
    }
    Rotation {
      Pitch: -24.0391846
      Yaw: 40.3291588
      Roll: -10.9424438
    }
    Scale {
      X: 0.0720000044
      Y: 0.0720000044
      Z: 5.11200047
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 3090596827184957478
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 1423037076817084133
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: -176.404297
      Y: -525.330078
      Z: 25.6083984
    }
    Rotation {
      Pitch: -90
      Yaw: -77.7995148
      Roll: -92.1958618
    }
    Scale {
      X: -8.64
      Y: -5.97600079
      Z: -5.97600079
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 11419119698583631523
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 11165601612691461604
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: -33.954834
      Y: -546.79657
      Z: 29.2587891
    }
    Rotation {
      Pitch: 90
      Yaw: 9.46233559
      Roll: 39.4630737
    }
    Scale {
      X: 8.64000225
      Y: 5.97599888
      Z: 5.97599888
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 11419119698583631523
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
Objects {
  Id: 17070665414456968353
  Name: "Cylinder"
  Transform {
    Location {
      X: -158.505249
      Y: -842.689697
      Z: 135
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -9.99999905
      Roll: -54.4930725
    }
    Scale {
      X: 0.548504412
      Y: 0.548503697
      Z: 4.9700985
    }
  }
  ParentId: 9746697154476485604
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15180532998943049315
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1137112816547272582
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
}
