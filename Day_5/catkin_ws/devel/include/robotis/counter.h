// Generated by gencpp from file robotis/counter.msg
// DO NOT EDIT!


#ifndef ROBOTIS_MESSAGE_COUNTER_H
#define ROBOTIS_MESSAGE_COUNTER_H

#include <ros/service_traits.h>


#include <robotis/counterRequest.h>
#include <robotis/counterResponse.h>


namespace robotis
{

struct counter
{

typedef counterRequest Request;
typedef counterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct counter
} // namespace robotis


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotis::counter > {
  static const char* value()
  {
    return "b4834320f090e9235da913886638fb4e";
  }

  static const char* value(const ::robotis::counter&) { return value(); }
};

template<>
struct DataType< ::robotis::counter > {
  static const char* value()
  {
    return "robotis/counter";
  }

  static const char* value(const ::robotis::counter&) { return value(); }
};


// service_traits::MD5Sum< ::robotis::counterRequest> should match
// service_traits::MD5Sum< ::robotis::counter >
template<>
struct MD5Sum< ::robotis::counterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotis::counter >::value();
  }
  static const char* value(const ::robotis::counterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotis::counterRequest> should match
// service_traits::DataType< ::robotis::counter >
template<>
struct DataType< ::robotis::counterRequest>
{
  static const char* value()
  {
    return DataType< ::robotis::counter >::value();
  }
  static const char* value(const ::robotis::counterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotis::counterResponse> should match
// service_traits::MD5Sum< ::robotis::counter >
template<>
struct MD5Sum< ::robotis::counterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotis::counter >::value();
  }
  static const char* value(const ::robotis::counterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotis::counterResponse> should match
// service_traits::DataType< ::robotis::counter >
template<>
struct DataType< ::robotis::counterResponse>
{
  static const char* value()
  {
    return DataType< ::robotis::counter >::value();
  }
  static const char* value(const ::robotis::counterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTIS_MESSAGE_COUNTER_H
