#include "rclcomm.h"
#include <string>

RclComm::RclComm(QObject *parent)
    : QObject(parent), _pub_is_ok(false) , _current_speed(1.0)
{
    rclcpp::init(0, nullptr);
    _node = rclcpp::Node::make_shared("ros2_qt_pub");
}

void RclComm::_set_pub(const QString &topic_name)
{
    _pubp = _node->create_publisher<geometry_msgs::msg::Twist>(topic_name.toStdString(), 10);
    _pub_is_ok = true;
}

void RclComm::_pub_msgs(int udlr)
{
    geometry_msgs::msg::Twist twist;
    twist.linear.x = _current_speed;
    switch (udlr)
    {
    case 0: // Avant
        //twist.linear.x = 1.0;
        twist.linear.x = _current_speed;
        break;
    case 1: // Arrière
        //twist.linear.x = -1.0;
        twist.linear.x = -_current_speed;
        break;
    case 2: // Gauche
        twist.angular.z = 1.8;
        break;
    case 3: // Droite
        twist.angular.z = -1.8;
        break;
    case 5: // Avant Gauche
        //twist.linear.x = 1.0;
        twist.linear.x = _current_speed;
        twist.angular.z = 1.8;
        break;
    case 6: // Avant Droite
        //twist.linear.x = 1.0;
        twist.linear.x = _current_speed;
        twist.angular.z = -1.8;
        break;
    case 7: // Arrière Gauche
        //twist.linear.x = -1.0;
        twist.linear.x = -_current_speed;
        twist.angular.z = 1.8;
        break;
    case 8: // Arrière Droite
        //twist.linear.x = -1.0;
        twist.linear.x = -_current_speed;
        twist.angular.z = -1.8;
        break;
    default:
        twist.linear.x = 0;
        twist.angular.z = 0;
        break;
    }
    _pubp->publish(twist);
}
void RclComm::set_speed(double speed)
{
    _current_speed = speed;
}
