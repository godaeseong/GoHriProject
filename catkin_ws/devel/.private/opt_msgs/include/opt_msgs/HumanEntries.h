// Generated by gencpp from file opt_msgs/HumanEntries.msg
// DO NOT EDIT!


#ifndef OPT_MSGS_MESSAGE_HUMANENTRIES_H
#define OPT_MSGS_MESSAGE_HUMANENTRIES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <opt_msgs/HumanEntry.h>

namespace opt_msgs
{
template <class ContainerAllocator>
struct HumanEntries_
{
  typedef HumanEntries_<ContainerAllocator> Type;

  HumanEntries_()
    : header()
    , entries()  {
    }
  HumanEntries_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , entries(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::opt_msgs::HumanEntry_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::opt_msgs::HumanEntry_<ContainerAllocator> >::other >  _entries_type;
  _entries_type entries;




  typedef boost::shared_ptr< ::opt_msgs::HumanEntries_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opt_msgs::HumanEntries_<ContainerAllocator> const> ConstPtr;

}; // struct HumanEntries_

typedef ::opt_msgs::HumanEntries_<std::allocator<void> > HumanEntries;

typedef boost::shared_ptr< ::opt_msgs::HumanEntries > HumanEntriesPtr;
typedef boost::shared_ptr< ::opt_msgs::HumanEntries const> HumanEntriesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opt_msgs::HumanEntries_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opt_msgs::HumanEntries_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opt_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'opt_msgs': ['/home/hri/catkin_ws/src/openptrack/opt_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::HumanEntries_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::HumanEntries_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::HumanEntries_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::HumanEntries_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::HumanEntries_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::HumanEntries_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opt_msgs::HumanEntries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a8c1a02f72face88523f0a8e72a9f6e";
  }

  static const char* value(const ::opt_msgs::HumanEntries_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a8c1a02f72face8ULL;
  static const uint64_t static_value2 = 0x8523f0a8e72a9f6eULL;
};

template<class ContainerAllocator>
struct DataType< ::opt_msgs::HumanEntries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opt_msgs/HumanEntries";
  }

  static const char* value(const ::opt_msgs::HumanEntries_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opt_msgs::HumanEntries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
HumanEntry[] entries\n\
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
MSG: opt_msgs/HumanEntry\n\
time stamp\n\
uint64 personID\n\
float64 personCentroidX\n\
float64 personCentroidY\n\
float64 personCentroidZ\n\
float64 personBoundingBoxTopCenterX\n\
float64 personBoundingBoxTopCenterY\n\
float64 personBoundingBoxTopCenterZ\n\
float64 Xvelocity\n\
float64 Yvelocity\n\
float64 Zvelocity\n\
float64 ROIwidth\n\
float64 ROIheight\n\
float64 Xsigma\n\
float64 Ysigma\n\
float64 Zsigma\n\
";
  }

  static const char* value(const ::opt_msgs::HumanEntries_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opt_msgs::HumanEntries_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.entries);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HumanEntries_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opt_msgs::HumanEntries_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opt_msgs::HumanEntries_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "entries[]" << std::endl;
    for (size_t i = 0; i < v.entries.size(); ++i)
    {
      s << indent << "  entries[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::opt_msgs::HumanEntry_<ContainerAllocator> >::stream(s, indent + "    ", v.entries[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPT_MSGS_MESSAGE_HUMANENTRIES_H