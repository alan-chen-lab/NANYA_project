// Generated by gencpp from file BaseNode/RGBLEDControl.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_RGBLEDCONTROL_H
#define BASENODE_MESSAGE_RGBLEDCONTROL_H


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
struct RGBLEDControl_
{
  typedef RGBLEDControl_<ContainerAllocator> Type;

  RGBLEDControl_()
    : start_red(0)
    , start_green(0)
    , start_blue(0)
    , end_red(0)
    , end_green(0)
    , end_blue(0)
    , transform_time(0.0)
    , run_time(0.0)  {
    }
  RGBLEDControl_(const ContainerAllocator& _alloc)
    : start_red(0)
    , start_green(0)
    , start_blue(0)
    , end_red(0)
    , end_green(0)
    , end_blue(0)
    , transform_time(0.0)
    , run_time(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _start_red_type;
  _start_red_type start_red;

   typedef uint8_t _start_green_type;
  _start_green_type start_green;

   typedef uint8_t _start_blue_type;
  _start_blue_type start_blue;

   typedef uint8_t _end_red_type;
  _end_red_type end_red;

   typedef uint8_t _end_green_type;
  _end_green_type end_green;

   typedef uint8_t _end_blue_type;
  _end_blue_type end_blue;

   typedef float _transform_time_type;
  _transform_time_type transform_time;

   typedef float _run_time_type;
  _run_time_type run_time;





  typedef boost::shared_ptr< ::BaseNode::RGBLEDControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::RGBLEDControl_<ContainerAllocator> const> ConstPtr;

}; // struct RGBLEDControl_

typedef ::BaseNode::RGBLEDControl_<std::allocator<void> > RGBLEDControl;

typedef boost::shared_ptr< ::BaseNode::RGBLEDControl > RGBLEDControlPtr;
typedef boost::shared_ptr< ::BaseNode::RGBLEDControl const> RGBLEDControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::RGBLEDControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::RGBLEDControl_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::RGBLEDControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::RGBLEDControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::RGBLEDControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4096ab5b30b2048afde4d3c5779fe493";
  }

  static const char* value(const ::BaseNode::RGBLEDControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4096ab5b30b2048aULL;
  static const uint64_t static_value2 = 0xfde4d3c5779fe493ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/RGBLEDControl";
  }

  static const char* value(const ::BaseNode::RGBLEDControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 start_red\n\
uint8 start_green\n\
uint8 start_blue\n\
uint8 end_red\n\
uint8 end_green\n\
uint8 end_blue\n\
float32 transform_time \n\
float32 run_time\n\
";
  }

  static const char* value(const ::BaseNode::RGBLEDControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_red);
      stream.next(m.start_green);
      stream.next(m.start_blue);
      stream.next(m.end_red);
      stream.next(m.end_green);
      stream.next(m.end_blue);
      stream.next(m.transform_time);
      stream.next(m.run_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RGBLEDControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::RGBLEDControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::RGBLEDControl_<ContainerAllocator>& v)
  {
    s << indent << "start_red: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_red);
    s << indent << "start_green: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_green);
    s << indent << "start_blue: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_blue);
    s << indent << "end_red: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.end_red);
    s << indent << "end_green: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.end_green);
    s << indent << "end_blue: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.end_blue);
    s << indent << "transform_time: ";
    Printer<float>::stream(s, indent + "  ", v.transform_time);
    s << indent << "run_time: ";
    Printer<float>::stream(s, indent + "  ", v.run_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_RGBLEDCONTROL_H
