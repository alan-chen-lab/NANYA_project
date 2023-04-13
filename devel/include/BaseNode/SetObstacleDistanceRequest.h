// Generated by gencpp from file BaseNode/SetObstacleDistanceRequest.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_SETOBSTACLEDISTANCEREQUEST_H
#define BASENODE_MESSAGE_SETOBSTACLEDISTANCEREQUEST_H


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
struct SetObstacleDistanceRequest_
{
  typedef SetObstacleDistanceRequest_<ContainerAllocator> Type;

  SetObstacleDistanceRequest_()
    : USDis0(0)
    , USDis1(0)
    , USDis2(0)
    , USDis3(0)
    , USDis4(0)
    , USDis5(0)
    , USDis6(0)  {
    }
  SetObstacleDistanceRequest_(const ContainerAllocator& _alloc)
    : USDis0(0)
    , USDis1(0)
    , USDis2(0)
    , USDis3(0)
    , USDis4(0)
    , USDis5(0)
    , USDis6(0)  {
  (void)_alloc;
    }



   typedef uint8_t _USDis0_type;
  _USDis0_type USDis0;

   typedef uint8_t _USDis1_type;
  _USDis1_type USDis1;

   typedef uint8_t _USDis2_type;
  _USDis2_type USDis2;

   typedef uint8_t _USDis3_type;
  _USDis3_type USDis3;

   typedef uint8_t _USDis4_type;
  _USDis4_type USDis4;

   typedef uint8_t _USDis5_type;
  _USDis5_type USDis5;

   typedef uint8_t _USDis6_type;
  _USDis6_type USDis6;





  typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetObstacleDistanceRequest_

typedef ::BaseNode::SetObstacleDistanceRequest_<std::allocator<void> > SetObstacleDistanceRequest;

typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceRequest > SetObstacleDistanceRequestPtr;
typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceRequest const> SetObstacleDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "01f181dd22773f5f5fa03ae27cc740e5";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x01f181dd22773f5fULL;
  static const uint64_t static_value2 = 0x5fa03ae27cc740e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/SetObstacleDistanceRequest";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 USDis0\n\
uint8 USDis1\n\
uint8 USDis2\n\
uint8 USDis3\n\
uint8 USDis4\n\
uint8 USDis5\n\
uint8 USDis6\n\
";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.USDis0);
      stream.next(m.USDis1);
      stream.next(m.USDis2);
      stream.next(m.USDis3);
      stream.next(m.USDis4);
      stream.next(m.USDis5);
      stream.next(m.USDis6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetObstacleDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::SetObstacleDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "USDis0: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis0);
    s << indent << "USDis1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis1);
    s << indent << "USDis2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis2);
    s << indent << "USDis3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis3);
    s << indent << "USDis4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis4);
    s << indent << "USDis5: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis5);
    s << indent << "USDis6: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.USDis6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_SETOBSTACLEDISTANCEREQUEST_H