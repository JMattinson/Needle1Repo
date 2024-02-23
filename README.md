# FOWRepo
This repository covers the major files for "Fish out of water" The branches are pulls for character files, for later use. Sound effects & textures used are in the appropriate folders, and "Project" folder covers Adobe after effects files & autosaves.

01/25/24
-Forgot to update for the past few rig improvements whoops

-made some major rig improvments to Needle's rig yay! cleaned up a lot of garbage weight painting data, fixing deformations on both the harness, all fingers, and her rear.

-man the skeleton hierarchy was a mess. for one, i forgot how to connect the hands & feet controls to the RK, so I parented them to the joint directly??? not smart. cleaned that up a bit. hands & feet work correctly now, but there's still some weird jittering when switching between IK and FK. I'll have to poke around & figure out what's off at some point.

01/26/2024
-finished up the Golem rig, and gave him a face :) more minor touch ups to Needle's rig. turned out I had some more constraints to clean up, so the hands & feet actually follow the RK when keyed.

-This took longer than I hoped, so I was only able to Block out the 1st half of the animation. pushing myself with more action, hopefully it'll help me become a better animator, fingers crossed. 

2/2/2024
-Finished the animation today! since last week I built out the scene using a combination of houdini digital assets & hand modeled objects. wound up going with a stepped animation style, as it let me focus on better poses, and less fuss on in-betweens. included the houdini files, since they wound up pretty small (surprising for the dirt sim)

02/09/2024
Added proper descriptions of each MEL and python script. Also added the Script file, forgot that was outside of the repo :/ Each script contains a brief description of it's fuction, more complex scripts describe what needs done before running, and runs through a step -by- step of what it's doing.

02/23/2024
Started work on 3rd animation. started assembling new scene, and created an empty vending machine, alongside a digital asset to generate an array of snacks to populate it.