// Generated by gencpp from file face_recognition_facenet/RecognizedResult.msg
// DO NOT EDIT!


#ifndef FACE_RECOGNITION_FACENET_MESSAGE_RECOGNIZEDRESULT_H
#define FACE_RECOGNITION_FACENET_MESSAGE_RECOGNIZEDRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>

namespace face_recognition_facenet
{
template <class ContainerAllocator>
struct RecognizedResult_
{
  typedef RecognizedResult_<ContainerAllocator> Type;

  RecognizedResult_()
    : name()
    , confidence()
    , position()  {
    }
  RecognizedResult_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , confidence(_alloc)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _confidence_type;
  _confidence_type confidence;

   typedef std::vector< ::geometry_msgs::PointStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PointStamped_<ContainerAllocator> >::other >  _position_type;
  _position_type position;




  typedef boost::shared_ptr< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> const> ConstPtr;

}; // struct RecognizedResult_

typedef ::face_recognition_facenet::RecognizedResult_<std::allocator<void> > RecognizedResult;

typedef boost::shared_ptr< ::face_recognition_facenet::RecognizedResult > RecognizedResultPtr;
typedef boost::shared_ptr< ::face_recognition_facenet::RecognizedResult const> RecognizedResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace face_recognition_facenet

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'face_recognition_facenet': ['/home/hri/catkin_ws/src/face_recognition_facenet/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1ccf0ba3315bc6eb07115c591b599d8b";
  }

  static const char* value(const ::face_recognition_facenet::RecognizedResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1ccf0ba3315bc6ebULL;
  static const uint64_t static_value2 = 0x07115c591b599d8bULL;
};

template<class ContainerAllocator>
struct DataType< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "face_recognition_facenet/RecognizedResult";
  }

  static const char* value(const ::face_recognition_facenet::RecognizedResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] name\n\
float64[] confidence\n\
geometry_msgs/PointStamped[] position\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::face_recognition_facenet::RecognizedResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.confidence);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecognizedResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::face_recognition_facenet::RecognizedResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::face_recognition_facenet::RecognizedResult_<ContainerAllocator>& v)
  {
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "confidence[]" << std::endl;
    for (size_t i = 0; i < v.confidence.size(); ++i)
    {
      s << indent << "  confidence[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.confidence[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.position[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // FACE_RECOGNITION_FACENET_MESSAGE_RECOGNIZEDRESULT_H
