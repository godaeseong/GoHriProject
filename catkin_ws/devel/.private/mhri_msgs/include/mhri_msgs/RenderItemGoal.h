// Generated by gencpp from file mhri_msgs/RenderItemGoal.msg
// DO NOT EDIT!


#ifndef MHRI_MSGS_MESSAGE_RENDERITEMGOAL_H
#define MHRI_MSGS_MESSAGE_RENDERITEMGOAL_H


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
struct RenderItemGoal_
{
  typedef RenderItemGoal_<ContainerAllocator> Type;

  RenderItemGoal_()
    : name()
    , data()  {
    }
  RenderItemGoal_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RenderItemGoal_

typedef ::mhri_msgs::RenderItemGoal_<std::allocator<void> > RenderItemGoal;

typedef boost::shared_ptr< ::mhri_msgs::RenderItemGoal > RenderItemGoalPtr;
typedef boost::shared_ptr< ::mhri_msgs::RenderItemGoal const> RenderItemGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mhri_msgs::RenderItemGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a150dc399b6cef3706553ca3c336ddf";
  }

  static const char* value(const ::mhri_msgs::RenderItemGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a150dc399b6cef3ULL;
  static const uint64_t static_value2 = 0x706553ca3c336ddfULL;
};

template<class ContainerAllocator>
struct DataType< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mhri_msgs/RenderItemGoal";
  }

  static const char* value(const ::mhri_msgs::RenderItemGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string name\n\
string data\n\
";
  }

  static const char* value(const ::mhri_msgs::RenderItemGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RenderItemGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mhri_msgs::RenderItemGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mhri_msgs::RenderItemGoal_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MHRI_MSGS_MESSAGE_RENDERITEMGOAL_H
