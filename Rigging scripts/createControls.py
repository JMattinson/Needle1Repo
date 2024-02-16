#creates FK  controls with a group, and an additional offset group for each selected joint. hierarchy still needs to be put together manually.

"""

How to use:
1. Select all the joints you want to add controls to, and execute the script.

"""

import maya.cmds as cmds

sl = cmds.ls(sl=1)

for s in sl:
    ctrlName = s.replace("_Jnt", "_ctrl")
    ctrl = cmds.circle( nr=(0, 1, 0), r=3,  n=ctrlName)[0]
    group = cmds.group(ctrl, n=ctrl + "_auto")
    offset = cmds.group(group, n=ctrl + "_offset")
    cmds.parentConstraint(s, offset, mo=0)
    cmds.delete(cmds.parentConstraint(s, offset))
    cmds.parentConstraint(ctrl, s, mo=0)