// Generated by gencpp from file calibration_msgs/CheckerboardExtractionGoal.msg
// DO NOT EDIT!


#ifndef CALIBRATION_MSGS_MESSAGE_CHECKERBOARDEXTRACTIONGOAL_H
#define CALIBRATION_MSGS_MESSAGE_CHECKERBOARDEXTRACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <calibration_msgs/Checkerboard.h>

namespace calibration_msgs
{
template <class ContainerAllocator>
struct CheckerboardExtractionGoal_
{
  typedef CheckerboardExtractionGoal_<ContainerAllocator> Type;

  CheckerboardExtractionGoal_()
    : header()
    , checkerboard()
    , extract_from(0)
    , max_depth_points(0)  {
    }
  CheckerboardExtractionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , checkerboard(_alloc)
    , extract_from(0)
    , max_depth_points(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::calibration_msgs::Checkerboard_<ContainerAllocator>  _checkerboard_type;
  _checkerboard_type checkerboard;

   typedef uint8_t _extract_from_type;
  _extract_from_type extract_from;

   typedef int32_t _max_depth_points_type;
  _max_depth_points_type max_depth_points;


    enum { EXTRACT_FROM_NONE = 0u };
     enum { EXTRACT_FROM_IMAGE = 1u };
     enum { EXTRACT_FROM_DEPTH = 2u };
     enum { EXTRACT_FROM_ALL = 3u };
     enum { ALL_POINTS = -1 };
     enum { PLANE_ONLY = 0 };
 

  typedef boost::shared_ptr< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CheckerboardExtractionGoal_

typedef ::calibration_msgs::CheckerboardExtractionGoal_<std::allocator<void> > CheckerboardExtractionGoal;

typedef boost::shared_ptr< ::calibration_msgs::CheckerboardExtractionGoal > CheckerboardExtractionGoalPtr;
typedef boost::shared_ptr< ::calibration_msgs::CheckerboardExtractionGoal const> CheckerboardExtractionGoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace calibration_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'calibration_msgs': ['/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg', '/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6755a0628825fba080d03429f57f9f9e";
  }

  static const char* value(const ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6755a0628825fba0ULL;
  static const uint64_t static_value2 = 0x80d03429f57f9f9eULL;
};

template<class ContainerAllocator>
struct DataType< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "calibration_msgs/CheckerboardExtractionGoal";
  }

  static const char* value(const ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal\n\
\n\
uint8 EXTRACT_FROM_NONE=0\n\
uint8 EXTRACT_FROM_IMAGE=1\n\
uint8 EXTRACT_FROM_DEPTH=2\n\
uint8 EXTRACT_FROM_ALL=3\n\
\n\
int32 ALL_POINTS=-1\n\
int32 PLANE_ONLY=0\n\
\n\
Header header\n\
\n\
Checkerboard checkerboard\n\
uint8 extract_from\n\
int32 max_depth_points\n\
\n\
# max_depth_points must be in the interval [3, +inf[\n\
# or be one of the special values ALL_POINTS, PLANE_ONLY\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: calibration_msgs/Checkerboard\n\
Header header\n\
\n\
string parent_frame_id\n\
geometry_msgs/Pose pose\n\
\n\
uint32 rows\n\
uint32 cols\n\
float32 cell_width\n\
float32 cell_height\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.checkerboard);
      stream.next(m.extract_from);
      stream.next(m.max_depth_points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckerboardExtractionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::calibration_msgs::CheckerboardExtractionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "checkerboard: ";
    s << std::endl;
    Printer< ::calibration_msgs::Checkerboard_<ContainerAllocator> >::stream(s, indent + "  ", v.checkerboard);
    s << indent << "extract_from: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.extract_from);
    s << indent << "max_depth_points: ";
    Printer<int32_t>::stream(s, indent + "  ", v.max_depth_points);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CALIBRATION_MSGS_MESSAGE_CHECKERBOARDEXTRACTIONGOAL_H
