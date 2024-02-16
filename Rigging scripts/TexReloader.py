#Reloads all textures in  a given scene. helpful while making small corrections, or if one isn't loading properly
import maya.cmds as cmds

def reloadTextures():
    cmds.waitCursor(state = True)
    textureFiles = cmds.ls(type = "file")
    for texture in textureFiles:
        textureFilePath = cmds.getAttr(texture + ".fileTextureName")
        cmds.setAttr(texture + ".fileTextureName", textureFilePath, type = "string")
    cmds.waitCursor(state = False)
    
reloadTextures()