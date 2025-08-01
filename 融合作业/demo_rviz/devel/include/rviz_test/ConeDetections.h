// Generated by gencpp from file rviz_test/ConeDetections.msg
// DO NOT EDIT!


#ifndef RVIZ_TEST_MESSAGE_CONEDETECTIONS_H
#define RVIZ_TEST_MESSAGE_CONEDETECTIONS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <rviz_test/Cone.h>

namespace rviz_test
{
template <class ContainerAllocator>
struct ConeDetections_
{
  typedef ConeDetections_<ContainerAllocator> Type;

  ConeDetections_()
    : header()
    , cone_detections()  {
    }
  ConeDetections_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , cone_detections(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::rviz_test::Cone_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rviz_test::Cone_<ContainerAllocator> >> _cone_detections_type;
  _cone_detections_type cone_detections;





  typedef boost::shared_ptr< ::rviz_test::ConeDetections_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rviz_test::ConeDetections_<ContainerAllocator> const> ConstPtr;

}; // struct ConeDetections_

typedef ::rviz_test::ConeDetections_<std::allocator<void> > ConeDetections;

typedef boost::shared_ptr< ::rviz_test::ConeDetections > ConeDetectionsPtr;
typedef boost::shared_ptr< ::rviz_test::ConeDetections const> ConeDetectionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rviz_test::ConeDetections_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rviz_test::ConeDetections_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rviz_test::ConeDetections_<ContainerAllocator1> & lhs, const ::rviz_test::ConeDetections_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.cone_detections == rhs.cone_detections;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rviz_test::ConeDetections_<ContainerAllocator1> & lhs, const ::rviz_test::ConeDetections_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rviz_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rviz_test::ConeDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rviz_test::ConeDetections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_test::ConeDetections_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rviz_test::ConeDetections_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_test::ConeDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rviz_test::ConeDetections_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rviz_test::ConeDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d208cc8d9a8d2c9f26b340c91ec270a";
  }

  static const char* value(const ::rviz_test::ConeDetections_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d208cc8d9a8d2c9ULL;
  static const uint64_t static_value2 = 0xf26b340c91ec270aULL;
};

template<class ContainerAllocator>
struct DataType< ::rviz_test::ConeDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rviz_test/ConeDetections";
  }

  static const char* value(const ::rviz_test::ConeDetections_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rviz_test::ConeDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"Cone[] cone_detections\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: rviz_test/Cone\n"
"geometry_msgs/Point position  	      # coordinate of cone in [x, y]\n"
"std_msgs/String color                 # color of cone, 'b' = blue, 'y' = yellow, 'o' = orange\n"
"std_msgs/Float32 poseConfidence   	      # confidence of cone detect\n"
"std_msgs/Float32 colorConfidence   	      # confidence of cone detect\n"
"\n"
"#uint8 cluster\n"
"#uint8 pointType\n"
"#uint8 pts\n"
"#uint8 visited\n"
"#uint8[] corepts\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::rviz_test::ConeDetections_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rviz_test::ConeDetections_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.cone_detections);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConeDetections_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rviz_test::ConeDetections_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rviz_test::ConeDetections_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "header: ";
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "cone_detections: ";
    if (v.cone_detections.empty() || false)
      s << "[";
    for (size_t i = 0; i < v.cone_detections.size(); ++i)
    {
      if (false && i > 0)
        s << ", ";
      else if (!false)
        s << std::endl << indent << "  -";
      Printer< ::rviz_test::Cone_<ContainerAllocator> >::stream(s, false ? std::string() : indent + "    ", v.cone_detections[i]);
    }
    if (v.cone_detections.empty() || false)
      s << "]";
  }
};

} // namespace message_operations
} // namespace ros

#endif // RVIZ_TEST_MESSAGE_CONEDETECTIONS_H
