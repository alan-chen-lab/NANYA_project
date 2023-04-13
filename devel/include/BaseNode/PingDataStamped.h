// Generated by gencpp from file BaseNode/PingDataStamped.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_PINGDATASTAMPED_H
#define BASENODE_MESSAGE_PINGDATASTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <BaseNode/PingData.h>

namespace BaseNode
{
template <class ContainerAllocator>
struct PingDataStamped_
{
  typedef PingDataStamped_<ContainerAllocator> Type;

  PingDataStamped_()
    : header()
    , ping_data()  {
    }
  PingDataStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ping_data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::BaseNode::PingData_<ContainerAllocator>  _ping_data_type;
  _ping_data_type ping_data;





  typedef boost::shared_ptr< ::BaseNode::PingDataStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::PingDataStamped_<ContainerAllocator> const> ConstPtr;

}; // struct PingDataStamped_

typedef ::BaseNode::PingDataStamped_<std::allocator<void> > PingDataStamped;

typedef boost::shared_ptr< ::BaseNode::PingDataStamped > PingDataStampedPtr;
typedef boost::shared_ptr< ::BaseNode::PingDataStamped const> PingDataStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::PingDataStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::PingDataStamped_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::BaseNode::PingDataStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::PingDataStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::PingDataStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::PingDataStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::PingDataStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::PingDataStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::PingDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c09e3f811346ddffeb07e7c62e21256";
  }

  static const char* value(const ::BaseNode::PingDataStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c09e3f811346ddfULL;
  static const uint64_t static_value2 = 0xfeb07e7c62e21256ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::PingDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/PingDataStamped";
  }

  static const char* value(const ::BaseNode::PingDataStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::PingDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
PingData ping_data\n\
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
MSG: BaseNode/PingData\n\
string pingSN\n\
string firmwareVer\n\
string deviceID\n\
int32 day_\n\
int32 hour_\n\
int32 min_\n\
";
  }

  static const char* value(const ::BaseNode::PingDataStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::PingDataStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ping_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingDataStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::PingDataStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::PingDataStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ping_data: ";
    s << std::endl;
    Printer< ::BaseNode::PingData_<ContainerAllocator> >::stream(s, indent + "  ", v.ping_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_PINGDATASTAMPED_H
