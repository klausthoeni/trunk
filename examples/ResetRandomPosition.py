# -*- coding: utf-8

""" THIS SCRIPT IS NOT WORKING!
ERROR MESSAGE:

Running script ResetRandomPosition.py                                                                                                
Traceback (most recent call last):                                                                                                   
  File "/home/me/YADE/YADE3041/bin/yade-bzr3041", line 182, in runScript                                                             
    execfile(script,globals())                                                                                                       
  File "ResetRandomPosition.py", line 31, in <module>                                                                                
    plnIds=O.bodies.append(pack.gtsSurface2Facets(pln.faces(),material=facetMat,color=(0,1,0)))                                      
  File "/home/me/YADE/YADE3041/lib/yade-bzr3041/py/yade/pack.py", line 179, in gtsSurface2Facets                                     
    return [utils.facet([v.coords() for v in face.vertices()],**kw) for face in surf.faces()]                                        
AttributeError: 'tuple' object has no attribute 'faces'
"""

from yade import utils,pack,export,qt
import gts,os

def Plane(v1,v2,v3,v4):
	pts = [ [Vector3(v1),Vector3(v2),Vector3(v3),Vector3(v4)] ]
	return pack.sweptPolylines2gtsSurface(pts,capStart=True,capEnd=True)

# Parameters
tc=0.001# collision time 
en=0.3  # normal restitution coefficient
es=0.3  # tangential restitution coefficient
frictionAngle=radians(35)# 
density=2700
kw=utils.getViscoelasticFromSpheresInteraction(tc,en,es)
params=utils.getViscoelasticFromSpheresInteraction(tc,en,es)
# facets material
facetMat=O.materials.append(ViscElMat(frictionAngle=frictionAngle,**params)) 
# default spheres material
dfltSpheresMat=O.materials.append(ViscElMat(density=density,frictionAngle=frictionAngle,**params))

O.dt=.2*tc # time step

Rs=0.02 # mean particle radius
Rf=0.01 # dispersion (Rs±Rf*Rs)
nSpheres=1000# number of particles

# Create geometry
pln=Plane( (-.5, -.5, 0), (.5, -.5, -.05), (.5, .5, 0), (-.5, .5, -.05) ); 
plnIds=O.bodies.append(pack.gtsSurface2Facets(pln,material=facetMat,color=(0,1,0)))

fct=Plane( (-.25, -.25, .5), (.25, -.25, .5), (.25, .25, .5), (-.25, .25, .5) ); 
fctIds=O.bodies.append(pack.gtsSurface2Facets(fct,material=facetMat,color=(1,0,0),noBound=True))

# Create spheres
sp=pack.SpherePack(); 
sp.makeCloud(Vector3(-.5, -.5, 0),Vector3(.5, .5, .2), Rs, Rf, int(nSpheres), False)
spheres=O.bodies.append([utils.sphere(s[0],s[1],color=(0.929,0.412,0.412),material=dfltSpheresMat) for s in sp])

# Create engines
O.engines=[
	ForceResetter(),
	InsertionSortCollider([Bo1_Sphere_Aabb(),Bo1_Facet_Aabb()]),
	InteractionLoop(
		[Ig2_Sphere_Sphere_ScGeom(), Ig2_Facet_Sphere_ScGeom()],
		[Ip2_ViscElMat_ViscElMat_ViscElPhys()],
		[Law2_ScGeom_ViscElPhys_Basic()],
	),
	NewtonIntegrator(damping=0,gravity=[0,0,-9.81]),
	ResetRandomPosition(virtPeriod=0.01,factoryFacets=fctIds,velocity=(0,0,-2),subscribedBodies=spheres,point=(0,0,-.5),normal=(0,0,1),maxAttempts=100),
]

renderer = qt.Renderer()
qt.View()
O.saveTmp()
O.run()


