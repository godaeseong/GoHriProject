// Generated by gencpp from file opt_msgs/HumanEntry.msg
// DO NOT EDIT!


#ifndef OPT_MSGS_MESSAGE_HUMANENTRY_H
#define OPT_MSGS_MESSAGE_HUMANENTRY_H


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
struct HumanEntry_
{
  typedef HumanEntry_<ContainerAllocator> Type;

  HumanEntry_()
    : stamp()
    , personID(0)
    , personCentroidX(0.0)
    , personCentroidY(0.0)
    , personCentroidZ(0.0)
    , personBoundingBoxTopCenterX(0.0)
    , personBoundingBoxTopCenterY(0.0)
    , personBoundingBoxTopCenterZ(0.0)
    , Xvelocity(0.0)
    , Yvelocity(0.0)
    , Zvelocity(0.0)
    , ROIwidth(0.0)
    , ROIheight(0.0)
    , Xsigma(0.0)
    , Ysigma(0.0)
    , Zsigma(0.0)  {
    }
  HumanEntry_(const ContainerAllocator& _alloc)
    : stamp()
    , personID(0)
    , personCentroidX(0.0)
    , personCentroidY(0.0)
    , personCentroidZ(0.0)
    , personBoundingBoxTopCenterX(0.0)
    , personBoundingBoxTopCenterY(0.0)
    , personBoundingBoxTopCenterZ(0.0)
    , Xvelocity(0.0)
    , Yvelocity(0.0)
    , Zvelocity(0.0)
    , ROIwidth(0.0)
    , ROIheight(0.0)
    , Xsigma(0.0)
    , Ysigma(0.0)
    , Zsigma(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint64_t _personID_type;
  _personID_type personID;

   typedef double _personCentroidX_type;
  _personCentroidX_type personCentroidX;

   typedef double _personCentroidY_type;
  _personCentroidY_type personCentroidY;

   typedef double _personCentroidZ_type;
  _personCentroidZ_type personCentroidZ;

   typedef double _personBoundingBoxTopCenterX_type;
  _personBoundingBoxTopCenterX_type personBoundingBoxTopCenterX;

   typedef double _personBoundingBoxTopCenterY_type;
  _personBoundingBoxTopCenterY_type personBoundingBoxTopCenterY;

   typedef double _personBoundingBoxTopCenterZ_type;
  _personBoundingBoxTopCenterZ_type personBoundingBoxTopCenterZ;

   typedef double _Xvelocity_type;
  _Xvelocity_type Xvelocity;

   typedef double _Yvelocity_type;
  _Yvelocity_type Yvelocity;

   typedef double _Zvelocity_type;
  _Zvelocity_type Zvelocity;

   typedef double _ROIwidth_type;
  _ROIwidth_type ROIwidth;

   typedef double _ROIheight_type;
  _ROIheight_type ROIheight;

   typedef double _Xsigma_type;
  _Xsigma_type Xsigma;

   typedef double _Ysigma_type;
  _Ysigma_type Ysigma;

   typedef double _Zsigma_type;
  _Zsigma_type Zsigma;




  typedef boost::shared_ptr< ::opt_msgs::HumanEntry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opt_msgs::HumanEntry_<ContainerAllocator> const> ConstPtr;

}; // struct HumanEntry_

typedef ::opt_msgs::HumanEntry_<std::allocator<void> > HumanEntry;

typedef boost::shared_ptr< ::opt_msgs::HumanEntry > HumanEntryPtr;
typedef boost::shared_ptr< ::opt_msgs::HumanEntry const> HumanEntryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opt_msgs::HumanEntry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opt_msgs::HumanEntry_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opt_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'opt_msgs': ['/home/hri/catkin_ws/src/openptrack/opt_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::HumanEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opt_msgs::HumanEntry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::HumanEntry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opt_msgs::HumanEntry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::HumanEntry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opt_msgs::HumanEntry_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opt_msgs::HumanEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62ab54a7d1e278036ce98ff633f1bef9";
  }

  static const char* value(const ::opt_msgs::HumanEntry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62ab54a7d1e27803ULL;
  static const uint64_t static_value2 = 0x6ce98ff633f1bef9ULL;
};

template<class ContainerAllocator>
struct DataType< ::opt_msgs::HumanEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opt_msgs/HumanEntry";
  }

  static const char* value(const ::opt_msgs::HumanEntry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opt_msgs::HumanEntry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
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

  static const char* value(const ::opt_msgs::HumanEntry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opt_msgs::HumanEntry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.personID);
      stream.next(m.personCentroidX);
      stream.next(m.personCentroidY);
      stream.next(m.personCentroidZ);
      stream.next(m.personBoundingBoxTopCenterX);
      stream.next(m.personBoundingBoxTopCenterY);
      stream.next(m.personBoundingBoxTopCenterZ);
      stream.next(m.Xvelocity);
      stream.next(m.Yvelocity);
      stream.next(m.Zvelocity);
      stream.next(m.ROIwidth);
      stream.next(m.ROIheight);
      stream.next(m.Xsigma);
      stream.next(m.Ysigma);
      stream.next(m.Zsigma);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HumanEntry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opt_msgs::HumanEntry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opt_msgs::HumanEntry_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "personID: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.personID);
    s << indent << "personCentroidX: ";
    Printer<double>::stream(s, indent + "  ", v.personCentroidX);
    s << indent << "personCentroidY: ";
    Printer<double>::stream(s, indent + "  ", v.personCentroidY);
    s << indent << "personCentroidZ: ";
    Printer<double>::stream(s, indent + "  ", v.personCentroidZ);
    s << indent << "personBoundingBoxTopCenterX: ";
    Printer<double>::stream(s, indent + "  ", v.personBoundingBoxTopCenterX);
    s << indent << "personBoundingBoxTopCenterY: ";
    Printer<double>::stream(s, indent + "  ", v.personBoundingBoxTopCenterY);
    s << indent << "personBoundingBoxTopCenterZ: ";
    Printer<double>::stream(s, indent + "  ", v.personBoundingBoxTopCenterZ);
    s << indent << "Xvelocity: ";
    Printer<double>::stream(s, indent + "  ", v.Xvelocity);
    s << indent << "Yvelocity: ";
    Printer<double>::stream(s, indent + "  ", v.Yvelocity);
    s << indent << "Zvelocity: ";
    Printer<double>::stream(s, indent + "  ", v.Zvelocity);
    s << indent << "ROIwidth: ";
    Printer<double>::stream(s, indent + "  ", v.ROIwidth);
    s << indent << "ROIheight: ";
    Printer<double>::stream(s, indent + "  ", v.ROIheight);
    s << indent << "Xsigma: ";
    Printer<double>::stream(s, indent + "  ", v.Xsigma);
    s << indent << "Ysigma: ";
    Printer<double>::stream(s, indent + "  ", v.Ysigma);
    s << indent << "Zsigma: ";
    Printer<double>::stream(s, indent + "  ", v.Zsigma);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPT_MSGS_MESSAGE_HUMANENTRY_H
