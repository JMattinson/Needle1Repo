import maya.cmds as cmds

#{TO RUN: make viewport selection, parent & child control}

#Get selection, seperate parent & child control
sels = cmds.ls(sl=True) #[Parent control & child control]
parent_ctrl = sels[0]
child_ctrl = sels[1]

#get parent group of the child control
child_ctrl_grp = cmds.listRelatives(child_ctrl, parent = True)[0] #Child control's parent node

#Create control constraints
p_constraint1 = cmds.parentConstraint(parent_ctrl, child_ctrl_grp, mo=True,skipRotate=['x','y','z'], weight=1)[0]#Constrain translation
p_constraint2 = cmds.parentConstraint(parent_ctrl, child_ctrl_grp, mo=True,skipTranslate=['x','y','z'], weight=1)[0]#Constrains rotations
cmds.scaleConstraint(parent_ctrl, child_ctrl_grp, weight=1)

#Create attributes on the child control
if not cmds.attributeQuery('FollowTranslate', node=child_ctrl, exists=True):
    cmds.addAttr(child_ctrl, ln='FollowTranslate', at='double', min=0, max=1,dv=1)
    cmds.setAttr('%s.FollowTranslate' %(child_ctrl), e=True, keyable=True)

if not cmds.attributeQuery('FollowRotate', node=child_ctrl, exists=True):
    cmds.addAttr(child_ctrl, ln='FollowRotate', at='double', min=0, max=1,dv=1)
    cmds.setAttr('%s.FollowRotate' %(child_ctrl), e=True, keyable=True)

#connect child controls's attributes to constraint weights
cmds.connectAttr('%s.FollowTranslate' %(child_ctrl),'%s.w0' %(p_constraint1), f=True)
cmds.connectAttr('%s.FollowRotate' %(child_ctrl),'%s.w0' %(p_constraint2), f=True)

