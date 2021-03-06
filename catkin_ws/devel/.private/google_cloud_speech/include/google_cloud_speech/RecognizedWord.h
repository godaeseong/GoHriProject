// Generated by gencpp from file google_cloud_speech/RecognizedWord.msg
// DO NOT EDIT!


#ifndef GOOGLE_CLOUD_SPEECH_MESSAGE_RECOGNIZEDWORD_H
#define GOOGLE_CLOUD_SPEECH_MESSAGE_RECOGNIZEDWORD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace google_cloud_speech
{
template <class ContainerAllocator>
struct RecognizedWord_
{
  typedef RecognizedWord_<ContainerAllocator> Type;

  RecognizedWord_()
    : recognized_word()
    , confidence(0.0)  {
    }
  RecognizedWord_(const ContainerAllocator& _alloc)
    : recognized_word(_alloc)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _recognized_word_type;
  _recognized_word_type recognized_word;

   typedef double _confidence_type;
  _confidence_type confidence;




  typedef boost::shared_ptr< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> const> ConstPtr;

}; // struct RecognizedWord_

typedef ::google_cloud_speech::RecognizedWord_<std::allocator<void> > RecognizedWord;

typedef boost::shared_ptr< ::google_cloud_speech::RecognizedWord > RecognizedWordPtr;
typedef boost::shared_ptr< ::google_cloud_speech::RecognizedWord const> RecognizedWordConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::google_cloud_speech::RecognizedWord_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace google_cloud_speech

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'google_cloud_speech': ['/home/hri/catkin_ws/src/google_cloud_speech/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51c6e3e563ea88eab63cbd1935da005e";
  }

  static const char* value(const ::google_cloud_speech::RecognizedWord_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51c6e3e563ea88eaULL;
  static const uint64_t static_value2 = 0xb63cbd1935da005eULL;
};

template<class ContainerAllocator>
struct DataType< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "google_cloud_speech/RecognizedWord";
  }

  static const char* value(const ::google_cloud_speech::RecognizedWord_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string recognized_word\n\
float64 confidence\n\
";
  }

  static const char* value(const ::google_cloud_speech::RecognizedWord_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.recognized_word);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecognizedWord_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::google_cloud_speech::RecognizedWord_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::google_cloud_speech::RecognizedWord_<ContainerAllocator>& v)
  {
    s << indent << "recognized_word: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.recognized_word);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GOOGLE_CLOUD_SPEECH_MESSAGE_RECOGNIZEDWORD_H
