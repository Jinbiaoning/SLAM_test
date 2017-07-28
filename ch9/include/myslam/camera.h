/*
 * Copyright 2017 <copyright holder> <email>
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 */

#ifndef CAMERA_H
#define CAMERA_H
#include ""myslam/common_include.h"
namespace myslam
{
//Pinhole RGB-D camera model
class Camera
{
public:
  typedef std::shared_ptr<Camera> Ptr;
  float fx_,fy_cx_,cy_, depth_scale_;// Camera intrinsics
  
  Camera();
  
  Camera(float fx, float fy, float cx, float cy, float depth_scale=0):
  fx_ (fx), fy_ (fy), cx_ (cx), cy_ (cy), depth_scale_ (depth_scale)
  {}
  //coordinate transform: world, camera, pixel
  Vector3d world2camera(const Vectorr3d& p_w, const SE3& T_c_w);
  Vector3d camera2world(const Vectorr3d& p_c, const SE3& T_c_w);
  Vector2d camera2pixel(const Vectorr3d& p_c);
  Vector3d pixel2camera(const Vectorr2d& p_p, double depth=1);
  Vector3d pixel2world (const Vectorr2d& p_p, const SE3& T_c_w, double depth=1);
  Vector2d world2pixel (const Vectorr3d& p_w, const SE3& T_c_w);
  

};
}
#endif // CAMERA_H
