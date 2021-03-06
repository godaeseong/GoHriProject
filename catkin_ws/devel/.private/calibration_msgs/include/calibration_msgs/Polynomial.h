// Generated by gencpp from file calibration_msgs/Polynomial.msg
// DO NOT EDIT!


#ifndef CALIBRATION_MSGS_MESSAGE_POLYNOMIAL_H
#define CALIBRATION_MSGS_MESSAGE_POLYNOMIAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace calibration_msgs
{
template <class ContainerAllocator>
struct Polynomial_
{
  typedef Polynomial_<ContainerAllocator> Type;

  Polynomial_()
    : max_degree(0)
    , min_degree(0)
    , coefficients()  {
    }
  Polynomial_(const ContainerAllocator& _alloc)
    : max_degree(0)
    , min_degree(0)
    , coefficients(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _max_degree_type;
  _max_degree_type max_degree;

   typedef int32_t _min_degree_type;
  _min_degree_type min_degree;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _coefficients_type;
  _coefficients_type coefficients;




  typedef boost::shared_ptr< ::calibration_msgs::Polynomial_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::calibration_msgs::Polynomial_<ContainerAllocator> const> ConstPtr;

}; // struct Polynomial_

typedef ::calibration_msgs::Polynomial_<std::allocator<void> > Polynomial;

typedef boost::shared_ptr< ::calibration_msgs::Polynomial > PolynomialPtr;
typedef boost::shared_ptr< ::calibration_msgs::Polynomial const> PolynomialConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::calibration_msgs::Polynomial_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::calibration_msgs::Polynomial_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace calibration_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'calibration_msgs': ['/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg', '/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::Polynomial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::Polynomial_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::Polynomial_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::Polynomial_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::Polynomial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::Polynomial_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::calibration_msgs::Polynomial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2bf430c82e35b84262e2b764637662e7";
  }

  static const char* value(const ::calibration_msgs::Polynomial_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2bf430c82e35b842ULL;
  static const uint64_t static_value2 = 0x62e2b764637662e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::calibration_msgs::Polynomial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "calibration_msgs/Polynomial";
  }

  static const char* value(const ::calibration_msgs::Polynomial_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::calibration_msgs::Polynomial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 max_degree\n\
int32 min_degree\n\
float64[] coefficients\n\
";
  }

  static const char* value(const ::calibration_msgs::Polynomial_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::calibration_msgs::Polynomial_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_degree);
      stream.next(m.min_degree);
      stream.next(m.coefficients);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Polynomial_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::calibration_msgs::Polynomial_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::calibration_msgs::Polynomial_<ContainerAllocator>& v)
  {
    s << indent << "max_degree: ";
    Printer<int32_t>::stream(s, indent + "  ", v.max_degree);
    s << indent << "min_degree: ";
    Printer<int32_t>::stream(s, indent + "  ", v.min_degree);
    s << indent << "coefficients[]" << std::endl;
    for (size_t i = 0; i < v.coefficients.size(); ++i)
    {
      s << indent << "  coefficients[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.coefficients[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CALIBRATION_MSGS_MESSAGE_POLYNOMIAL_H
