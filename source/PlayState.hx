package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

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
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
