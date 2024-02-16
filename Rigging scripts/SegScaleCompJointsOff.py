#toggles segment scale compensate off for each selected joint.

import maya.cmds as cmds
joints = cmds.ls(type='joint')
for j in joints:
    cmds.setAttr('%s.segmentScaleCompensate' % j,0)