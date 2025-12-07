*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

class zcl_earth definition.

    PUBLIC SECTION.
    METHODS start_engine RETURNING VALUE(str) type string.
    METHODS leave_orbit RETURNING VALUE(str) type string.

ENDCLASS.

class zcl_earth IMPLEMENTATION.
    METHOD start_engine.
        str = 'Hey Command, we start the count down for lift off'.
    ENDMETHOD.
    METHOD leave_orbit.
        str = 'Moonshot to Intermediate planet'.
    ENDMETHOD.
ENDCLASS.

class zcl_planet1 definition.
PUBLIC SECTION.
    METHODS enter_orbit RETURNING VALUE(str) type string.
    METHODS leave_orbit RETURNING VALUE(str) type string.
ENDCLASS.

class zcl_planet1 IMPLEMENTATION.
    METHOD enter_orbit.
        str = 'We are entering the orbit for solar charge'.
    ENDMETHOD.
    METHOD leave_orbit.
        str = 'Moonshot to mars'.
    ENDMETHOD.
ENDCLASS.


class zcl_mars definition.
PUBLIC SECTION.
    METHODS enter_orbit RETURNING VALUE(str) type string.
    METHODS explore_mars RETURNING VALUE(str) type string.
ENDCLASS.

class zcl_mars IMPLEMENTATION.
    METHOD enter_orbit.
        str = 'We reached mars'.
    ENDMETHOD.
    METHOD explore_mars.
        str = 'Roger we found the water on mars'.
    ENDMETHOD.
ENDCLASS.
