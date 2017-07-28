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

#include "myslam/camera.h"
namespace myslam
{
Camera::Camera()
{

}

Vector3d Camera::world2camera(const Vector3d& p_w, const SE3& T_c_w)
{
  return T_c_w*p_w;
}

Vector3d Camera::camera2world(const Vector3d& p_c, const SE3& T_c_w)
{
  return T_c_w.inverse() *p_c;
}

Vector3d Camera::camera2pixel(const Vector3d& p_c)
{
  return Vector2d(
  fx_*p_c(0,0)/p_c(2,0)+cx_,
  fy_*p_c(1,0)/p_c(2,0)+cy_ 
 );
}

Vector3d Camera::pixel2camera(const Vector2d& p_p, double depth)
{
  return Vector3d(
  (p_p(0,0)-cx_)*depth/fx_,
  (p_p(1,0)-cy_)*depth/fy_, 
   depth
 );
}

Vector3d Camera::world2pixel(const Vector3d& p_w, const SE3& T_c_w)
{
  return camera2pixel(world2camera(p_w,T_c_w));
}

Vector3d Camera::pixel2world(const Vector2d& p_p, const SE3& T_c_w, double depth)
{
  return camera2world(pixel2camera(p_p,depth),T_c_w);
}

}
