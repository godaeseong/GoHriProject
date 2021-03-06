// Generated by gencpp from file mhri_msgs/GetDataListRequest.msg
// DO NOT EDIT!


#ifndef MHRI_MSGS_MESSAGE_GETDATALISTREQUEST_H
#define MHRI_MSGS_MESSAGE_GETDATALISTREQUEST_H


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
struct GetDataListRequest_
{
  typedef GetDataListRequest_<ContainerAllocator> Type;

  GetDataListRequest_()
    {
    }
  GetDataListRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetDataListRequest_

typedef ::mhri_msgs::GetDataListRequest_<std::allocator<void> > GetDataListRequest;

typedef boost::shared_ptr< ::mhri_msgs::GetDataListRequest > GetDataListRequestPtr;
typedef boost::shared_ptr< ::mhri_msgs::GetDataListRequest const> GetDataListRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mhri_msgs::GetDataListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mhri_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'mhri_msgs': ['/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg', '/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::mhri_msgs::GetDataListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mhri_msgs/GetDataListRequest";
  }

  static const char* value(const ::mhri_msgs::GetDataListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::mhri_msgs::GetDataListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetDataListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mhri_msgs::GetDataListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::mhri_msgs::GetDataListRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MHRI_MSGS_MESSAGE_GETDATALISTREQUEST_H
