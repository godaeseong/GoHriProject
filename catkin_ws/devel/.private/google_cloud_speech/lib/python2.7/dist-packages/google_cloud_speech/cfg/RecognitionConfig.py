## *********************************************************
## 
## File autogenerated for the google_cloud_speech package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 293, 'description': 'An Audio Threadhold Value', 'max': 2000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'audio_threshold', 'edit_method': '', 'default': 1000, 'level': 0, 'min': 80, 'type': 'int'}, {'srcline': 293, 'description': 'A language code for speech recognition', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'language', 'edit_method': "{'enum_description': 'An enum to set language_code', 'enum': [{'srcline': 9, 'description': 'English - UniteStates', 'srcfile': '/home/hri/catkin_ws/src/google_cloud_speech/cfg/Recognition.cfg', 'cconsttype': 'const char * const', 'value': 'en_US', 'ctype': 'std::string', 'type': 'str', 'name': 'English_US'}, {'srcline': 10, 'description': 'English - NewZealand', 'srcfile': '/home/hri/catkin_ws/src/google_cloud_speech/cfg/Recognition.cfg', 'cconsttype': 'const char * const', 'value': 'en_NZ', 'ctype': 'std::string', 'type': 'str', 'name': 'English_NZ'}, {'srcline': 11, 'description': 'Korean - Republic of Korea', 'srcfile': '/home/hri/catkin_ws/src/google_cloud_speech/cfg/Recognition.cfg', 'cconsttype': 'const char * const', 'value': 'ko_KR', 'ctype': 'std::string', 'type': 'str', 'name': 'Korean_KR'}]}", 'default': 'en_US', 'level': 0, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Recognition_English_US = 'en_US'
Recognition_English_NZ = 'en_NZ'
Recognition_Korean_KR = 'ko_KR'
