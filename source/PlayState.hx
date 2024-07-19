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
	// gray bar to show placement
	var barPlacement = new FlxSprite();
	// score bars
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
	// placement number texts
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
	// score number texts
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

	// make sure to multiply by ten when scaling
	var scorenum1:Int = 12;
	var scorenum2:Int = 2;
	var scorenum3:Int = 1;
	var scorenum4:Int = 70;
	var scorenum5:Int = 40;
	var scorenum6:Int = 20;
	var scorenum7:Int = 25;
	var scorenum8:Int = 30;
	var scorenum9:Int = 100;
	var scorenum10:Int = 50;
	var scorenum11:Int = 6;
	var scorenum12:Int = 8;
	var scorenum13:Int = 15;
	var scorenum14:Int = 10;
	var scorenum15:Int = 4;
	var scorenum16:Int = 3;

	var barheightTotal:Int = 45; // height of bar (720) divided by total one bar (change if number of athletes is not 16)
	
	override public function create()
	{
		super.create();

		barPlacement = new FlxSprite(0, 0).makeGraphic(100, 720, FlxColor.GRAY);
		add(barPlacement);

		bar1 = new FlxSprite(100, barheightTotal * 0).makeGraphic(1, 40, FlxColor.MAGENTA);
		add(bar1);

		bar2 = new FlxSprite(100, barheightTotal * 1).makeGraphic(1, 40, FlxColor.PURPLE);
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
		// scores (this is a fucking mess lol)
		score1 = new FlxText(80, barheightTotal * 0, 0, '0', 32);
		score1.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer1:FlxTimer)
		{
			FlxTween.num(0, scorenum1, 3, {}, updateValue1);
			FlxTween.tween(score1, {x: 60 + (scorenum1 * 10), y: barheightTotal * 0}, 3);
		});
		add(score1);
		// score seperator
		score2 = new FlxText(80, barheightTotal * 1, 0, '0', 32);
		score2.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer2:FlxTimer)
		{
			FlxTween.num(0, scorenum2, 3, {}, updateValue2);
			FlxTween.tween(score2, {x: 80 + (scorenum2 * 10), y: barheightTotal * 1}, 3);
		});
		add(score2);
		// score seperator
		score3 = new FlxText(80, barheightTotal * 2, 0, '0', 32);
		score3.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer3:FlxTimer)
		{
			FlxTween.num(0, scorenum3, 3, {}, updateValue3);
			FlxTween.tween(score3, {x: 85 + (scorenum3 * 10), y: barheightTotal * 2}, 3);
		});
		add(score3);
		// score seperator
		score4 = new FlxText(80, barheightTotal * 3, 0, '0', 32);
		score4.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer4:FlxTimer)
		{
			FlxTween.num(0, scorenum4, 3, {}, updateValue4);
			FlxTween.tween(score4, {x: 60 + (scorenum4 * 10), y: barheightTotal * 3}, 3);
		});
		add(score4);
		// score seperator
		score5 = new FlxText(80, barheightTotal * 4, 0, '0', 32);
		score5.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer5:FlxTimer)
		{
			FlxTween.num(0, scorenum5, 3, {}, updateValue5);
			FlxTween.tween(score5, {x: 60 + (scorenum5 * 10), y: barheightTotal * 4}, 3);
		});
		add(score5);
		// score seperator
		score6 = new FlxText(80, barheightTotal * 5, 0, '0', 32);
		score6.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer6:FlxTimer)
		{
			FlxTween.num(0, scorenum6, 3, {}, updateValue6);
			FlxTween.tween(score6, {x: 60 + (scorenum6 * 10), y: barheightTotal * 5}, 3);
		});
		add(score6);
		// score seperator
		score7 = new FlxText(80, barheightTotal * 6, 0, '0', 32);
		score7.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer7:FlxTimer)
		{
			FlxTween.num(0, scorenum7, 3, {}, updateValue7);
			FlxTween.tween(score7, {x: 60 + (scorenum7 * 10), y: barheightTotal * 6}, 3);
		});
		add(score7);
		// score seperator
		score8 = new FlxText(80, barheightTotal * 7, 0, '0', 32);
		score8.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer8:FlxTimer)
		{
			FlxTween.num(0, scorenum8, 3, {}, updateValue8);
			FlxTween.tween(score8, {x: 60 + (scorenum8 * 10), y: barheightTotal * 7}, 3);
		});
		add(score8);
		// score seperator
		score9 = new FlxText(80, barheightTotal * 8, 0, '0', 32);
		score9.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer9:FlxTimer)
		{
			FlxTween.num(0, scorenum9, 3, {}, updateValue9);
			FlxTween.tween(score9, {x: 40 + (scorenum9 * 10), y: barheightTotal * 8}, 3);
		});
		add(score9);
		// score seperator
		score10 = new FlxText(80, barheightTotal * 9, 0, '0', 32);
		score10.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer10:FlxTimer)
		{
			FlxTween.num(0, scorenum10, 3, {}, updateValue10);
			FlxTween.tween(score10, {x: 60 + (scorenum10 * 10), y: barheightTotal * 9}, 3);
		});
		add(score10);
		// score seperator
		score11 = new FlxText(80, barheightTotal * 10, 0, '0', 32);
		score11.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer11:FlxTimer)
		{
			FlxTween.num(0, scorenum11, 3, {}, updateValue11);
			FlxTween.tween(score11, {x: 80 + (scorenum11 * 10), y: barheightTotal * 10}, 3);
		});
		add(score11);
		// score seperator
		score12 = new FlxText(80, barheightTotal * 11, 0, '0', 32);
		score12.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer12:FlxTimer)
		{
			FlxTween.num(0, scorenum12, 3, {}, updateValue12);
			FlxTween.tween(score12, {x: 80 + (scorenum12 * 10), y: barheightTotal * 11}, 3);
		});
		add(score12);
		// score seperator
		score13 = new FlxText(80, barheightTotal * 12, 0, '0', 32);
		score13.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer13:FlxTimer)
		{
			FlxTween.num(0, scorenum13, 3, {}, updateValue13);
			FlxTween.tween(score13, {x: 60 + (scorenum13 * 10), y: barheightTotal * 12}, 3);
		});
		add(score13);
		// score seperator
		score14 = new FlxText(80, barheightTotal * 13, 0, '0', 32);
		score14.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer14:FlxTimer)
		{
			FlxTween.num(0, scorenum14, 3, {}, updateValue14);
			FlxTween.tween(score14, {x: 60 + (scorenum14 * 10), y: barheightTotal * 13}, 3);
		});
		add(score14);
		// score seperator
		score15 = new FlxText(80, barheightTotal * 14, 0, '0', 32);
		score15.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer15:FlxTimer)
		{
			FlxTween.num(0, scorenum15, 3, {}, updateValue15);
			FlxTween.tween(score15, {x: 80 + (scorenum15 * 10), y: barheightTotal * 14}, 3);
		});
		add(score15);
		// score seperator
		score16 = new FlxText(80, barheightTotal * 15, 0, '0', 32);
		score16.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer16:FlxTimer)
		{
			FlxTween.num(0, scorenum16, 3, {}, updateValue16);
			FlxTween.tween(score16, {x: 80 + (scorenum16 * 10), y: barheightTotal * 15}, 3);
		});
		add(score16);
		// score seperator
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			FlxTween.tween(bar1.scale, {x: scorenum1 * 10, y: 1}, 3);
			bar1.updateHitbox();
			FlxTween.tween(bar2.scale, {x: scorenum2 * 10, y: 1}, 3);
			bar2.updateHitbox();
			FlxTween.tween(bar3.scale, {x: scorenum3 * 10, y: 1}, 3);
			bar3.updateHitbox();
			FlxTween.tween(bar4.scale, {x: scorenum4 * 10, y: 1}, 3);
			bar4.updateHitbox();
			FlxTween.tween(bar5.scale, {x: scorenum5 * 10, y: 1}, 3);
			bar5.updateHitbox();
			FlxTween.tween(bar6.scale, {x: scorenum6 * 10, y: 1}, 3);
			bar6.updateHitbox();
			FlxTween.tween(bar7.scale, {x: scorenum7 * 10, y: 1}, 3);
			bar7.updateHitbox();
			FlxTween.tween(bar8.scale, {x: scorenum8 * 10, y: 1}, 3);
			bar8.updateHitbox();
			FlxTween.tween(bar9.scale, {x: scorenum9 * 10, y: 1}, 3);
			bar9.updateHitbox();
			FlxTween.tween(bar10.scale, {x: scorenum10 * 10, y: 1}, 3);
			bar10.updateHitbox();
			FlxTween.tween(bar11.scale, {x: scorenum11 * 10, y: 1}, 3);
			bar11.updateHitbox();
			FlxTween.tween(bar12.scale, {x: scorenum12 * 10, y: 1}, 3);
			bar12.updateHitbox();
			FlxTween.tween(bar13.scale, {x: scorenum13 * 10, y: 1}, 3);
			bar13.updateHitbox();
			FlxTween.tween(bar14.scale, {x: scorenum14 * 10, y: 1}, 3);
			bar14.updateHitbox();
			FlxTween.tween(bar15.scale, {x: scorenum15 * 10, y: 1}, 3);
			bar15.updateHitbox();
			FlxTween.tween(bar16.scale, {x: scorenum16 * 10, y: 1}, 3);
			bar16.updateHitbox();
		});
	}
	private function updateValue1(value1:Float):Void
	{
		score1.text = Std.string(Std.int(value1));
	}

	private function updateValue2(value2:Float):Void
	{
		score2.text = Std.string(Std.int(value2));
	}

	private function updateValue3(value3:Float):Void
	{
		score3.text = Std.string(Std.int(value3));
	}

	private function updateValue4(value4:Float):Void
	{
		score4.text = Std.string(Std.int(value4));
	}

	private function updateValue5(value5:Float):Void
	{
		score5.text = Std.string(Std.int(value5));
	}

	private function updateValue6(value6:Float):Void
	{
		score6.text = Std.string(Std.int(value6));
	}

	private function updateValue7(value7:Float):Void
	{
		score7.text = Std.string(Std.int(value7));
	}

	private function updateValue8(value8:Float):Void
	{
		score8.text = Std.string(Std.int(value8));
	}

	private function updateValue9(value9:Float):Void
	{
		score9.text = Std.string(Std.int(value9));
	}

	private function updateValue10(value10:Float):Void
	{
		score10.text = Std.string(Std.int(value10));
	}

	private function updateValue11(value11:Float):Void
	{
		score11.text = Std.string(Std.int(value11));
	}

	private function updateValue12(value12:Float):Void
	{
		score12.text = Std.string(Std.int(value12));
	}

	private function updateValue13(value13:Float):Void
	{
		score13.text = Std.string(Std.int(value13));
	}

	private function updateValue14(value14:Float):Void
	{
		score14.text = Std.string(Std.int(value14));
	}

	private function updateValue15(value15:Float):Void
	{
		score15.text = Std.string(Std.int(value15));
	}

	private function updateValue16(value16:Float):Void
	{
		score16.text = Std.string(Std.int(value16));
	}
}