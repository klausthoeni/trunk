# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./preprocessors/FileGenerator/SDECSpheresPlane
# Target is a library:  

LIBS += -lSDECDynamicEngine \
        -lSAPCollider \
        -lBox \
        -lSphere \
        -lAABB \
        -lSerialization \
        -lMath \
        -lBody \
        -lEngine \
        -lMultiMethods \
        -lInteraction \
        -lPersistentSAPCollider \
        -lSDECLinearContactModel \
        -lInteractionSphere \
        -lInteractionBox \
        -lInteractionDescriptionSet \
        -lInteractionDescriptionSet2AABBFunctor \
        -lParticleParameters \
        -lActionReset \
        -lSDECLinkGeometry \
        -lCundallNonViscousMomentumDamping \
        -lCundallNonViscousForceDamping \
        -lSDECTimeStepper \
        -rdynamic 
INCLUDEPATH = $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../plugins/Engine/DynamicEngine/SDECDynamicEngine/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/BroadInteractor/SAPCollider/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/GeometricalModel/Box/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/GeometricalModel/Sphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/BoundingVolume/AABB/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/Serialization/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/Math/$(YADEDYNLIBPATH) \
               ../../../yade/Body/Body/$(YADEDYNLIBPATH) \
               ../../../yade/Engine/$(YADEDYNLIBPATH) \
               ../../../toolboxes/Libraries/MultiMethods/$(YADEDYNLIBPATH) \
               ../../../yade/Interaction/Interaction/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/BroadInteractor/PersistentSAPCollider/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/InteractionPhysicsFunctor/SDECContactPhysics/SDECLinearContactModel/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/InteractionDescription/InteractionSphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/InteractionDescription/InteractionBox/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/InteractionDescription/InteractionDescriptionSet/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/BoundingVolumeFunctor/InteractionDescriptionSet2AABBFunctor/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/BodyPhysicalParameters/ParticleParameters/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/Action/ActionReset/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/InteractionGeometry/SDECLinkGeometry/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/ActionFunctor/CundallNonViscousMomentumDamping/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/ActionFunctor/CundallNonViscousForceDamping/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/ActionDampingFunctor/ActionMomentumDamping/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/ActionDampingFunctor/ActionForceDamping/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/InteractionGeometry/SDECPermanentLink/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/GeometricalModel/Box/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/GeometricalModel/Sphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/BoundingVolume/AABB/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/InteractionDescription/InteractionSphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/InteractionDescription/InteractionBox/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/InteractionDescription/InteractionDescriptionSet/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/BoundingVolumeFunctor/InteractionDescriptionSet2AABBFunctor/$(YADEDYNLIBPATH) \
               ../../../yade/Body/$(YADEDYNLIBPATH) \
               ../../../yade/Geometry/$(YADEDYNLIBPATH) \
               ../../../yade/Interaction/$(YADEDYNLIBPATH) \
               ../../../plugins/Interaction/InteractionPhysicsFunctor/SDECLinearContactModel/$(YADEDYNLIBPATH) \
               ../../../plugins/Body/BodyPhysicalParameters/Particle/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/InteractionGeometry/InteractionSphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/InteractionGeometry/InteractionBox/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/BoundingVolumeFactory/CollisionGeometrySet2AABBFactory/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/CollisionGeometry/CollisionGeometrySet/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/CollisionGeometry/InteractionSphere/$(YADEDYNLIBPATH) \
               ../../../plugins/Geometry/CollisionGeometry/InteractionBox/$(YADEDYNLIBPATH) \
               ../../../plugins/Engine/DynamicEngine/BallisticDynamicEngine/$(YADEDYNLIBPATH) \
               $(YADEDYNLIBPATH) 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DESTDIR = $(YADEDYNLIBPATH) 
CONFIG += debug \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += SDECSpheresPlane.hpp 
SOURCES += SDECSpheresPlane.cpp 
