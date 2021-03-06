// Generated by gencpp from file mhri_msgs/GetInstalledGesturesResponse.msg
// DO NOT EDIT!


#ifndef MHRI_MSGS_MESSAGE_GETINSTALLEDGESTURESRESPONSE_H
#define MHRI_MSGS_MESSAGE_GETINSTALLEDGESTURESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mhri_msgs
{
template <class ContainerAllocator>
struct GetInstalledGesturesResponse_
{
  typedef GetInstalledGesturesResponse_<ContainerAllocator> Type;

  GetInstalledGesturesResponse_()
    : gestures()  {
    }
  GetInstalledGesturesResponse_(const ContainerAllocator& _alloc)
    : gestures(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gestures_type;
  _gestures_type gestures;




  typedef boost::shared_ptr< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetInstalledGesturesResponse_

typedef ::mhri_msgs::GetInstalledGesturesResponse_<std::allocator<void> > GetInstalledGesturesResponse;

typedef boost::shared_ptr< ::mhri_msgs::GetInstalledGesturesResponse > GetInstalledGesturesResponsePtr;
typedef boost::shared_ptr< ::mhri_msgs::GetInstalledGesturesResponse const> GetInstalledGesturesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mhri_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'mhri_msgs': ['/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg', '/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5365bf3eb93d84030fba702bd892ff42";
  }

  static const char* value(const ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5365bf3eb93d8403ULL;
  static const uint64_t static_value2 = 0x0fba702bd892ff42ULL;
};

template<class ContainerAllocator>
struct DataType< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mhri_msgs/GetInstalledGesturesResponse";
  }

  static const char* value(const ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string gestures\n\
\n\
";
  }

  static const char* value(const ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gestures);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetInstalledGesturesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mhri_msgs::GetInstalledGesturesResponse_<ContainerAllocator>& v)
  {
    s << indent << "gestures: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gestures);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MHRI_MSGS_MESSAGE_GETINSTALLEDGESTURESRESPONSE_H
