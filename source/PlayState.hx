package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class PlayState extends FlxState
{
	var barPlacement = new FlxSprite();
	var bar1 = new FlxSprite();
	var bar2 = new FlxSprite();
	var bar3 = new FlxSprite();
	var bar4 = new FlxSprite();
	var bar5 = new FlxSprite();
	var bar6 = new FlxSprite();
	var bar7 = new FlxSprite();
	var bar8 = new FlxSprite();
	var bar9 = new FlxSprite();
	var bar10 = new FlxSprite();
	var bar11 = new FlxSprite();
	var bar12 = new FlxSprite();
	var bar13 = new FlxSprite();
	var bar14 = new FlxSprite();
	var bar15 = new FlxSprite();
	var bar16 = new FlxSprite();
	var barPlacementText1 = new FlxText();
	var barPlacementText2 = new FlxText();
	var barPlacementText3 = new FlxText();
	var barPlacementText4 = new FlxText();
	var barPlacementText5 = new FlxText();
	var barPlacementText6 = new FlxText();
	var barPlacementText7 = new FlxText();
	var barPlacementText8 = new FlxText();
	var barPlacementText9 = new FlxText();
	var barPlacementText10 = new FlxText();
	var barPlacementText11 = new FlxText();
	var barPlacementText12 = new FlxText();
	var barPlacementText13 = new FlxText();
	var barPlacementText14 = new FlxText();
	var barPlacementText15 = new FlxText();
	var barPlacementText16 = new FlxText();

	override public function create()
	{
		super.create();

		barPlacement = new FlxSprite(0, 0).makeGraphic(100, 720, FlxColor.GRAY);
		add(barPlacement);

		bar1 = new FlxSprite(100, 0).makeGraphic(500, 40, FlxColor.MAGENTA);
		add(bar1);

		bar2 = new FlxSprite(100, 45).makeGraphic(500, 40, 0xFF8000FF);
		add(bar2);

		bar3 = new FlxSprite(100, 90).makeGraphic(500, 40, 0xFFD2B48C);
		add(bar3);

		bar4 = new FlxSprite(100, 135).makeGraphic(500, 40, FlxColor.ORANGE);
		add(bar4);

		bar5 = new FlxSprite(100, 180).makeGraphic(500, 40, FlxColor.LIME);
		add(bar5);

		bar6 = new FlxSprite(100, 225).makeGraphic(500, 40, FlxColor.RED);
		add(bar6);

		bar7 = new FlxSprite(100, 270).makeGraphic(500, 40, FlxColor.BLUE);
		add(bar7);

		bar8 = new FlxSprite(100, 315).makeGraphic(500, 40, 0xFFC080FF);
		add(bar8);

		bar9 = new FlxSprite(100, 360).makeGraphic(500, 40, FlxColor.YELLOW);
		add(bar9);

		bar10 = new FlxSprite(100, 405).makeGraphic(500, 40, FlxColor.BROWN);
		add(bar10);

		bar11 = new FlxSprite(100, 450).makeGraphic(500, 40, 0xFF646464);
		add(bar11);

		bar12 = new FlxSprite(100, 495).makeGraphic(500, 40, 0xFF000080);
		add(bar12);

		bar13 = new FlxSprite(100, 540).makeGraphic(500, 40, 0xFF808000);
		add(bar13);

		bar14 = new FlxSprite(100, 585).makeGraphic(500, 40, FlxColor.PINK);
		add(bar14);

		bar15 = new FlxSprite(100, 630).makeGraphic(500, 40, 0xFF00FFFF);
		add(bar15);

		bar16 = new FlxSprite(100, 675).makeGraphic(500, 40, 0xFF006400);
		add(bar16);
		barPlacementText1 = new FlxText(25, 0, 0, '1st', 32);
		barPlacementText1.setFormat("Times New Roman", 32);
		add(barPlacementText1);

		barPlacementText2 = new FlxText(25, 45, 0, '2nd', 32);
		barPlacementText2.setFormat("Times New Roman", 32);
		add(barPlacementText2);

		barPlacementText3 = new FlxText(25, 90, 0, '3rd', 32);
		barPlacementText3.setFormat("Times New Roman", 32);
		add(barPlacementText3);

		barPlacementText4 = new FlxText(25, 135, 0, '4th', 32);
		barPlacementText4.setFormat("Times New Roman", 32);
		add(barPlacementText4);

		barPlacementText5 = new FlxText(25, 180, 0, '5th', 32);
		barPlacementText5.setFormat("Times New Roman", 32);
		add(barPlacementText5);

		barPlacementText6 = new FlxText(25, 225, 0, '6th', 32);
		barPlacementText6.setFormat("Times New Roman", 32);
		add(barPlacementText6);

		barPlacementText7 = new FlxText(25, 270, 0, '7th', 32);
		barPlacementText7.setFormat("Times New Roman", 32);
		add(barPlacementText7);

		barPlacementText8 = new FlxText(25, 315, 0, '8th', 32);
		barPlacementText8.setFormat("Times New Roman", 32);
		add(barPlacementText8);

		barPlacementText9 = new FlxText(25, 360, 0, '9th', 32);
		barPlacementText9.setFormat("Times New Roman", 32);
		add(barPlacementText9);

		barPlacementText10 = new FlxText(25, 405, 0, '10th', 32);
		barPlacementText10.setFormat("Times New Roman", 32);
		add(barPlacementText10);

		barPlacementText11 = new FlxText(25, 450, 0, '11th', 32);
		barPlacementText11.setFormat("Times New Roman", 32);
		add(barPlacementText11);

		barPlacementText12 = new FlxText(25, 495, 0, '12th', 32);
		barPlacementText12.setFormat("Times New Roman", 32);
		add(barPlacementText12);

		barPlacementText13 = new FlxText(25, 540, 0, '13th', 32);
		barPlacementText13.setFormat("Times New Roman", 32);
		add(barPlacementText13);

		barPlacementText14 = new FlxText(25, 585, 0, '14th', 32);
		barPlacementText14.setFormat("Times New Roman", 32);
		add(barPlacementText14);

		barPlacementText15 = new FlxText(25, 630, 0, '15th', 32);
		barPlacementText15.setFormat("Times New Roman", 32);
		add(barPlacementText15);

		barPlacementText16 = new FlxText(25, 675, 0, '16th', 32);
		barPlacementText16.setFormat("Times New Roman", 32);
		add(barPlacementText16);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			FlxTween.tween(bar1.scale, {x: 1.5, y: 1}, 3);
			bar1.updateHitbox();
		});
	}
}
