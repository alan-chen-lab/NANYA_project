// Generated by gencpp from file simple_navigation_goals/multi_pointRequest.msg
// DO NOT EDIT!


#ifndef SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINTREQUEST_H
#define SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simple_navigation_goals
{
template <class ContainerAllocator>
struct multi_pointRequest_
{
  typedef multi_pointRequest_<ContainerAllocator> Type;

  multi_pointRequest_()
    : x_goal()
    , y_goal()
    , theta_goal()
    , sec_goal()  {
    }
  multi_pointRequest_(const ContainerAllocator& _alloc)
    : x_goal(_alloc)
    , y_goal(_alloc)
    , theta_goal(_alloc)
    , sec_goal(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _x_goal_type;
  _x_goal_type x_goal;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _y_goal_type;
  _y_goal_type y_goal;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _theta_goal_type;
  _theta_goal_type theta_goal;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _sec_goal_type;
  _sec_goal_type sec_goal;





  typedef boost::shared_ptr< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct multi_pointRequest_

typedef ::simple_navigation_goals::multi_pointRequest_<std::allocator<void> > multi_pointRequest;

typedef boost::shared_ptr< ::simple_navigation_goals::multi_pointRequest > multi_pointRequestPtr;
typedef boost::shared_ptr< ::simple_navigation_goals::multi_pointRequest const> multi_pointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simple_navigation_goals

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'simple_navigation_goals': ['/home/c01/naya_navigation/src/simple_navigation_goals/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b704f6ee097e81a8f91ed62b6e798c5d";
  }

  static const char* value(const ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb704f6ee097e81a8ULL;
  static const uint64_t static_value2 = 0xf91ed62b6e798c5dULL;
};

template<class ContainerAllocator>
struct DataType< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simple_navigation_goals/multi_pointRequest";
  }

  static const char* value(const ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] x_goal\n\
float32[] y_goal\n\
float32[] theta_goal\n\
float32[] sec_goal\n\
";
  }

  static const char* value(const ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_goal);
      stream.next(m.y_goal);
      stream.next(m.theta_goal);
      stream.next(m.sec_goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct multi_pointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simple_navigation_goals::multi_pointRequest_<ContainerAllocator>& v)
  {
    s << indent << "x_goal[]" << std::endl;
    for (size_t i = 0; i < v.x_goal.size(); ++i)
    {
      s << indent << "  x_goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x_goal[i]);
    }
    s << indent << "y_goal[]" << std::endl;
    for (size_t i = 0; i < v.y_goal.size(); ++i)
    {
      s << indent << "  y_goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y_goal[i]);
    }
    s << indent << "theta_goal[]" << std::endl;
    for (size_t i = 0; i < v.theta_goal.size(); ++i)
    {
      s << indent << "  theta_goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.theta_goal[i]);
    }
    s << indent << "sec_goal[]" << std::endl;
    for (size_t i = 0; i < v.sec_goal.size(); ++i)
    {
      s << indent << "  sec_goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.sec_goal[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMPLE_NAVIGATION_GOALS_MESSAGE_MULTI_POINTREQUEST_H