// Generated by gencpp from file BaseNode/FlagReportStamped.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_FLAGREPORTSTAMPED_H
#define BASENODE_MESSAGE_FLAGREPORTSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <BaseNode/FlagReport.h>

namespace BaseNode
{
template <class ContainerAllocator>
struct FlagReportStamped_
{
  typedef FlagReportStamped_<ContainerAllocator> Type;

  FlagReportStamped_()
    : header()
    , flag_report()  {
    }
  FlagReportStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , flag_report(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::BaseNode::FlagReport_<ContainerAllocator>  _flag_report_type;
  _flag_report_type flag_report;





  typedef boost::shared_ptr< ::BaseNode::FlagReportStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::FlagReportStamped_<ContainerAllocator> const> ConstPtr;

}; // struct FlagReportStamped_

typedef ::BaseNode::FlagReportStamped_<std::allocator<void> > FlagReportStamped;

typedef boost::shared_ptr< ::BaseNode::FlagReportStamped > FlagReportStampedPtr;
typedef boost::shared_ptr< ::BaseNode::FlagReportStamped const> FlagReportStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::FlagReportStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::FlagReportStamped_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::FlagReportStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::FlagReportStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::FlagReportStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51a9914a0bbd2a4083e199a0966ecbf3";
  }

  static const char* value(const ::BaseNode::FlagReportStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51a9914a0bbd2a40ULL;
  static const uint64_t static_value2 = 0x83e199a0966ecbf3ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/FlagReportStamped";
  }

  static const char* value(const ::BaseNode::FlagReportStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
FlagReport flag_report\n\
\n\
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
MSG: BaseNode/FlagReport\n\
# Move Direction\n\
bool stop\n\
bool walking_front\n\
bool walking_back\n\
bool rotating_left\n\
bool rotating_right\n\
\n\
# Robot Mode Flag\n\
bool wheel_control_mode_1\n\
bool wheel_control_mode_2\n\
bool wheel_control_mode_3\n\
bool wheel_brake_mode\n\
bool wheel_release_mode\n\
bool go_to_dock\n\
bool dock_escape\n\
\n\
# charge\n\
bool do_not_charge\n\
bool charging\n\
bool charge_finish\n\
bool fault_in_charge\n\
\n\
# Button\n\
bool stop_btn_hit\n\
bool sleep_btn_hit\n\
\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::BaseNode::FlagReportStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.flag_report);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FlagReportStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::FlagReportStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::FlagReportStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "flag_report: ";
    s << std::endl;
    Printer< ::BaseNode::FlagReport_<ContainerAllocator> >::stream(s, indent + "  ", v.flag_report);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_FLAGREPORTSTAMPED_H