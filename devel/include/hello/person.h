// Generated by gencpp from file hello/person.msg
// DO NOT EDIT!


#ifndef HELLO_MESSAGE_PERSON_H
#define HELLO_MESSAGE_PERSON_H


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
struct person_
{
  typedef person_<ContainerAllocator> Type;

  person_()
    : name()
    , number(0.0)
    , id(0)
    , bool_v(false)  {
    }
  person_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , number(0.0)
    , id(0)
    , bool_v(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef float _number_type;
  _number_type number;

   typedef int8_t _id_type;
  _id_type id;

   typedef uint8_t _bool_v_type;
  _bool_v_type bool_v;





  typedef boost::shared_ptr< ::hello::person_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello::person_<ContainerAllocator> const> ConstPtr;

}; // struct person_

typedef ::hello::person_<std::allocator<void> > person;

typedef boost::shared_ptr< ::hello::person > personPtr;
typedef boost::shared_ptr< ::hello::person const> personConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello::person_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello::person_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello::person_<ContainerAllocator1> & lhs, const ::hello::person_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.number == rhs.number &&
    lhs.id == rhs.id &&
    lhs.bool_v == rhs.bool_v;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello::person_<ContainerAllocator1> & lhs, const ::hello::person_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello::person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello::person_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello::person_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello::person_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello::person_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello::person_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello::person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5fd2889dce4f9a84f1828a597bc67ac3";
  }

  static const char* value(const ::hello::person_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5fd2889dce4f9a84ULL;
  static const uint64_t static_value2 = 0xf1828a597bc67ac3ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello::person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello/person";
  }

  static const char* value(const ::hello::person_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello::person_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"float32 number\n"
"int8 id\n"
"bool bool_v\n"
;
  }

  static const char* value(const ::hello::person_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello::person_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.number);
      stream.next(m.id);
      stream.next(m.bool_v);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct person_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello::person_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello::person_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "number: ";
    Printer<float>::stream(s, indent + "  ", v.number);
    s << indent << "id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id);
    s << indent << "bool_v: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bool_v);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_MESSAGE_PERSON_H