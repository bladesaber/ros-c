#include <iostream>
#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <hello/demoAction.h>
#include "std_msgs/Int32.h"

using namespace std;

class Demo_actionAction
{
protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<hello::demoAction> server;
    hello::demoFeedback feedback;
    hello::demoResult result;

    string action_name;
    int goal;
    int progress;
public:
    Demo_actionAction(string name): 
        server(nh_, name, boost::bind(&Demo_actionAction::executeCB, this, _1), false),
        action_name(name)
    {
        server.registerPreemptCallback(boost::bind(&Demo_actionAction::preemptCB, this));
        server.start();
    }

    ~Demo_actionAction(void)
    {
    }

    void preemptCB(){
        ROS_WARN("%s got preempted!", action_name.c_str());
        result.final_count = progress;
        server.setPreempted(result,"I got Preempted"); 

    }

    void executeCB(const hello::demoGoalConstPtr &goal)
    {
        if(!server.isActive() || server.isPreemptRequested()){
            return;
        }else{
            ros::Rate rate(1);
            ROS_INFO("%s is processing the goal %d", action_name.c_str(), goal->count);
            for (progress = 0; progress <= goal->count; progress++)
            {
                if (!ros::ok())
                {
                    result.final_count = progress;
                    server.setAborted(result,"I failed !");
                    ROS_INFO("%s Shutting down",action_name.c_str());
                    break;
                }
                    
                if(!server.isActive() || server.isPreemptRequested()){
                    return;
                }

                if (goal->count<=progress)
                {
                    ROS_INFO("%s Succeeded at getting to goal %d", action_name.c_str(), goal->count);
                    result.final_count = progress;
                    server.setSucceeded(result);
                }else{
                    ROS_INFO("Setting to goal %d / %d",feedback.current_count,goal->count);
                    feedback.current_count = progress;
                    server.publishFeedback(feedback);
                }

                rate.sleep();
            }
        }
    }
};
