// Generated by gencpp from file BaseNode/SetObstacleDistanceResponse.msg
// DO NOT EDIT!


#ifndef BASENODE_MESSAGE_SETOBSTACLEDISTANCERESPONSE_H
#define BASENODE_MESSAGE_SETOBSTACLEDISTANCERESPONSE_H


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
struct SetObstacleDistanceResponse_
{
  typedef SetObstacleDistanceResponse_<ContainerAllocator> Type;

  SetObstacleDistanceResponse_()
    : Success(false)  {
    }
  SetObstacleDistanceResponse_(const ContainerAllocator& _alloc)
    : Success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _Success_type;
  _Success_type Success;





  typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetObstacleDistanceResponse_

typedef ::BaseNode::SetObstacleDistanceResponse_<std::allocator<void> > SetObstacleDistanceResponse;

typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceResponse > SetObstacleDistanceResponsePtr;
typedef boost::shared_ptr< ::BaseNode::SetObstacleDistanceResponse const> SetObstacleDistanceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abd997250d7310d216110d082cc17cc0";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xabd997250d7310d2ULL;
  static const uint64_t static_value2 = 0x16110d082cc17cc0ULL;
};

template<class ContainerAllocator>
struct DataType< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BaseNode/SetObstacleDistanceResponse";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool Success\n\
";
  }

  static const char* value(const ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetObstacleDistanceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::BaseNode::SetObstacleDistanceResponse_<ContainerAllocator>& v)
  {
    s << indent << "Success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASENODE_MESSAGE_SETOBSTACLEDISTANCERESPONSE_H
