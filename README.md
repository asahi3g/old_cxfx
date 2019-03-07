## Disclaimer : It’s all wip, api will change until it matures.

## Cx game library.

#### Wip :
- openal abstraction (wav playback)
- opengl abstraction (texture/shaders/meshes)
- matrix
- 2d gui toolkit
- cameras
- gltf loader
- pbr

#### Needed :

##### user contribution :
- writing apps with cxfx
- testing the tutorials
- reporting bugs
- feedback regarding the usage (what needs to be improved, what functionalities are missing etc)
- writing documentation for the tutorials code
- writing documentation for the lib (should be driven by the tutorials)
- writing small self contained examples. Tutorials are a walkthrough a little game creation, we should also have some small examples.
- writing gui examples

##### developer contribution :
- math lib (matrix/vector/quaternion)
- collision detection
- physics
- model export and loading
- handling resize events (toggle fullscreen)
- cameras (tps, fps ..., smooth motions)
- audio streaming
- 3d audio
- mp3 playback
- wav f32 and f64
- lighting/shading
- hot reload of shader files
- refactor/improve/debug/bulletproof the 2d ui toolkit (it's unstable now)
- texture compression
- grep -RHn TODO in lib/cxfx/ 
- grep -RHn ISSUE in lib/cxfx/ those are cx language issues, they need to be extracted in small cx programs and opened as issue on skycoin/cx
- gui serialization in json
- cxo leaderboards ?
- cx linter ?
- blockchain integration
- code cleanup
- resource cleanup
- optimizations
- api design
- porting to mobile
- r&d regarding ios metal and android vulkan

## Tutorials :

```
make 0_colored_quad
```
<img width="100%" height="100%" src="screenshots/colored_quad_tutorial.png">

```
make 1_textured_quad
```
<img width="100%" height="100%" src="screenshots/textured_quad_tutorial.png">

```
make 2_text
```
<img width="100%" height="100%" src="screenshots/text_tutorial.png">

```
make 3_perspective
```
<img width="100%" height="100%" src="screenshots/perspective_tutorial.png">

```
make 4_camera
```
<img width="100%" height="100%" src="screenshots/camera_tutorial.png">

```
make 5_batch
```
<img width="100%" height="100%" src="screenshots/batch_tutorial.png">

```
make 6_model
```
<img width="100%" height="100%" src="screenshots/model_tutorial.png">

```
// TODO : implement pbr
make pbr
```
<img width="100%" height="100%" src="screenshots/pbr_tutorial.png">

```
make 7_menu
```
TODO : add screenshot

```
make 8_sound
```
TODO : add screenshot

```
make 9_button
```
<img width="100%" height="100%" src="screenshots/button_tutorial.png">

```
make 10_dialog
```
<img width="100%" height="100%" src="screenshots/dialog_tutorial.png">

