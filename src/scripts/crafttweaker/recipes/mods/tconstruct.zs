/*
    SkyFactory 4 Tinker's Construct Recipe Script

    This script handles the recipes for Tinker's Construct.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<tconstruct:stone_stick> * 4: [
		[
			[<ore:cobblestone>],
			[<ore:cobblestone>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<tconstruct:stone_stick>
];

function init() {
	// Un-named recipes
	var shapedRecipes as IIngredient[][][][IItemStack] = shapedRecipes;
	var mirroredRecipes as IIngredient[][][][IItemStack] = mirroredRecipes;
	var shapelessRecipes as IIngredient[][][IItemStack] = shapelessRecipes;

	// Named recipes
	var namedShapedRecipes as IIngredient[][][][string][IItemStack] = namedShapedRecipes;
	var namedMirroredRecipes as IIngredient[][][][string][IItemStack] = namedMirroredRecipes;
	var namedShapelessRecipes as IIngredient[][][string][IItemStack] = namedShapelessRecipes;

	var removeRecipes as IItemStack[] = removeRecipes;

	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
