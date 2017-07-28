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

#ifndef FRAME_H
#define FRAME_H

class Frame
{
public:
  typedef std::shared_ptr<Frame> Ptr;
  unsigned long id_;//id of this frame
  double time_stamp_;//when it is recorded
  SE3 T_c_w;//transform from world to camera
  Camera::Ptr camera_;// Pinhole RGB-d Camera model
  Mat color_,depth_; //color and depth  image

public:  //data member
  Frame();
  Frame (long id, double time_stamp=0, SE3 T_c_w=SE3(), cAMERA::Ptr camera=nullptr, Mat color=Mat(),
	 Mat dept=Mat());
  ~Frame();
  //factory function
  static Frame::Ptr createFrame();
  //find the depth in depth map
  double findDepth(const cv:: KeyPoint& kp);
  //Get camera center
  Vector3d getCamCenter() const;
  //check if a point is in this frame
  bool isInFrame(const Vector3d& pt_world);

};

#endif // FRAME_H
