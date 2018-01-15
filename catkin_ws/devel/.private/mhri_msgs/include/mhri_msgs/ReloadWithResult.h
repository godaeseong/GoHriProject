// Generated by gencpp from file mhri_msgs/ReloadWithResult.msg
// DO NOT EDIT!


#ifndef MHRI_MSGS_MESSAGE_RELOADWITHRESULT_H
#define MHRI_MSGS_MESSAGE_RELOADWITHRESULT_H

#include <ros/service_traits.h>


#include <mhri_msgs/ReloadWithResultRequest.h>
#include <mhri_msgs/ReloadWithResultResponse.h>


namespace mhri_msgs
{

struct ReloadWithResult
{

typedef ReloadWithResultRequest Request;
typedef ReloadWithResultResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReloadWithResult
} // namespace mhri_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mhri_msgs::ReloadWithResult > {
  static const char* value()
  {
    return "433949ba24a221b6192129df3d830876";
  }

  static const char* value(const ::mhri_msgs::ReloadWithResult&) { return value(); }
};

template<>
struct DataType< ::mhri_msgs::ReloadWithResult > {
  static const char* value()
  {
    return "mhri_msgs/ReloadWithResult";
  }

  static const char* value(const ::mhri_msgs::ReloadWithResult&) { return value(); }
};


// service_traits::MD5Sum< ::mhri_msgs::ReloadWithResultRequest> should match 
// service_traits::MD5Sum< ::mhri_msgs::ReloadWithResult > 
template<>
struct MD5Sum< ::mhri_msgs::ReloadWithResultRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mhri_msgs::ReloadWithResult >::value();
  }
  static const char* value(const ::mhri_msgs::ReloadWithResultRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mhri_msgs::ReloadWithResultRequest> should match 
// service_traits::DataType< ::mhri_msgs::ReloadWithResult > 
template<>
struct DataType< ::mhri_msgs::ReloadWithResultRequest>
{
  static const char* value()
  {
    return DataType< ::mhri_msgs::ReloadWithResult >::value();
  }
  static const char* value(const ::mhri_msgs::ReloadWithResultRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mhri_msgs::ReloadWithResultResponse> should match 
// service_traits::MD5Sum< ::mhri_msgs::ReloadWithResult > 
template<>
struct MD5Sum< ::mhri_msgs::ReloadWithResultResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mhri_msgs::ReloadWithResult >::value();
  }
  static const char* value(const ::mhri_msgs::ReloadWithResultResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mhri_msgs::ReloadWithResultResponse> should match 
// service_traits::DataType< ::mhri_msgs::ReloadWithResult > 
template<>
struct DataType< ::mhri_msgs::ReloadWithResultResponse>
{
  static const char* value()
  {
    return DataType< ::mhri_msgs::ReloadWithResult >::value();
  }
  static const char* value(const ::mhri_msgs::ReloadWithResultResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MHRI_MSGS_MESSAGE_RELOADWITHRESULT_H