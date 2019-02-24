--=======Modifiers=======--
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES('OP_BUILDING_LOYALTY_PRESSURE', 'MODIFIER_SINGLE_CITY_ADJUST_IDENTITY_PRESSURE');

--=======Modifiers Arguments=======--
INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES('OP_BUILDING_LOYALTY_PRESSURE', 'Amount', 'ARGTYPE_IDENTITY', '20');
INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES('OP_BUILDING_LOYALTY_PRESSURE', 'ForeignCities', 'ARGTYPE_IDENTITY', 'true');

--=======Modifiers Arguments=======--
INSERT INTO BuildingModifiers(BuildingType, ModifierId) VALUES('BUILDING_OP_BUILDING', 'OP_BUILDING_LOYALTY_PRESSURE');