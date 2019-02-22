--=======Modifiers=======--
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES('OP_BUILDING_FREE_POWER', 'MODIFIER_SINGLE_CITY_ADJUST_FREE_POWER');

--=======Modifiers Arguments=======--
INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES('OP_BUILDING_FREE_POWER', 'Amount', 'ARGTYPE_IDENTITY', '20');
INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES('OP_BUILDING_FREE_POWER', 'SourceType', 'ARGTYPE_IDENTITY', 'FREE_POWER_SOURCE_WATER');

--=======Modifiers Arguments=======--
INSERT INTO BuildingModifiers(BuildingType, ModifierId) VALUES('BUILDING_OP_BUILDING', 'OP_BUILDING_FREE_POWER');