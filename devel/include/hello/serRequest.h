// Generated by gencpp from file hello/serRequest.msg
// DO NOT EDIT!


#ifndef HELLO_MESSAGE_SERREQUEST_H
#define HELLO_MESSAGE_SERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello
{
template <class ContainerAllocator>
struct serRequest_
{
  typedef serRequest_<ContainerAllocator> Type;

  serRequest_()
    : pwd(0)  {
    }
  serRequest_(const ContainerAllocator& _alloc)
    : pwd(0)  {
  (void)_alloc;
    }



   typedef int32_t _pwd_type;
  _pwd_type pwd;





  typedef boost::shared_ptr< ::hello::serRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello::serRequest_<ContainerAllocator> const> ConstPtr;

}; // struct serRequest_

typedef ::hello::serRequest_<std::allocator<void> > serRequest;

typedef boost::shared_ptr< ::hello::serRequest > serRequestPtr;
typedef boost::shared_ptr< ::hello::serRequest const> serRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello::serRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello::serRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello::serRequest_<ContainerAllocator1> & lhs, const ::hello::serRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pwd == rhs.pwd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello::serRequest_<ContainerAllocator1> & lhs, const ::hello::serRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello::serRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello::serRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello::serRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello::serRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello::serRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello::serRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello::serRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea1dcf428d9860fd133c8351833c1e52";
  }

  static const char* value(const ::hello::serRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea1dcf428d9860fdULL;
  static const uint64_t static_value2 = 0x133c8351833c1e52ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello::serRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello/serRequest";
  }

  static const char* value(const ::hello::serRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello::serRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 pwd\n"
;
  }

  static const char* value(const ::hello::serRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello::serRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pwd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct serRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello::serRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello::serRequest_<ContainerAllocator>& v)
  {
    s << indent << "pwd: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pwd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_MESSAGE_SERREQUEST_H
