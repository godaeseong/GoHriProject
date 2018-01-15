// Generated by gencpp from file mhri_msgs/ReadDataResponse.msg
// DO NOT EDIT!


#ifndef MHRI_MSGS_MESSAGE_READDATARESPONSE_H
#define MHRI_MSGS_MESSAGE_READDATARESPONSE_H


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
struct ReadDataResponse_
{
  typedef ReadDataResponse_<ContainerAllocator> Type;

  ReadDataResponse_()
    : data()
    , result(false)  {
    }
  ReadDataResponse_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , result(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;

   typedef uint8_t _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReadDataResponse_

typedef ::mhri_msgs::ReadDataResponse_<std::allocator<void> > ReadDataResponse;

typedef boost::shared_ptr< ::mhri_msgs::ReadDataResponse > ReadDataResponsePtr;
typedef boost::shared_ptr< ::mhri_msgs::ReadDataResponse const> ReadDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mhri_msgs::ReadDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f99f23386590152c3b156cb22c6e6b02";
  }

  static const char* value(const ::mhri_msgs::ReadDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf99f23386590152cULL;
  static const uint64_t static_value2 = 0x3b156cb22c6e6b02ULL;
};

template<class ContainerAllocator>
struct DataType< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mhri_msgs/ReadDataResponse";
  }

  static const char* value(const ::mhri_msgs::ReadDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string data\n\
bool result\n\
\n\
";
  }

  static const char* value(const ::mhri_msgs::ReadDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mhri_msgs::ReadDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mhri_msgs::ReadDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MHRI_MSGS_MESSAGE_READDATARESPONSE_H