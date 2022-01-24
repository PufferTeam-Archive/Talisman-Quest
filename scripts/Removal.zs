#Removal

//----------------------------------------------
//Import
//----------------------------------------------

import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.embers.DawnstoneAnvil;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.Chopping;



//----------------------------------------------
//Arrays
//----------------------------------------------

//Array JEIItems RemoveAndHide
val JEIItemsHide = [

    //MW Copper
    <mysticalworld:copper_block>,
    <mysticalworld:copper_ingot>,
    <mysticalworld:copper_nugget>,
    <mysticalworld:copper_dust>,
    <mysticalworld:copper_dust_tiny>,

    //MW Silver
    <mysticalworld:silver_block>,
    <mysticalworld:silver_ingot>,
    <mysticalworld:silver_nugget>,
    <mysticalworld:silver_dust>,
    <mysticalworld:silver_dust_tiny>,

    //MW Amethyst
    <mysticalworld:amethyst_block>,
    <mysticalworld:amethyst_gem>

] as IItemStack[];

//Array JEIItems Hide
val JEIItemsHide = [

    //Thaumcraft
    <thaumcraft:barrier>,
    <thaumcraft:hole>,
    <thaumcraft:effect_glimmer>,
    <thaumcraft:effect_sap>,
    <thaumcraft:effect_shock>

] as IItemStack[];

//----------------------------------------------
//Functions
//----------------------------------------------

//JEIItems RemoveAndHide
for items in JEIToolsHide {

DawnstoneAnvil.blacklistBreakdown(items);
JEI.removeAndHide(items);
StoneSawmill.removeRecipes(items);
BrickSawmill.removeRecipes(items);
Chopping.removeRecipes(items);

}

//JEIItems Hide
for items in JEIToolsHide {

JEI.hide(items);

}

//----------------------------------------------
//Print
//----------------------------------------------

print("Loaded Removal.zs");