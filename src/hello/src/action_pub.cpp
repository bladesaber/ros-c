#include "ros/ros.h"
#include <iostream>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include "hello/demoAction.h"
#include <cstdlib>

using namespace std;

void finish_task(const actionlib::SimpleClientGoalState& state, const hello::demoResultConstPtr& result){
    ROS_INFO("task done, finish number: %d", result->final_count);
    ros::shutdown();
}

void activate_task(){
    ROS_INFO("task begin");
}

void feedback_task(const hello::demoFeedbackConstPtr& feedback)
{
    ROS_INFO("current number: %d", feedback->current_count);
}

int main(int argc, char **argv)
{
    int waste = 5;
    int wait = 6;

    cout<<"action_pub.cpp begin"<<endl;

    ros::init(argc, argv, "demo_action_client");
    ros::NodeHandle nh;

    // nh.param<int>("waste", waste, 10);
    // cout<<"waste: "<<to_string(waste)<<endl;

    actionlib::SimpleActionClient<hello::demoAction> client("demo_action", true);

    ROS_INFO("Waiting for action server to start.");

    client.waitForServer();

    ROS_INFO("Action server started, sending goal.");

    hello::demoGoal goal;
    goal.count = atoi(argv[1]);
    // goal.count = waste;
    client.sendGoal(goal, &finish_task, &activate_task, &feedback_task);

    //wait for the action to return
    client.waitForResult(ros::Duration(atoi(argv[2])));
    // nh.param<int>("wait", wait, 20);
    // client.waitForResult(ros::Duration(wait));

    actionlib::SimpleClientGoalState state = client.getState();
    if (state == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("Action finished: %s",state.toString().c_str());
    else {
        ROS_INFO("Action did not finish before the time out. %s", state.toString().c_str());
        client.cancelAllGoals();
    }

    ros::spin();

    return 0;
}
