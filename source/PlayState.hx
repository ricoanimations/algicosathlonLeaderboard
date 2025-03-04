package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.NumTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.utils.Assets;

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
	var bars = new FlxSprite();
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
	var scores = new FlxText();

	// will multiply by scale multiplier when scaling
	var scoresList:Array<Int> = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	var scoresEnd:Array<Int> = [12, 2, 1, 70, 40, 20, 25, 30, 100, 50, 6, 8, 15, 10, 4, 3];

	// text of namesList
	var names = new FlxText();
	var namesList:Array<String> = [
		'Magenta',
		'Purple',
		'Tan',
		'Orange',
		'Lime',
		'Red',
		'Blue',
		'Lavender',
		'Yellow',
		'Brown',
		'Gray',
		'Navy',
		'Olive',
		'Pink',
		'Cyan',
		'Green'
	];
	var totalAthletes:Int = 16;

	var colors:Array<FlxColor> = [
		0xFFFF29FF, 0xFF761EFF, 0xFFCEB48E, 0xFFFF7F00, 0xFF00D800, 0xFFFF1A00, 0xFF0074FF, 0xFFBD79FF, 0xFFFFF000, 0xFF692900, 0xFF787878, 0xFF00207A,
		0xFF787100, 0xFFFF7BD2, 0xFF00E7FF, 0xFF006200
	];

	// other stuff
	var barheight:Int = Std.int((FlxG.height / 16) * (8 / 9)); // bar height (thats all)
	var barheightTotal:Int = Std.int(FlxG.height / 16); // height of bar (720) divided by total one bar (change if number of athletes is not 16)
	var scaleMultiplier:Int = 10; // score multiplied by score mutiplier = bar (or some shit)

	var eliminated = new FlxText(); // elimination text that pops up

	override public function create()
	{
		super.create();

		barPlacement = new FlxSprite(0, 0).makeGraphic(100, 720, FlxColor.GRAY);
		add(barPlacement);

		for (i in 0...namesList.length)
		{
			bars = new FlxSprite(100, barheightTotal * i);
			bars.makeGraphic(1, barheight, colors[i]);
			add(bars);

			names = new FlxText(100, barheightTotal * i, 0, namesList[i], 32);
			names.setFormat("Times New Roman", 32, colors[i]);
			add(names);

			scores = new FlxText(80, barheightTotal * i, 0, Std.string(scoresList[i]), 32);
			scores.setFormat("Times New Roman", 32, FlxColor.BLACK);
			new FlxTimer().start(3, function(scoreTimer1:FlxTimer)
			{
				FlxTween.num(0, scoresEnd[i], 5, {ease: FlxEase.linear}, updateValue1);
				FlxTween.tween(scores, {x: 60 + (scoresEnd[i] * scaleMultiplier), y: barheightTotal * i}, 5);
			});
			add(scores);
		}

		trace(namesList.length);

		barPlacementText1 = new FlxText(25, barheightTotal * 0, 0, '1st', 32);
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

		// scoresList (this is a fucking mess lol)
		// score seperator
		new FlxTimer().start(12.5, function(eliminationTimer:FlxTimer)
		{
			eliminated = new FlxText(150, barheightTotal * 15, 0, 'ELIMINATED', 32);
			eliminated.setFormat("Impact", 32, FlxColor.RED);
			add(eliminated);
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			for (i in 0...namesList.length)
			{
				FlxTween.tween(bars.scale, {x: scoresEnd[i] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
				bars.updateHitbox();
				FlxTween.tween(names, {x: 100 + (scoresEnd[i] * scaleMultiplier), y: barheightTotal * i}, 2.5, {ease: FlxEase.linear});

				new FlxTimer().start(5.5, function(placementTimer:FlxTimer)
				{
					FlxTween.tween(bars, {x: 100, y: barheightTotal * i}, 2);
					FlxTween.tween(names, {x: 100 + (scoresEnd[i] * scaleMultiplier), y: barheightTotal * i}, 2);
				});
			}
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