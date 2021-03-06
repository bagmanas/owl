(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

 (** Values of physical constants
   CGS < MKS < SI. Read wikipedia on CGS and SI system for more details.

   International System of Units (French: Système international d'unités, SI),
   historically also called the MKSA system of units for
   metre–kilogram–second–ampere.

   The SI system of units extends the MKS system and has 7 base units, by
   expressing any measurement of physical quantities using fundamental units
   of Length, Mass, Time, Electric Current, Thermodynamic Temperature, Amount
   of substance and Luminous Intensity, which are Metre, Kilogram, Second,
   Ampere, Kelvin, Mole and Candela respectively.

   http://www.npl.co.uk/upload/pdf/units-of-measurement-poster.pdf
  *)

module SI : sig
  val speed_of_light : float
  val gravitational_constant : float
  val plancks_constant_h : float
  val plancks_constant_hbar : float
  val astronomical_unit : float
  val light_year : float
  val parsec : float
  val grav_accel : float
  val electron_volt : float
  val mass_electron : float
  val mass_muon : float
  val mass_proton : float
  val mass_neutron : float
  val rydberg : float
  val boltzmann : float
  val molar_gas : float
  val standard_gas_volume : float
  val minute : float
  val hour : float
  val day : float
  val week : float
  val inch : float
  val foot : float
  val yard : float
  val mile : float
  val nautical_mile : float
  val fathom : float
  val mil : float
  val point : float
  val texpoint : float
  val micron : float
  val angstrom : float
  val hectare : float
  val acre : float
  val barn : float
  val liter : float
  val us_gallon : float
  val quart : float
  val pint : float
  val cup : float
  val fluid_ounce : float
  val tablespoon : float
  val teaspoon : float
  val canadian_gallon : float
  val uk_gallon : float
  val miles_per_hour : float
  val kilometers_per_hour : float
  val knot : float
  val pound_mass : float
  val ounce_mass : float
  val ton : float
  val metric_ton : float
  val uk_ton : float
  val troy_ounce : float
  val carat : float
  val unified_atomic_mass : float
  val gram_force : float
  val pound_force : float
  val kilopound_force : float
  val poundal : float
  val calorie : float
  val btu : float
  val therm : float
  val horsepower : float
  val bar : float
  val std_atmosphere : float
  val torr : float
  val meter_of_mercury : float
  val inch_of_mercury : float
  val inch_of_water : float
  val psi : float
  val poise : float
  val stokes : float
  val stilb : float
  val lumen : float
  val lux : float
  val phot : float
  val footcandle : float
  val lambert : float
  val footlambert : float
  val curie : float
  val roentgen : float
  val rad : float
  val solar_mass : float
  val bohr_radius : float
  val newton : float
  val dyne : float
  val joule : float
  val erg : float
  val stefan_boltzmann_constant : float
  val thomson_cross_section : float
  val bohr_magneton : float
  val nuclear_magneton : float
  val electron_magnetic_moment : float
  val proton_magnetic_moment : float
  val faraday : float
  val electron_charge : float
  val vacuum_permittivity : float
  val vacuum_permeability : float
  val debye : float
  val gauss : float
end

module Prefix : sig
  val fine_structure : float
  val avogadro : float
  val yotta : float
  val zetta : float
  val exa : float
  val peta : float
  val tera : float
  val giga : float
  val mega : float
  val kilo : float
  val hecto : float
  val deca : float
  val deci : float
  val centi : float
  val milli : float
  val micro : float
  val nano : float
  val pico : float
  val femto : float
  val atto : float
  val zepto : float
  val yocto : float
end

module MKS : sig
  val speed_of_light : float
  val gravitational_constant : float
  val plancks_constant_h : float
  val plancks_constant_hbar : float
  val astronomical_unit : float
  val light_year : float
  val parsec : float
  val grav_accel : float
  val electron_volt : float
  val mass_electron : float
  val mass_muon : float
  val mass_proton : float
  val mass_neutron : float
  val rydberg : float
  val boltzmann : float
  val molar_gas : float
  val standard_gas_volume : float
  val minute : float
  val hour : float
  val day : float
  val week : float
  val inch : float
  val foot : float
  val yard : float
  val mile : float
  val nautical_mile : float
  val fathom : float
  val mil : float
  val point : float
  val texpoint : float
  val micron : float
  val angstrom : float
  val hectare : float
  val acre : float
  val barn : float
  val liter : float
  val us_gallon : float
  val quart : float
  val pint : float
  val cup : float
  val fluid_ounce : float
  val tablespoon : float
  val teaspoon : float
  val canadian_gallon : float
  val uk_gallon : float
  val miles_per_hour : float
  val kilometers_per_hour : float
  val knot : float
  val pound_mass : float
  val ounce_mass : float
  val ton : float
  val metric_ton : float
  val uk_ton : float
  val troy_ounce : float
  val carat : float
  val unified_atomic_mass : float
  val gram_force : float
  val pound_force : float
  val kilopound_force : float
  val poundal : float
  val calorie : float
  val btu : float
  val therm : float
  val horsepower : float
  val bar : float
  val std_atmosphere : float
  val torr : float
  val meter_of_mercury : float
  val inch_of_mercury : float
  val inch_of_water : float
  val psi : float
  val poise : float
  val stokes : float
  val stilb : float
  val lumen : float
  val lux : float
  val phot : float
  val footcandle : float
  val lambert : float
  val footlambert : float
  val curie : float
  val roentgen : float
  val rad : float
  val solar_mass : float
  val bohr_radius : float
  val newton : float
  val dyne : float
  val joule : float
  val erg : float
  val stefan_boltzmann_constant : float
  val thomson_cross_section : float
  val bohr_magneton : float
  val nuclear_magneton : float
  val electron_magnetic_moment : float
  val proton_magnetic_moment : float
  val faraday : float
  val electron_charge : float
  val vacuum_permittivity : float
  val vacuum_permeability : float
  val debye : float
  val gauss : float
end

module CGS : sig
  val speed_of_light : float
  val gravitational_constant : float
  val plancks_constant_h : float
  val plancks_constant_hbar : float
  val astronomical_unit : float
  val light_year : float
  val parsec : float
  val grav_accel : float
  val electron_volt : float
  val mass_electron : float
  val mass_muon : float
  val mass_proton : float
  val mass_neutron : float
  val rydberg : float
  val boltzmann : float
  val molar_gas : float
  val standard_gas_volume : float
  val minute : float
  val hour : float
  val day : float
  val week : float
  val inch : float
  val foot : float
  val yard : float
  val mile : float
  val nautical_mile : float
  val fathom : float
  val mil : float
  val point : float
  val texpoint : float
  val micron : float
  val angstrom : float
  val hectare : float
  val acre : float
  val barn : float
  val liter : float
  val us_gallon : float
  val quart : float
  val pint : float
  val cup : float
  val fluid_ounce : float
  val tablespoon : float
  val teaspoon : float
  val canadian_gallon : float
  val uk_gallon : float
  val miles_per_hour : float
  val kilometers_per_hour : float
  val knot : float
  val pound_mass : float
  val ounce_mass : float
  val ton : float
  val metric_ton : float
  val uk_ton : float
  val troy_ounce : float
  val carat : float
  val unified_atomic_mass : float
  val gram_force : float
  val pound_force : float
  val kilopound_force : float
  val poundal : float
  val calorie : float
  val btu : float
  val therm : float
  val horsepower : float
  val bar : float
  val std_atmosphere : float
  val torr : float
  val meter_of_mercury : float
  val inch_of_mercury : float
  val inch_of_water : float
  val psi : float
  val poise : float
  val stokes : float
  val stilb : float
  val lumen : float
  val lux : float
  val phot : float
  val footcandle : float
  val lambert : float
  val footlambert : float
  val curie : float
  val roentgen : float
  val rad : float
  val solar_mass : float
  val bohr_radius : float
  val newton : float
  val dyne : float
  val joule : float
  val erg : float
  val stefan_boltzmann_constant : float
  val thomson_cross_section : float
end

module CGSM : sig
  val speed_of_light : float
  val gravitational_constant : float
  val plancks_constant_h : float
  val plancks_constant_hbar : float
  val astronomical_unit : float
  val light_year : float
  val parsec : float
  val grav_accel : float
  val electron_volt : float
  val mass_electron : float
  val mass_muon : float
  val mass_proton : float
  val mass_neutron : float
  val rydberg : float
  val boltzmann : float
  val molar_gas : float
  val standard_gas_volume : float
  val minute : float
  val hour : float
  val day : float
  val week : float
  val inch : float
  val foot : float
  val yard : float
  val mile : float
  val nautical_mile : float
  val fathom : float
  val mil : float
  val point : float
  val texpoint : float
  val micron : float
  val angstrom : float
  val hectare : float
  val acre : float
  val barn : float
  val liter : float
  val us_gallon : float
  val quart : float
  val pint : float
  val cup : float
  val fluid_ounce : float
  val tablespoon : float
  val teaspoon : float
  val canadian_gallon : float
  val uk_gallon : float
  val miles_per_hour : float
  val kilometers_per_hour : float
  val knot : float
  val pound_mass : float
  val ounce_mass : float
  val ton : float
  val metric_ton : float
  val uk_ton : float
  val troy_ounce : float
  val carat : float
  val unified_atomic_mass : float
  val gram_force : float
  val pound_force : float
  val kilopound_force : float
  val poundal : float
  val calorie : float
  val btu : float
  val therm : float
  val horsepower : float
  val bar : float
  val std_atmosphere : float
  val torr : float
  val meter_of_mercury : float
  val inch_of_mercury : float
  val inch_of_water : float
  val psi : float
  val poise : float
  val stokes : float
  val stilb : float
  val lumen : float
  val lux : float
  val phot : float
  val footcandle : float
  val lambert : float
  val footlambert : float
  val curie : float
  val roentgen : float
  val rad : float
  val solar_mass : float
  val bohr_radius : float
  val newton : float
  val dyne : float
  val joule : float
  val erg : float
  val stefan_boltzmann_constant : float
  val thomson_cross_section : float
  val bohr_magneton : float
  val nuclear_magneton : float
  val electron_magnetic_moment : float
  val proton_magnetic_moment : float
  val faraday : float
  val electron_charge : float
end
