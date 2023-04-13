// Generated by gencpp from file BaseNode/LEDReportRequest.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_LEDREPORTREQUEST_H
#define BASENODE_MESSAGE_LEDREPORTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace BaseNode
{
template <class ContainerAllocator>
struct LEDReportRequest_
{
  typedef LEDReportRequest_<ContainerAllocator> Type;

  LEDReportRequest_()
    : get_led(false)  {
    }
  LEDReportRequest_(const ContainerAllocator& _alloc)
    : get_led(false)  {
  (void)_alloc;
    }



   typedef uint8_t _get_led_type;
  _get_led_type get_led;





  typedef boost::shared_ptr< ::BaseNode::LEDReportRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::LEDReportRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LEDReportRequest_

typedef ::BaseNode::LEDReportRequest_<std::allocator<void> > LEDReportRequest;

typedef boost::shared_ptr< ::BaseNode::LEDReportRequest > LEDReportRequestPtr;
typedef boost::shared_ptr< ::BaseNode::LEDReportRequest const> LEDReportRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::LEDReportRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::LEDReportRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace BaseNode

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'BaseNode': ['/home/c01/naya_navigation/src/BaseNode/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::LEDReportRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::LEDReportRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::LEDReportRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c530caba186c025e5a0f340c90b9d08c";
  }

  static const char* value(const ::BaseNode::LEDReportRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc530caba186c025eULL;
  static const uint64_t static_value2 = 0x5a0f340c90b9d08cULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/LEDReportRequest";
  }

  static const char* value(const ::BaseNode::LEDReportRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool get_led\n\
";
  }

  static const char* value(const ::BaseNode::LEDReportRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.get_led);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LEDReportRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::LEDReportRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::LEDReportRequest_<ContainerAllocator>& v)
  {
    s << indent << "get_led: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.get_led);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_LEDREPORTREQUEST_H
