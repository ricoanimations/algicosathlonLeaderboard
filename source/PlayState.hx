package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.NumTween;
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
	var score1 = new FlxText();
	var score2 = new FlxText();
	var score3 = new FlxText();
	var score4 = new FlxText();
	var score5 = new FlxText();
	var score6 = new FlxText();
	var score7 = new FlxText();
	var score8 = new FlxText();
	var score9 = new FlxText();
	var score10 = new FlxText();
	var score11 = new FlxText();
	var score12 = new FlxText();
	var score13 = new FlxText();
	var score14 = new FlxText();
	var score15 = new FlxText();
	var score16 = new FlxText();

	var barheightTotal:Int = 45;

	override public function create()
	{
		super.create();

		barPlacement = new FlxSprite(0, 0).makeGraphic(100, 720, FlxColor.GRAY);
		add(barPlacement);

		bar1 = new FlxSprite(100, barheightTotal * 0).makeGraphic(1, 40, FlxColor.MAGENTA);
		add(bar1);

		bar2 = new FlxSprite(100, barheightTotal * 1).makeGraphic(1, 40, 0xFF8000FF);
		add(bar2);

		bar3 = new FlxSprite(100, barheightTotal * 2).makeGraphic(1, 40, 0xFFD2B48C);
		add(bar3);

		bar4 = new FlxSprite(100, barheightTotal * 3).makeGraphic(1, 40, FlxColor.ORANGE);
		add(bar4);

		bar5 = new FlxSprite(100, barheightTotal * 4).makeGraphic(1, 40, FlxColor.LIME);
		add(bar5);

		bar6 = new FlxSprite(100, barheightTotal * 5).makeGraphic(1, 40, FlxColor.RED);
		add(bar6);

		bar7 = new FlxSprite(100, barheightTotal * 6).makeGraphic(1, 40, FlxColor.BLUE);
		add(bar7);

		bar8 = new FlxSprite(100, barheightTotal * 7).makeGraphic(1, 40, 0xFFC080FF);
		add(bar8);

		bar9 = new FlxSprite(100, barheightTotal * 8).makeGraphic(1, 40, FlxColor.YELLOW);
		add(bar9);

		bar10 = new FlxSprite(100, barheightTotal * 9).makeGraphic(1, 40, FlxColor.BROWN);
		add(bar10);

		bar11 = new FlxSprite(100, barheightTotal * 10).makeGraphic(1, 40, 0xFF646464);
		add(bar11);

		bar12 = new FlxSprite(100, barheightTotal * 11).makeGraphic(1, 40, 0xFF000080);
		add(bar12);

		bar13 = new FlxSprite(100, barheightTotal * 12).makeGraphic(1, 40, 0xFF808000);
		add(bar13);

		bar14 = new FlxSprite(100, barheightTotal * 13).makeGraphic(1, 40, FlxColor.PINK);
		add(bar14);

		bar15 = new FlxSprite(100, barheightTotal * 14).makeGraphic(1, 40, 0xFF00FFFF);
		add(bar15);

		bar16 = new FlxSprite(100, barheightTotal * 15).makeGraphic(1, 40, 0xFF006400);
		add(bar16);
		barPlacementText1 = new FlxText(25, 0, 0, '1st', 32);
		barPlacementText1.setFormat("Times New Roman", 32);
		add(barPlacementText1);

		barPlacementText2 = new FlxText(25, barheightTotal * 1, 0, '2nd', 32);
		barPlacementText2.setFormat("Times New Roman", 32);
		add(barPlacementText2);

		barPlacementText3 = new FlxText(25, barheightTotal * 2, 0, '3rd', 32);
		barPlacementText3.setFormat("Times New Roman", 32);
		add(barPlacementText3);

		barPlacementText4 = new FlxText(25, barheightTotal * 3, 0, '4th', 32);
		barPlacementText4.setFormat("Times New Roman", 32);
		add(barPlacementText4);

		barPlacementText5 = new FlxText(25, barheightTotal * 4, 0, '5th', 32);
		barPlacementText5.setFormat("Times New Roman", 32);
		add(barPlacementText5);

		barPlacementText6 = new FlxText(25, barheightTotal * 5, 0, '6th', 32);
		barPlacementText6.setFormat("Times New Roman", 32);
		add(barPlacementText6);

		barPlacementText7 = new FlxText(25, barheightTotal * 6, 0, '7th', 32);
		barPlacementText7.setFormat("Times New Roman", 32);
		add(barPlacementText7);

		barPlacementText8 = new FlxText(25, barheightTotal * 7, 0, '8th', 32);
		barPlacementText8.setFormat("Times New Roman", 32);
		add(barPlacementText8);

		barPlacementText9 = new FlxText(25, barheightTotal * 8, 0, '9th', 32);
		barPlacementText9.setFormat("Times New Roman", 32);
		add(barPlacementText9);

		barPlacementText10 = new FlxText(25, barheightTotal * 9, 0, '10th', 32);
		barPlacementText10.setFormat("Times New Roman", 32);
		add(barPlacementText10);

		barPlacementText11 = new FlxText(25, barheightTotal * 10, 0, '11th', 32);
		barPlacementText11.setFormat("Times New Roman", 32);
		add(barPlacementText11);

		barPlacementText12 = new FlxText(25, barheightTotal * 11, 0, '12th', 32);
		barPlacementText12.setFormat("Times New Roman", 32);
		add(barPlacementText12);

		barPlacementText13 = new FlxText(25, barheightTotal * 12, 0, '13th', 32);
		barPlacementText13.setFormat("Times New Roman", 32);
		add(barPlacementText13);

		barPlacementText14 = new FlxText(25, barheightTotal * 13, 0, '14th', 32);
		barPlacementText14.setFormat("Times New Roman", 32);
		add(barPlacementText14);

		barPlacementText15 = new FlxText(25, barheightTotal * 14, 0, '15th', 32);
		barPlacementText15.setFormat("Times New Roman", 32);
		add(barPlacementText15);

		barPlacementText16 = new FlxText(25, barheightTotal * 15, 0, '16th', 32);
		barPlacementText16.setFormat("Times New Roman", 32);
		add(barPlacementText16);
		score1 = new FlxText(80, barheightTotal * 0, 0, '0', 32);
		score1.setFormat("Times New Roman", 32, FlxColor.BLACK, RIGHT);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			FlxTween.num(0, 12, 3, {}, updateValue);
			FlxTween.tween(score1, {x: 150, y: 0}, 3);
		});
		add(score1);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			FlxTween.tween(bar1.scale, {x: 120, y: 1}, 3);
			bar1.updateHitbox();
			FlxTween.tween(bar2.scale, {x: 20, y: 1}, 3);
			bar2.updateHitbox();
			FlxTween.tween(bar3.scale, {x: 10, y: 1}, 3);
			bar3.updateHitbox();
			FlxTween.tween(bar4.scale, {x: 700, y: 1}, 3);
			bar4.updateHitbox();
			FlxTween.tween(bar5.scale, {x: 400, y: 1}, 3);
			bar5.updateHitbox();
			FlxTween.tween(bar6.scale, {x: 200, y: 1}, 3);
			bar6.updateHitbox();
			FlxTween.tween(bar7.scale, {x: 250, y: 1}, 3);
			bar7.updateHitbox();
			FlxTween.tween(bar8.scale, {x: 300, y: 1}, 3);
			bar8.updateHitbox();
			FlxTween.tween(bar9.scale, {x: 1000, y: 1}, 3);
			bar9.updateHitbox();
			FlxTween.tween(bar10.scale, {x: 500, y: 1}, 3);
			bar10.updateHitbox();
			FlxTween.tween(bar11.scale, {x: 60, y: 1}, 3);
			bar11.updateHitbox();
			FlxTween.tween(bar12.scale, {x: 80, y: 1}, 3);
			bar12.updateHitbox();
			FlxTween.tween(bar13.scale, {x: 150, y: 1}, 3);
			bar13.updateHitbox();
			FlxTween.tween(bar14.scale, {x: 100, y: 1}, 3);
			bar14.updateHitbox();
			FlxTween.tween(bar15.scale, {x: 40, y: 1}, 3);
			bar15.updateHitbox();
			FlxTween.tween(bar16.scale, {x: 30, y: 1}, 3);
			bar16.updateHitbox();
		});
	}
	private function updateValue(value:Float):Void
	{
		score1.text = Std.string(Std.int(value));
	}
}