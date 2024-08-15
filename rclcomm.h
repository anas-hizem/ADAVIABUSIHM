#ifndef RCLCOMM_H
#define RCLCOMM_H

#include <QObject>
#include <QThread>
#include "rclcpp/rclcpp.hpp"
#include <geometry_msgs/msg/twist.hpp>

class RclComm : public QObject
{
    Q_OBJECT
public:
    explicit RclComm(QObject *parent = nullptr);
    Q_INVOKABLE void _set_pub(const QString &topic_name);
    Q_INVOKABLE void _pub_msgs(int udlr);
    Q_INVOKABLE void set_speed(double speed);

private:
    rclcpp::Publisher<geometry_msgs::msg::Twist>::SharedPtr _pubp;
    std::shared_ptr<rclcpp::Node> _node;
    bool _pub_is_ok;
    double _current_speed;
};

#endif // RCLCOMM_H
