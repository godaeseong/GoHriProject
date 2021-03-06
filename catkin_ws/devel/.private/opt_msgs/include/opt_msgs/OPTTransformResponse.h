// Generated by gencpp from file opt_msgs/OPTTransformResponse.msg
// DO NOT EDIT!


#ifndef OPT_MSGS_MESSAGE_OPTTRANSFORMRESPONSE_H
#define OPT_MSGS_MESSAGE_OPTTRANSFORMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace opt_msgs
{
template <class ContainerAllocator>
struct OPTTransformResponse_
{
  typedef OPTTransformResponse_<ContainerAllocator> Type;

  OPTTransformResponse_()
    : status(0)
    , message()  {
    }
  OPTTransformResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;


    enum { STATUS_OK = 0u };
     enum { STATUS_ERROR = 1u };
 

  typedef boost::shared_ptr< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> const> ConstPtr;

}; // struct OPTTransformResponse_

typedef ::opt_msgs::OPTTransformResponse_<std::allocator<void> > OPTTransformResponse;

typedef boost::shared_ptr< ::opt_msgs::OPTTransformResponse > OPTTransformResponsePtr;
typedef boost::shared_ptr< ::opt_msgs::OPTTransformResponse const> OPTTransformResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opt_msgs::OPTTransformResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opt_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'opt_msgs': ['/home/hri/catkin_ws/src/openptrack/opt_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac261c205e4177b1ec185bac70e17d54";
  }

  static const char* value(const ::opt_msgs::OPTTransformResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac261c205e4177b1ULL;
  static const uint64_t static_value2 = 0xec185bac70e17d54ULL;
};

template<class ContainerAllocator>
struct DataType< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opt_msgs/OPTTransformResponse";
  }

  static const char* value(const ::opt_msgs::OPTTransformResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
uint8 STATUS_OK=0\n\
uint8 STATUS_ERROR=1\n\
\n\
uint8  status\n\
string message\n\
\n\
";
  }

  static const char* value(const ::opt_msgs::OPTTransformResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OPTTransformResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opt_msgs::OPTTransformResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opt_msgs::OPTTransformResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPT_MSGS_MESSAGE_OPTTRANSFORMRESPONSE_H
