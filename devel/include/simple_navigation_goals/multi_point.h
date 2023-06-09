// Generated by gencpp from file simple_navigation_goals/multi_point.msg
// DO NOT EDIT!


#ifndef SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINT_H
#define SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINT_H

#include <ros/service_traits.h>


#include <simple_navigation_goals/multi_pointRequest.h>
#include <simple_navigation_goals/multi_pointResponse.h>


namespace simple_navigation_goals
{

struct multi_point
{

typedef multi_pointRequest Request;
typedef multi_pointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct multi_point
} // namespace simple_navigation_goals


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::simple_navigation_goals::multi_point > {
  static const char* value()
  {
    return "b704f6ee097e81a8f91ed62b6e798c5d";
  }

  static const char* value(const ::simple_navigation_goals::multi_point&) { return value(); }
};

template<>
struct DataType< ::simple_navigation_goals::multi_point > {
  static const char* value()
  {
    return "simple_navigation_goals/multi_point";
  }

  static const char* value(const ::simple_navigation_goals::multi_point&) { return value(); }
};


// service_traits::MD5Sum< ::simple_navigation_goals::multi_pointRequest> should match 
// service_traits::MD5Sum< ::simple_navigation_goals::multi_point > 
template<>
struct MD5Sum< ::simple_navigation_goals::multi_pointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::simple_navigation_goals::multi_point >::value();
  }
  static const char* value(const ::simple_navigation_goals::multi_pointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::simple_navigation_goals::multi_pointRequest> should match 
// service_traits::DataType< ::simple_navigation_goals::multi_point > 
template<>
struct DataType< ::simple_navigation_goals::multi_pointRequest>
{
  static const char* value()
  {
    return DataType< ::simple_navigation_goals::multi_point >::value();
  }
  static const char* value(const ::simple_navigation_goals::multi_pointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::simple_navigation_goals::multi_pointResponse> should match 
// service_traits::MD5Sum< ::simple_navigation_goals::multi_point > 
template<>
struct MD5Sum< ::simple_navigation_goals::multi_pointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::simple_navigation_goals::multi_point >::value();
  }
  static const char* value(const ::simple_navigation_goals::multi_pointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::simple_navigation_goals::multi_pointResponse> should match 
// service_traits::DataType< ::simple_navigation_goals::multi_point > 
template<>
struct DataType< ::simple_navigation_goals::multi_pointResponse>
{
  static const char* value()
  {
    return DataType< ::simple_navigation_goals::multi_point >::value();
  }
  static const char* value(const ::simple_navigation_goals::multi_pointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINT_H
