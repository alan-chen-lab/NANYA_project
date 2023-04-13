# Called by node
string action_node

# action mode
int8 action_mode

int8 SIMPLE = 0
int8 DEFAULT = 1
int8 CUSTOM = 2

# status
int8 status

int8 START = 0
int8 ACTIVE = 1
int8 SUCCEEDED = 2
int8 FAILED = 3
int8 IDLE = 4