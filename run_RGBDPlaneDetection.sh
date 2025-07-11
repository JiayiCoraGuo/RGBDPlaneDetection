cd /home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/RGBDPlaneDetection
target_path='/home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/plane'
for i in $(seq 1 1 10335)
do
  mkdir $target_path/$(printf "%06d" $i)
  echo "Detecting plane on scene ${i}"
  rgb=/home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/image_resize_640480/$(printf "%06d" $i).jpg
  echo $rgb
  depth=/home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/raw_depth_resize_640480/$(printf "%06d" $i).png
  echo $depth
  .build/RGBDPlaneDetection -o /home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/image_resize_640480/$(printf "%06d" $i).jpg /home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/raw_depth_resize_640480/$(printf "%06d" $i).png /home/coraguo/RIPS25-AnalogDevices-ObjectDetection/src/3d_C_P/mmdetection3d/data/sunrgbd/sunrgbd_trainval/plane/$(printf "%06d" $i)/
done