import maya.cmds as cmds
 
def changeColors(targetColorField):

    # Query the target color value from the intField

    # use targetColorField as argument to pass color data

    targetColorInt = cmds.intField(targetColorField, query=True, value=True)

    print("Changed to color index:", targetColorInt)
 
    # Get selected objects

    sels = cmds.ls(sl=True)

    for sel in sels:

        shapes = cmds.listRelatives(sel, children=True, shapes=True)

        if shapes:  # Check if shapes were found in selection

            for shape in shapes:

                cmds.setAttr(f'{shape}.overrideEnabled', 1)

                cmds.setAttr(f'{shape}.overrideColor', targetColorInt)
 
def createWin():

    # create maya window

    if cmds.window('ControlColorChanger', exists=True):

        cmds.deleteUI('ControlColorChanger')

    cmds.window('ControlColorChanger')

    cmds.columnLayout()

    # call change color function on button press by using the int data from the intfield

    targetColor = cmds.intField('TargetColor', value=6)  # Default blue color index

    cmds.button(label='Change control colors!', c=lambda *_: changeColors(targetColor))

    cmds.showWindow('ControlColorChanger')
 
createWin()
