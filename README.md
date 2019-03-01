Disclaimer : It’s all wip, api will often change until it matures.

cxfx’s objective is to facilitate the development of games and applications in cx. So that developers can focus on building their apps instead of having to rewrite everything. This is a way to share and factorize knowledge.

At first it’ll be a lib only environment, you access cxfx functionalities from a cx program. Later we could imagine someone build a WYSIWYG game editor with it but that’s really far away.

Best way to contribute to cxfx is to fork : https://github.com/skycoin/cxfx/ 

Tutorials can be found here : https://github.com/skycoin/cxfx/tutorials
Tutorials are numbered and progressing through the functionalities.
You can launch them from the tutorials dir by running 

```
make 0_colored_quad
...
make 10_dialog
...
```

What’s needed :

user contribution :
- writing apps with cxfx
- testing the tutorials
- reporting bugs
- feedback regarding the usage (what needs to be improved, what functionalities are missing etc)
- writing documentation for the tutorials code
- writing documentation for the lib (should be driven by the tutorials)
- writing small self contained examples. Tutorials are a walkthrough a little game creation, we should also have some small examples.
- writing gui examples

developer contribution : expending the functionalities
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

What is done :
- openal abstraction (wav playback)
- opengl abstraction (texture/shaders/meshes)
- wip matrix
- wip 2d gui toolkit
- wip cameras
