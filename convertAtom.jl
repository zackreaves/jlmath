function gram2atom(materialMass, molarMass)
	mol = 6.02214076e23;
	atoms = mol * materialMass / molarMass;
	return atoms
end
