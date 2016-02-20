import clr
import sys

sys.path.append(r"/vagrant/src/lib/")
clr.AddReference("DWSIM.Thermodynamics.dll")
import DTL.DTL.SimulationObjects.PropertyPackages


print("DTL Property and Equilibrium calculation example with Water and Ethanol")

dtlc = DTL.Thermodynamics.Calculator()
dtlc.Initialize()

proppacks = dtlc.GetPropPackList()
nrtl = proppacks[8]
prpp = dtlc.GetPropPackInstance(nrtl)

T = 0
P = 0

T = 355 #K
P = 101325 #Pa

compprops = dtlc.GetCompoundConstPropList()

print ("Ethanol constant properties:")
for prop in compprops:
    pval = dtlc.GetCompoundConstProp("Ethanol", prop)
    print pval
