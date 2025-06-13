import 'package:flutter/material.dart';

class EmployeeDashboardScreen extends StatefulWidget {
  const EmployeeDashboardScreen({super.key});

  @override
  State<EmployeeDashboardScreen> createState() => _EmployeeDashboardScreenState();
}

class _EmployeeDashboardScreenState extends State<EmployeeDashboardScreen> {
  int selectedTabIndex = 0;
  String _selectedSortOption = 'Deadline'; // New state variable for sort option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section (non-scrollable part)
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        // Green header 
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.75, // Increased width to overlap with logo
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.blue[800]!, Colors.green[600]!],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.zero,
                                bottomLeft: Radius.zero,
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Profile Image
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/Screenshot 2025-03-01 094607.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Hemant Rangarajan',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        'Full-stack Developer',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[200],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          right: 35,
                          top: 10,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/logoimages.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),

                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            // START OF SCROLLABLE CONTENT
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Good Morning" text and "You haven't Checked-in yet" container
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Good Morning,\nHemant Rangarajan',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            height: 1.4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Card(
                      color: Colors.grey[100], // Light grey background
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "You are Checked-in 09:00 AM",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.access_time, size: 16, color: Colors.grey),
                                const SizedBox(width: 5),
                                const Text(
                                  '09:20 am_11-06-2025',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.location_on, size: 16, color: Colors.red),
                                const SizedBox(width: 5),
                                const Text(
                                  'Location/IP (for remote attendance)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[300],
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.login, color: Colors.grey[600]),
                                        const SizedBox(width: 4),
                                        Text(
                                          'Check In',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent,
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.logout, color: Colors.white),
                                        SizedBox(width: 4),
                                        Text(
                                          'Check Out',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    //  Overview, Performance Task List, and Dashboard
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Overview", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),

                          Row(
                            children: [
                              _buildOverviewCard("Presence", "20", const Color.fromARGB(255, 8, 99, 11)),
                              _buildOverviewCard("Absence", "03", Colors.red),
                              _buildOverviewCard("Leaves", "02", Colors.orange),
                            ],
                          ),

                          const SizedBox(height: 20),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                performanceTab("My Tasks", 0),
                                performanceTab("Task Tracker", 1),
                                performanceTab("Ongoing & Pending Tasks", 2),
                                performanceTab("Work Summary", 3),
                              ],
                            ),
                          ),

                          const SizedBox(height: 13),
                          Row(
                            children: [
                              const Text("Sort By:"),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Deadline',
                                      groupValue: _selectedSortOption,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _selectedSortOption = value!;
                                        });
                                      },
                                      activeColor: Colors.black,
                                    ),
                                    const Text("Deadline"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Project',
                                      groupValue: _selectedSortOption,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _selectedSortOption = value!;
                                        });
                                      },
                                      activeColor: Colors.black ,
                                    ),
                                    const Text("Project"),
                                  ],
                                ),
                              ),
                               const Spacer(),
                               const Icon(Icons.tune, color: Colors.black),
                            ],
                          ),

                           const SizedBox(height: 13),
                          getTaskList(selectedTabIndex),
                           const SizedBox(height: 20),

                           const Text("Dashboard", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                           const SizedBox(height: 8),

                          GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            shrinkWrap: true,
                            physics:  const NeverScrollableScrollPhysics(),
                            children: [
                              dashboardItem(Icons.calendar_today, "Attendance"),
                              dashboardItem(Icons.logout, "Leaves"),
                              dashboardItem(Icons.info, "Leave Status"),
                              dashboardItem(Icons.event_note, "Holiday List"),
                              dashboardItem(Icons.receipt_long, "Payslip"),
                              dashboardItem(Icons.bar_chart, "Reports"),
                            ],
                          ),
                           const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // END OF SCROLLABLE CONTENT
            // Bottom Navigation (non-scrollable part)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildBottomNavItem(Icons.home, 'Home', true),
                  _buildBottomNavItem(Icons.history, 'History', false),
                  _buildBottomNavItem(Icons.calendar_today, 'Leave', false),
                  _buildBottomNavItem(Icons.person, 'Profile', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // HELPER METHODS 
  Widget _buildOverviewCard(String value, String label, Color color) {
    return Expanded(
      child: Container(
        padding:  const EdgeInsets.all(16),
        margin:  const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 15, color: color, fontWeight: FontWeight.bold)),
             const SizedBox(height: 4),
            Text(label, style: TextStyle(color: color)),
          ],
        ),
      ),
    );
  }

  Widget performanceTab(String label, int index) {
    bool isSelected = selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Container(
        margin:  const EdgeInsets.only(right: 4),
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (label == "My Tasks") const Icon(Icons.task, size: 16, color: Colors.black),
              if (label == "Task Tracker") const Icon(Icons.track_changes, size: 16, color: Colors.black),
              if (label == "Ongoing & Pending Tasks") const Icon(Icons.loop, size: 16, color: Colors.black),
              if (label == "Work Summary") const Icon(Icons.work, size: 16, color: Colors.black),
               const SizedBox(width: 4),
              Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTaskList(int tabIndex) {
    List<Map<String, dynamic>> tasks = []; // Changed to dynamic to accommodate more fields

    if (tabIndex == 0) {
      tasks = [
        {"title": "UI/UX Design Implementation", "desc": "Translating design specs into interactive UI using HTML, CSS, JavaScript.", "dueDate": "18-06-2025", "status": "Not Started", "progress": 0, "priority": "Low", "assignedBy": null},
        {"title": "Responsive Design", "desc": "Ensure the application works on all screen sizes.", "dueDate": "20-06-2025", "status": "In Progress", "progress": 45, "priority": "Medium", "assignedBy": "John Doe"},
        {"title": "Back-end Development", "desc": "Creating APIs and databases for managing data.", "dueDate": "25-06-2025", "status": "Completed", "progress": 100, "priority": "High", "assignedBy": null},
        {"title": "Server-Side Logic", "desc": "Implement backend logic and data processing.", "dueDate": "01-07-2025", "status": "Overdue", "progress": 75, "priority": "Medium", "assignedBy": "Jane Smith"},
      ];
    } else if (tabIndex == 1) {
      tasks = [
        {"title": "Responsive Design", "desc": "Automate testing and build pipeline.", "dueDate": "05-07-2025", "status": "Not Started", "progress": 0, "priority": "High", "assignedBy": null},
        {"title": "UI/UX Design Implementation", "desc": "Ensure consistency across modules.", "dueDate": "10-07-2025", "status": "In Progress", "progress": 60, "priority": "Low", "assignedBy": "John Doe"}
      ];
    } else if (tabIndex == 2) {
      tasks = [
        {"title": "UI/UX Design Implementation", "desc": "Resolve token expiration issue.", "status": "Ongoing Task", "startDate": "12-05-2025", "expectedCompletion": "12-06-2025", "priority": "High", "progress": 80},
        {"title": "Responsive Design", "desc": "Implement analytics dashboard UI.", "status": "Pending Task", "assignedDate": "12-05-2025", "dueDate": "12-06-2025", "priority": "Medium", "progress": 45},
        {"title": "Bug Fix: Login Issue", "desc": "Resolve token expiration issue.", "status": "Ongoing Task", "startDate": "10-05-2025", "expectedCompletion": "10-06-2025", "priority": "High", "progress": 90},
        {"title": "Design Dashboard", "desc": "Implement analytics dashboard UI.", "status": "Pending Task", "assignedDate": "08-05-2025", "dueDate": "08-06-2025", "priority": "Low", "progress": 20},
      ];
    } else if (tabIndex == 3) {
      tasks = [
        {"title": "Client Meeting Notes", "desc": "Summarize discussion points and action items.", "dueDate": "30-07-2025", "status": "Completed", "progress": 100, "priority": "High", "assignedBy": null}
      ];
    }

    return ListView.separated(
      itemCount: tasks.length,
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) =>  const Divider(),
      itemBuilder: (context, index) {
        final task = tasks[index];
        if (tabIndex == 0) {
          return _buildMyTaskCard(task);
        } else if (tabIndex == 1) {
          return _buildTaskDetailCard(task);
        } else if (tabIndex == 2) {
          return _buildOngoingTaskCard(task);
        } else if (tabIndex == 3) {
          return _buildWorkSummaryCard();
        } else {
          return _buildTaskDetailCard(task);
        }
      },
    );
  }

  // New helper method for building a single task detail card
  Widget _buildTaskDetailCard(Map<String, dynamic> task) {
    Color getStatusColor(String status) {
      switch (status) {
        case "Not Started": return Colors.grey;
        case "In Progress": return Colors.grey;
        case "Completed": return Colors.green;
        case "Overdue": return Colors.red;
        default: return Colors.grey;
      }
    }

    Color getPriorityColor(String priority) {
      switch (priority) {
        case "Low": return Colors.grey;
        case "Medium": return Colors.orange;
        case "High": return Colors.red;
        default: return Colors.grey;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(int.parse((0.1 * 255).round().toString())),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Task Title and Due Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                task["title"]!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Adjust color as needed based on design
                ),
              ),
              Text(
                'Due Date: ${task["dueDate"]}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Status
          Row(
            children: [
              const Text("Status: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
              _buildStatusIndicator("Not Started", getStatusColor(task["status"]), task["status"] == "Not Started"),
              _buildStatusIndicator("In Progress", getStatusColor(task["status"]), task["status"] == "In Progress"),
              _buildStatusIndicator("Completed", getStatusColor(task["status"]), task["status"] == "Completed"),
              _buildStatusIndicator("Overdue", getStatusColor(task["status"]), task["status"] == "Overdue"),
            ],
          ),
          const SizedBox(height: 10),

          // Progress
          Row(
            children: [
              const Text("Progress: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      value: task["progress"] / 100,
                      backgroundColor: Colors.grey[200],
                      color: Colors.green,
                      strokeWidth: 3,
                    ),
                  ),
                  Text('${task["progress"]}%', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(width: 10),
              Text(
                task["status"] == "Completed" ? "" : (task["progress"] < 100 ? "${100 - task["progress"]} days remaining" : ""),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              if (task["assignedBy"] != null)
                const Row(
                  children: [
                    Icon(Icons.assignment_ind, size: 14, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      'Assigned By (optional)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 10),

          // Priority
          Row(
            children: [
              const Text("Priority: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
              _buildPriorityOption("Low", getPriorityColor("Low"), task["priority"] == "Low"),
              _buildPriorityOption("Medium", getPriorityColor("Medium"), task["priority"] == "Medium"),
              _buildPriorityOption("High", getPriorityColor("High"), task["priority"] == "High"),
            ],
          ),
          const SizedBox(height: 10),

          // Actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<String>(
                    value: "Start",
                    groupValue: null, // Not interactive for now
                    onChanged: null,
                    activeColor: Colors.blueAccent,
                  ),
                  const Text("Start", style: TextStyle(fontSize: 10, color: Colors.black)),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<String>(
                    value: "Update",
                    groupValue: null, // Not interactive for now
                    onChanged: null,
                    activeColor: Colors.blueAccent,
                  ),
                  const Text("Update", style: TextStyle(fontSize: 10, color: Colors.black)),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<String>(
                    value: "Complete",
                    groupValue: null, // Not interactive for now
                    onChanged: null,
                    activeColor: Colors.blueAccent,
                  ),
                  const Text("Complete", style: TextStyle(fontSize: 10, color: Colors.black)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // New helper method for My Tasks tab
  Widget _buildMyTaskCard(Map<String, dynamic> task) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(int.parse((0.1 * 255).round().toString())),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task["title"]!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            task["desc"]!,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Start",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper for status indicators
  Widget _buildStatusIndicator(String label, Color color, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: isSelected ? color : Colors.transparent, width: 1.5)
            ),
          ),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(fontSize: 12, color: isSelected && label == "In Progress" ? Colors.green : (isSelected ? Colors.black : Colors.grey))),
        ],
      ),
    );
  }

  // Helper for priority options
  Widget _buildPriorityOption(String label, Color color, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Text(label, style: TextStyle(fontSize: 10, color: isSelected ? Colors.black : Colors.grey, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }

  Widget dashboardItem(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(int.parse((0.1 * 255).round().toString())),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.withAlpha(int.parse((0.1 * 255).round().toString())), // Using blue for consistency, can be dynamic
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.blue, // Using blue for consistency, can be dynamic
              size: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.lightBlueAccent : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Colors.blueAccent : Colors.grey,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  // New helper method for Ongoing & Pending Tasks tab
  Widget _buildOngoingTaskCard(Map<String, dynamic> task) {
    Color getStatusColor(String status) {
      switch (status) {
        case "Ongoing Task": return Colors.green;
        case "Pending Task": return Colors.orange;
        default: return Colors.grey;
      }
    }

    Color getPriorityColor(String priority) {
      switch (priority) {
        case "Low": return Colors.grey;
        case "Medium": return Colors.orange;
        case "High": return Colors.red;
        default: return Colors.grey;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(int.parse((0.1 * 255).round().toString())),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                task["title"]!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                '${task["progress"]}% Done',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Text("Status: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
              Text(
                task["status"]!,
                style: TextStyle(
                  fontSize: 12,
                  color: getStatusColor(task["status"]),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),

          if (task["startDate"] != null)
            Text(
              'Start date: ${task["startDate"]}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          if (task["expectedCompletion"] != null)
            Text(
              'Expected completion: ${task["expectedCompletion"]}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          if (task["assignedDate"] != null)
            Text(
              'Assigned date: ${task["assignedDate"]}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          if (task["dueDate"] != null)
            Text(
              'Due date: ${task["dueDate"]}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("Priority: ", style: TextStyle(fontSize: 12, color: Colors.grey)),
                  Text(
                    task["priority"]!,
                    style: TextStyle(
                      fontSize: 12,
                      color: getPriorityColor(task["priority"]),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Make as Done",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // New helper method for Work Summary tab
  Widget _buildWorkSummaryCard() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildWorkSummaryItem(Icons.calendar_today, "Total Working Days", "20"),
        _buildWorkSummaryItem(Icons.access_time, "Total Hours worked", "160 hours"),
        _buildWorkSummaryItem(Icons.schedule, "Average Daily Hours", "8.0 hours"),
        _buildWorkSummaryItem(Icons.bar_chart, "Productivity Indicator", "80%"),
        _buildWorkSummaryItem(Icons.people, "Projects Involved", "Revenue Dashboard"),
        _buildWorkSummaryItem(Icons.assignment, "Leave Taken", "2 days"),
      ],
    );
  }

  // Helper for individual work summary item
  Widget _buildWorkSummaryItem(IconData icon, String label, String value) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(int.parse((0.1 * 255).round().toString())),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: Colors.blueAccent),
          const SizedBox(width: 10), // Add spacing between icon and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}