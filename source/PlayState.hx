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

	// will multiply by scale multiplier when scaling
	var scores:Array<Int> = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	var scoresEnd:Array<Int> = [12, 2, 1, 70, 40, 20, 25, 30, 100, 50, 6, 8, 15, 10, 4, 3];

	// text of names
	var name1 = new FlxText();
	var name2 = new FlxText();
	var name3 = new FlxText();
	var name4 = new FlxText();
	var name5 = new FlxText();
	var name6 = new FlxText();
	var name7 = new FlxText();
	var name8 = new FlxText();
	var name9 = new FlxText();
	var name10 = new FlxText();
	var name11 = new FlxText();
	var name12 = new FlxText();
	var name13 = new FlxText();
	var name14 = new FlxText();
	var name15 = new FlxText();
	var name16 = new FlxText();
	var names:Array<String> = [
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
	var barheight:Int = 40; // bar height (thats all)
	var barheightTotal:Int = Std.int(FlxG.height / 16); // height of bar (720) divided by total one bar (change if number of athletes is not 16)
	var scaleMultiplier:Int = 10; // score multiplied by score mutiplier = bar (or some shit)

	var eliminated = new FlxText(); // elimination text that pops up

	override public function create()
	{
		super.create();

		barPlacement = new FlxSprite(0, 0).makeGraphic(100, 720, FlxColor.GRAY);
		add(barPlacement);

		bar1 = new FlxSprite(100, barheightTotal * 0).makeGraphic(1, barheight, colors[0]);
		add(bar1);

		bar2 = new FlxSprite(100, barheightTotal * 1).makeGraphic(1, barheight, colors[1]);
		add(bar2);

		bar3 = new FlxSprite(100, barheightTotal * 2).makeGraphic(1, barheight, colors[2]);
		add(bar3);

		bar4 = new FlxSprite(100, barheightTotal * 3).makeGraphic(1, barheight, colors[3]);
		add(bar4);

		bar5 = new FlxSprite(100, barheightTotal * 4).makeGraphic(1, barheight, colors[4]);
		add(bar5);

		bar6 = new FlxSprite(100, barheightTotal * 5).makeGraphic(1, barheight, colors[5]);
		add(bar6);

		bar7 = new FlxSprite(100, barheightTotal * 6).makeGraphic(1, barheight, colors[6]);
		add(bar7);

		bar8 = new FlxSprite(100, barheightTotal * 7).makeGraphic(1, barheight, colors[7]);
		add(bar8);

		bar9 = new FlxSprite(100, barheightTotal * 8).makeGraphic(1, barheight, colors[8]);
		add(bar9);

		bar10 = new FlxSprite(100, barheightTotal * 9).makeGraphic(1, barheight, colors[9]);
		add(bar10);

		bar11 = new FlxSprite(100, barheightTotal * 10).makeGraphic(1, barheight, colors[10]);
		add(bar11);

		bar12 = new FlxSprite(100, barheightTotal * 11).makeGraphic(1, barheight, colors[11]);
		add(bar12);

		bar13 = new FlxSprite(100, barheightTotal * 12).makeGraphic(1, barheight, colors[12]);
		add(bar13);

		bar14 = new FlxSprite(100, barheightTotal * 13).makeGraphic(1, barheight, colors[13]);
		add(bar14);

		bar15 = new FlxSprite(100, barheightTotal * 14).makeGraphic(1, barheight, colors[14]);
		add(bar15);

		bar16 = new FlxSprite(100, barheightTotal * 15).makeGraphic(1, barheight, colors[15]);
		add(bar16);
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
		// names
		name1 = new FlxText(100, barheightTotal * 0, 0, names[0], 32);
		name1.setFormat("Times New Roman", 32, colors[0]);
		add(name1);

		name2 = new FlxText(100, barheightTotal * 1, 0, names[1], 32);
		name2.setFormat("Times New Roman", 32, colors[1]);
		add(name2);

		name3 = new FlxText(100, barheightTotal * 2, 0, names[2], 32);
		name3.setFormat("Times New Roman", 32, colors[2]);
		add(name3);

		name4 = new FlxText(100, barheightTotal * 3, 0, names[3], 32);
		name4.setFormat("Times New Roman", 32, colors[3]);
		add(name4);

		name5 = new FlxText(100, barheightTotal * 4, 0, names[4], 32);
		name5.setFormat("Times New Roman", 32, colors[4]);
		add(name5);

		name6 = new FlxText(100, barheightTotal * 5, 0, names[5], 32);
		name6.setFormat("Times New Roman", 32, colors[5]);
		add(name6);

		name7 = new FlxText(100, barheightTotal * 6, 0, names[6], 32);
		name7.setFormat("Times New Roman", 32, colors[6]);
		add(name7);

		name8 = new FlxText(100, barheightTotal * 7, 0, names[7], 32);
		name8.setFormat("Times New Roman", 32, colors[7]);
		add(name8);

		name9 = new FlxText(100, barheightTotal * 8, 0, names[8], 32);
		name9.setFormat("Times New Roman", 32, colors[8]);
		add(name9);

		name10 = new FlxText(100, barheightTotal * 9, 0, names[9], 32);
		name10.setFormat("Times New Roman", 32, colors[9]);
		add(name10);

		name11 = new FlxText(100, barheightTotal * 10, 0, names[10], 32);
		name11.setFormat("Times New Roman", 32, colors[10]);
		add(name11);

		name12 = new FlxText(100, barheightTotal * 11, 0, names[11], 32);
		name12.setFormat("Times New Roman", 32, colors[11]);
		add(name12);

		name13 = new FlxText(100, barheightTotal * 12, 0, names[12], 32);
		name13.setFormat("Times New Roman", 32, colors[12]);
		add(name13);

		name14 = new FlxText(100, barheightTotal * 13, 0, names[13], 32);
		name14.setFormat("Times New Roman", 32, colors[13]);
		add(name14);

		name15 = new FlxText(100, barheightTotal * 14, 0, names[14], 32);
		name15.setFormat("Times New Roman", 32, colors[14]);
		add(name15);

		name16 = new FlxText(100, barheightTotal * 15, 0, names[15], 32);
		name16.setFormat("Times New Roman", 32, 0xFF008000);
		add(name16);
		// scores (this is a fucking mess lol)
		score1 = new FlxText(80, barheightTotal * 0, 0, Std.string(scores[0]), 32);
		score1.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer1:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[0], 5, {}, updateValue1);
			FlxTween.tween(score1, {x: 60 + (scoresEnd[0] * scaleMultiplier), y: barheightTotal * 0}, 5);
		});
		add(score1);
		// score seperator
		score2 = new FlxText(80, barheightTotal * 1, 0, Std.string(scores[1]), 32);
		score2.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer2:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[1], 5, {}, updateValue2);
			FlxTween.tween(score2, {x: 80 + (scoresEnd[1] * scaleMultiplier), y: barheightTotal * 1}, 5);
		});
		add(score2);
		// score seperator
		score3 = new FlxText(80, barheightTotal * 2, 0, Std.string(scores[2]), 32);
		score3.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer3:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[2], 5, {}, updateValue3);
			FlxTween.tween(score3, {x: 85 + (scoresEnd[2] * scaleMultiplier), y: barheightTotal * 2}, 5);
		});
		add(score3);
		// score seperator
		score4 = new FlxText(80, barheightTotal * 3, 0, Std.string(scores[3]), 32);
		score4.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer4:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[3], 5, {}, updateValue4);
			FlxTween.tween(score4, {x: 60 + (scoresEnd[3] * scaleMultiplier), y: barheightTotal * 3}, 5);
		});
		add(score4);
		// score seperator
		score5 = new FlxText(80, barheightTotal * 4, 0, Std.string(scores[4]), 32);
		score5.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer5:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[4], 5, {}, updateValue5);
			FlxTween.tween(score5, {x: 60 + (scoresEnd[4] * scaleMultiplier), y: barheightTotal * 4}, 5);
		});
		add(score5);
		// score seperator
		score6 = new FlxText(80, barheightTotal * 5, 0, Std.string(scores[5]), 32);
		score6.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer6:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[5], 5, {}, updateValue6);
			FlxTween.tween(score6, {x: 60 + (scoresEnd[5] * scaleMultiplier), y: barheightTotal * 5}, 5);
		});
		add(score6);
		// score seperator
		score7 = new FlxText(80, barheightTotal * 6, 0, Std.string(scores[6]), 32);
		score7.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer7:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[6], 5, {}, updateValue7);
			FlxTween.tween(score7, {x: 60 + (scoresEnd[6] * scaleMultiplier), y: barheightTotal * 6}, 5);
		});
		add(score7);
		// score seperator
		score8 = new FlxText(80, barheightTotal * 7, 0, Std.string(scores[7]), 32);
		score8.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer8:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[7], 5, {}, updateValue8);
			FlxTween.tween(score8, {x: 60 + (scoresEnd[7] * scaleMultiplier), y: barheightTotal * 7}, 5);
		});
		add(score8);
		// score seperator
		score9 = new FlxText(80, barheightTotal * 8, 0, Std.string(scores[8]), 32);
		score9.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer9:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[8], 5, {}, updateValue9);
			FlxTween.tween(score9, {x: 40 + (scoresEnd[8] * scaleMultiplier), y: barheightTotal * 8}, 5);
		});
		add(score9);
		// score seperator
		score10 = new FlxText(80, barheightTotal * 9, 0, Std.string(scores[9]), 32);
		score10.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer10:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[9], 5, {}, updateValue10);
			FlxTween.tween(score10, {x: 60 + (scoresEnd[9] * scaleMultiplier), y: barheightTotal * 9}, 5);
		});
		add(score10);
		// score seperator
		score11 = new FlxText(80, barheightTotal * 10, 0, Std.string(scores[10]), 32);
		score11.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer11:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[10], 5, {}, updateValue11);
			FlxTween.tween(score11, {x: 80 + (scoresEnd[10] * scaleMultiplier), y: barheightTotal * 10}, 5);
		});
		add(score11);
		// score seperator
		score12 = new FlxText(80, barheightTotal * 11, 0, Std.string(scores[11]), 32);
		score12.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer12:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[11], 5, {}, updateValue12);
			FlxTween.tween(score12, {x: 80 + (scoresEnd[11] * scaleMultiplier), y: barheightTotal * 11}, 5);
		});
		add(score12);
		// score seperator
		score13 = new FlxText(80, barheightTotal * 12, 0, Std.string(scores[12]), 32);
		score13.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer13:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[12], 5, {}, updateValue13);
			FlxTween.tween(score13, {x: 60 + (scoresEnd[12] * scaleMultiplier), y: barheightTotal * 12}, 5);
		});
		add(score13);
		// score seperator
		score14 = new FlxText(80, barheightTotal * 13, 0, Std.string(scores[13]), 32);
		score14.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer14:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[13], 5, {}, updateValue14);
			FlxTween.tween(score14, {x: 60 + (scoresEnd[13] * scaleMultiplier), y: barheightTotal * 13}, 5);
		});
		add(score14);
		// score seperator
		score15 = new FlxText(80, barheightTotal * 14, 0, Std.string(scores[14]), 32);
		score15.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer15:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[14], 5, {}, updateValue15);
			FlxTween.tween(score15, {x: 80 + (scoresEnd[14] * scaleMultiplier), y: barheightTotal * 14}, 5);
		});
		add(score15);
		// score seperator
		score16 = new FlxText(80, barheightTotal * 15, 0, Std.string(scores[15]), 32);
		score16.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer16:FlxTimer)
		{
			FlxTween.num(0, scoresEnd[15], 5, {}, updateValue16);
			FlxTween.tween(score16, {x: 80 + (scoresEnd[15] * scaleMultiplier), y: barheightTotal * 15}, 5);
		});
		add(score16);
		// score seperator
		new FlxTimer().start(12.5, function(eliminationTimer:FlxTimer)
		{
			eliminated = new FlxText(150, barheightTotal * 15, 0, 'ELIMINATED', 32);
			eliminated.setFormat("Impact", 32, colors[5]);
			add(eliminated);
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		new FlxTimer().start(3, function(scoreTimer:FlxTimer)
		{
			FlxTween.tween(bar1.scale, {x: scoresEnd[0] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar1.updateHitbox();
			FlxTween.tween(bar2.scale, {x: scoresEnd[1] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar2.updateHitbox();
			FlxTween.tween(bar3.scale, {x: scoresEnd[2] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar3.updateHitbox();
			FlxTween.tween(bar4.scale, {x: scoresEnd[3] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar4.updateHitbox();
			FlxTween.tween(bar5.scale, {x: scoresEnd[4] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar5.updateHitbox();
			FlxTween.tween(bar6.scale, {x: scoresEnd[5] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar6.updateHitbox();
			FlxTween.tween(bar7.scale, {x: scoresEnd[6] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar7.updateHitbox();
			FlxTween.tween(bar8.scale, {x: scoresEnd[7] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar8.updateHitbox();
			FlxTween.tween(bar9.scale, {x: scoresEnd[8] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar9.updateHitbox();
			FlxTween.tween(bar10.scale, {x: scoresEnd[9] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar10.updateHitbox();
			FlxTween.tween(bar11.scale, {x: scoresEnd[10] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar11.updateHitbox();
			FlxTween.tween(bar12.scale, {x: scoresEnd[11] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar12.updateHitbox();
			FlxTween.tween(bar13.scale, {x: scoresEnd[12] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar13.updateHitbox();
			FlxTween.tween(bar14.scale, {x: scoresEnd[13] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar14.updateHitbox();
			FlxTween.tween(bar15.scale, {x: scoresEnd[14] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar15.updateHitbox();
			FlxTween.tween(bar16.scale, {x: scoresEnd[15] * scaleMultiplier, y: 1}, 2.5, {ease: FlxEase.linear});
			bar16.updateHitbox();
			FlxTween.tween(name1, {x: 100 + (scoresEnd[0] * scaleMultiplier), y: barheightTotal * 0}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name2, {x: 100 + (scoresEnd[1] * scaleMultiplier), y: barheightTotal * 1}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name3, {x: 100 + (scoresEnd[2] * scaleMultiplier), y: barheightTotal * 2}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name4, {x: 100 + (scoresEnd[3] * scaleMultiplier), y: barheightTotal * 3}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name5, {x: 100 + (scoresEnd[4] * scaleMultiplier), y: barheightTotal * 4}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name6, {x: 100 + (scoresEnd[5] * scaleMultiplier), y: barheightTotal * 5}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name7, {x: 100 + (scoresEnd[6] * scaleMultiplier), y: barheightTotal * 6}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name8, {x: 100 + (scoresEnd[7] * scaleMultiplier), y: barheightTotal * 7}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name9, {x: 100 + (scoresEnd[8] * scaleMultiplier), y: barheightTotal * 8}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name10, {x: 100 + (scoresEnd[9] * scaleMultiplier), y: barheightTotal * 9}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name11, {x: 100 + (scoresEnd[10] * scaleMultiplier), y: barheightTotal * 10}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name12, {x: 100 + (scoresEnd[11] * scaleMultiplier), y: barheightTotal * 11}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name13, {x: 100 + (scoresEnd[12] * scaleMultiplier), y: barheightTotal * 12}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name14, {x: 100 + (scoresEnd[13] * scaleMultiplier), y: barheightTotal * 13}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name15, {x: 100 + (scoresEnd[14] * scaleMultiplier), y: barheightTotal * 14}, 2.5, {ease: FlxEase.linear});
			FlxTween.tween(name16, {x: 100 + (scoresEnd[15] * scaleMultiplier), y: barheightTotal * 15}, 2.5, {ease: FlxEase.linear});
		});
		new FlxTimer().start(8.5, function(placementTimer:FlxTimer)
		{
			FlxTween.tween(bar1, {x: 100, y: barheightTotal * 8}, 2);
			FlxTween.tween(name1, {x: 100 + (scoresEnd[0] * scaleMultiplier), y: barheightTotal * 8}, 2);
			FlxTween.tween(score1, {x: 60 + (scoresEnd[0] * scaleMultiplier), y: barheightTotal * 8}, 2);
			FlxTween.tween(bar2, {x: 100, y: barheightTotal * 14}, 2);
			FlxTween.tween(name2, {x: 100 + (scoresEnd[1] * scaleMultiplier), y: barheightTotal * 14}, 2);
			FlxTween.tween(score2, {x: 80 + (scoresEnd[1] * scaleMultiplier), y: barheightTotal * 14}, 2);
			FlxTween.tween(bar3, {x: 100, y: barheightTotal * 15}, 2);
			FlxTween.tween(name3, {x: 100 + (scoresEnd[2] * scaleMultiplier), y: barheightTotal * 15}, 2);
			FlxTween.tween(score3, {x: 85 + (scoresEnd[2] * scaleMultiplier), y: barheightTotal * 15}, 2);
			FlxTween.tween(bar4, {x: 100, y: barheightTotal * 1}, 2);
			FlxTween.tween(name4, {x: 100 + (scoresEnd[3] * scaleMultiplier), y: barheightTotal * 1}, 2);
			FlxTween.tween(score4, {x: 60 + (scoresEnd[3] * scaleMultiplier), y: barheightTotal * 1}, 2);
			FlxTween.tween(bar5, {x: 100, y: barheightTotal * 3}, 2);
			FlxTween.tween(name5, {x: 100 + (scoresEnd[4] * scaleMultiplier), y: barheightTotal * 3}, 2);
			FlxTween.tween(score5, {x: 60 + (scoresEnd[4] * scaleMultiplier), y: barheightTotal * 3}, 2);
			FlxTween.tween(bar6, {x: 100, y: barheightTotal * 6}, 2);
			FlxTween.tween(name6, {x: 100 + (scoresEnd[5] * scaleMultiplier), y: barheightTotal * 6}, 2);
			FlxTween.tween(score6, {x: 60 + (scoresEnd[5] * scaleMultiplier), y: barheightTotal * 6}, 2);
			FlxTween.tween(bar7, {x: 100, y: barheightTotal * 5}, 2);
			FlxTween.tween(name7, {x: 100 + (scoresEnd[6] * scaleMultiplier), y: barheightTotal * 5}, 2);
			FlxTween.tween(score7, {x: 60 + (scoresEnd[6] * scaleMultiplier), y: barheightTotal * 5}, 2);
			FlxTween.tween(bar8, {x: 100, y: barheightTotal * 4}, 2);
			FlxTween.tween(name8, {x: 100 + (scoresEnd[7] * scaleMultiplier), y: barheightTotal * 4}, 2);
			FlxTween.tween(score8, {x: 60 + (scoresEnd[7] * scaleMultiplier), y: barheightTotal * 4}, 2);
			FlxTween.tween(bar9, {x: 100, y: barheightTotal * 0}, 2);
			FlxTween.tween(name9, {x: 100 + (scoresEnd[8] * scaleMultiplier), y: barheightTotal * 0}, 2);
			FlxTween.tween(score9, {x: 40 + (scoresEnd[8] * scaleMultiplier), y: barheightTotal * 0}, 2);
			FlxTween.tween(bar10, {x: 100, y: barheightTotal * 2}, 2);
			FlxTween.tween(name10, {x: 100 + (scoresEnd[9] * scaleMultiplier), y: barheightTotal * 2}, 2);
			FlxTween.tween(score10, {x: 60 + (scoresEnd[9] * scaleMultiplier), y: barheightTotal * 2}, 2);
			FlxTween.tween(bar11, {x: 100, y: barheightTotal * 11}, 2);
			FlxTween.tween(name11, {x: 100 + (scoresEnd[10] * scaleMultiplier), y: barheightTotal * 11}, 2);
			FlxTween.tween(score11, {x: 80 + (scoresEnd[10] * scaleMultiplier), y: barheightTotal * 11}, 2);
			FlxTween.tween(bar12, {x: 100, y: barheightTotal * 10}, 2);
			FlxTween.tween(name12, {x: 100 + (scoresEnd[11] * scaleMultiplier), y: barheightTotal * 10}, 2);
			FlxTween.tween(score12, {x: 80 + (scoresEnd[11] * scaleMultiplier), y: barheightTotal * 10}, 2);
			FlxTween.tween(bar13, {x: 100, y: barheightTotal * 7}, 2);
			FlxTween.tween(name13, {x: 100 + (scoresEnd[12] * scaleMultiplier), y: barheightTotal * 7}, 2);
			FlxTween.tween(score13, {x: 60 + (scoresEnd[12] * scaleMultiplier), y: barheightTotal * 7}, 2);
			FlxTween.tween(bar14, {x: 100, y: barheightTotal * 9}, 2);
			FlxTween.tween(name14, {x: 100 + (scoresEnd[13] * scaleMultiplier), y: barheightTotal * 9}, 2);
			FlxTween.tween(score14, {x: 60 + (scoresEnd[13] * scaleMultiplier), y: barheightTotal * 9}, 2);
			FlxTween.tween(bar15, {x: 100, y: barheightTotal * 12}, 2);
			FlxTween.tween(name15, {x: 100 + (scoresEnd[14] * scaleMultiplier), y: barheightTotal * 12}, 2);
			FlxTween.tween(score15, {x: 80 + (scoresEnd[14] * scaleMultiplier), y: barheightTotal * 12}, 2);
			FlxTween.tween(bar16, {x: 100, y: barheightTotal * 13}, 2);
			FlxTween.tween(name16, {x: 100 + (scoresEnd[15] * scaleMultiplier), y: barheightTotal * 13}, 2);
			FlxTween.tween(score16, {x: 80 + (scoresEnd[15] * scaleMultiplier), y: barheightTotal * 13}, 2);
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