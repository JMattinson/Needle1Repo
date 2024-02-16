#pretty simple one, finds every example of a parent constraint in the project. great for troubleshooting if something was incorrectly parented
import maya.cmds as cmds

constraints = cmds.ls(type='parentConstraint')
cmds.select(constraints,r=True)