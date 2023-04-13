// Generated by gencpp from file BaseNode/RGBLEDControlStamped.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_RGBLEDCONTROLSTAMPED_H
#define BASENODE_MESSAGE_RGBLEDCONTROLSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <BaseNode/RGBLEDControl.h>

namespace BaseNode
{
template <class ContainerAllocator>
struct RGBLEDControlStamped_
{
  typedef RGBLEDControlStamped_<ContainerAllocator> Type;

  RGBLEDControlStamped_()
    : header()
    , led_color_control()  {
    }
  RGBLEDControlStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , led_color_control(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::BaseNode::RGBLEDControl_<ContainerAllocator>  _led_color_control_type;
  _led_color_control_type led_color_control;





  typedef boost::shared_ptr< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> const> ConstPtr;

}; // struct RGBLEDControlStamped_

typedef ::BaseNode::RGBLEDControlStamped_<std::allocator<void> > RGBLEDControlStamped;

typedef boost::shared_ptr< ::BaseNode::RGBLEDControlStamped > RGBLEDControlStampedPtr;
typedef boost::shared_ptr< ::BaseNode::RGBLEDControlStamped const> RGBLEDControlStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace BaseNode

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'BaseNode': ['/home/c01/naya_navigation/src/BaseNode/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b3f7ba4866db5543a31814d27b747cd1";
  }

  static const char* value(const ::BaseNode::RGBLEDControlStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb3f7ba4866db5543ULL;
  static const uint64_t static_value2 = 0xa31814d27b747cd1ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/RGBLEDControlStamped";
  }

  static const char* value(const ::BaseNode::RGBLEDControlStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
RGBLEDControl led_color_control\n\
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
MSG: BaseNode/RGBLEDControl\n\
uint8 start_red\n\
uint8 start_green\n\
uint8 start_blue\n\
uint8 end_red\n\
uint8 end_green\n\
uint8 end_blue\n\
float32 transform_time \n\
float32 run_time\n\
";
  }

  static const char* value(const ::BaseNode::RGBLEDControlStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.led_color_control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RGBLEDControlStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::RGBLEDControlStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::RGBLEDControlStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "led_color_control: ";
    s << std::endl;
    Printer< ::BaseNode::RGBLEDControl_<ContainerAllocator> >::stream(s, indent + "  ", v.led_color_control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_RGBLEDCONTROLSTAMPED_H
