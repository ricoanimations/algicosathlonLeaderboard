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

	// other stuff
	var barheightTotal:Int = 45; // height of bar (720) divided by total one bar (change if number of athletes is not 16)
	var scaleMultiplier:Int = 10; // score multiplied by score mutiplier = bar (or some shit)

	var eliminated = new FlxText(); // elimination text that pops up

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

		bar14 = new FlxSprite(100, barheightTotal * 13).makeGraphic(1, 40, 0xFFFF80FF);
		add(bar14);

		bar15 = new FlxSprite(100, barheightTotal * 14).makeGraphic(1, 40, 0xFF00FFFF);
		add(bar15);

		bar16 = new FlxSprite(100, barheightTotal * 15).makeGraphic(1, 40, 0xFF006400);
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
		name1 = new FlxText(100, barheightTotal * 0, 0, 'Magenta', 32);
		name1.setFormat("Times New Roman", 32, FlxColor.MAGENTA);
		add(name1);

		name2 = new FlxText(100, barheightTotal * 1, 0, 'Purple', 32);
		name2.setFormat("Times New Roman", 32, FlxColor.PURPLE);
		add(name2);

		name3 = new FlxText(100, barheightTotal * 2, 0, 'Tan', 32);
		name3.setFormat("Times New Roman", 32, 0xFFD2B48C);
		add(name3);

		name4 = new FlxText(100, barheightTotal * 3, 0, 'Orange', 32);
		name4.setFormat("Times New Roman", 32, FlxColor.ORANGE);
		add(name4);

		name5 = new FlxText(100, barheightTotal * 4, 0, 'Lime', 32);
		name5.setFormat("Times New Roman", 32, FlxColor.LIME);
		add(name5);

		name6 = new FlxText(100, barheightTotal * 5, 0, 'Red', 32);
		name6.setFormat("Times New Roman", 32, FlxColor.RED);
		add(name6);

		name7 = new FlxText(100, barheightTotal * 6, 0, 'Blue', 32);
		name7.setFormat("Times New Roman", 32, FlxColor.BLUE);
		add(name7);

		name8 = new FlxText(100, barheightTotal * 7, 0, 'Lavender', 32);
		name8.setFormat("Times New Roman", 32, 0xFFC080FF);
		add(name8);

		name9 = new FlxText(100, barheightTotal * 8, 0, 'Yellow', 32);
		name9.setFormat("Times New Roman", 32, FlxColor.YELLOW);
		add(name9);

		name10 = new FlxText(100, barheightTotal * 9, 0, 'Brown', 32);
		name10.setFormat("Times New Roman", 32, FlxColor.BROWN);
		add(name10);

		name11 = new FlxText(100, barheightTotal * 10, 0, 'Gray', 32);
		name11.setFormat("Times New Roman", 32, 0xFF646464);
		add(name11);

		name12 = new FlxText(100, barheightTotal * 11, 0, 'Navy', 32);
		name12.setFormat("Times New Roman", 32, 0xFF000080);
		add(name12);

		name13 = new FlxText(100, barheightTotal * 12, 0, 'Olive', 32);
		name13.setFormat("Times New Roman", 32, 0xFF808000);
		add(name13);

		name14 = new FlxText(100, barheightTotal * 13, 0, 'Pink', 32);
		name14.setFormat("Times New Roman", 32, 0xFFFF80FF);
		add(name14);

		name15 = new FlxText(100, barheightTotal * 14, 0, 'Cyan', 32);
		name15.setFormat("Times New Roman", 32, 0xFF00FFFF);
		add(name15);

		name16 = new FlxText(100, barheightTotal * 15, 0, 'Green', 32);
		name16.setFormat("Times New Roman", 32, 0xFF008000);
		add(name16);
		// scores (this is a fucking mess lol)
		score1 = new FlxText(80, barheightTotal * 0, 0, '0', 32);
		score1.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer1:FlxTimer)
		{
			FlxTween.num(0, scorenum1, 5, {}, updateValue1);
			FlxTween.tween(score1, {x: 60 + (scorenum1 * scaleMultiplier), y: barheightTotal * 0}, 5);
		});
		add(score1);
		// score seperator
		score2 = new FlxText(80, barheightTotal * 1, 0, '0', 32);
		score2.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer2:FlxTimer)
		{
			FlxTween.num(0, scorenum2, 5, {}, updateValue2);
			FlxTween.tween(score2, {x: 80 + (scorenum2 * scaleMultiplier), y: barheightTotal * 1}, 5);
		});
		add(score2);
		// score seperator
		score3 = new FlxText(80, barheightTotal * 2, 0, '0', 32);
		score3.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer3:FlxTimer)
		{
			FlxTween.num(0, scorenum3, 5, {}, updateValue3);
			FlxTween.tween(score3, {x: 85 + (scorenum3 * scaleMultiplier), y: barheightTotal * 2}, 5);
		});
		add(score3);
		// score seperator
		score4 = new FlxText(80, barheightTotal * 3, 0, '0', 32);
		score4.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer4:FlxTimer)
		{
			FlxTween.num(0, scorenum4, 5, {}, updateValue4);
			FlxTween.tween(score4, {x: 60 + (scorenum4 * scaleMultiplier), y: barheightTotal * 3}, 5);
		});
		add(score4);
		// score seperator
		score5 = new FlxText(80, barheightTotal * 4, 0, '0', 32);
		score5.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer5:FlxTimer)
		{
			FlxTween.num(0, scorenum5, 5, {}, updateValue5);
			FlxTween.tween(score5, {x: 60 + (scorenum5 * scaleMultiplier), y: barheightTotal * 4}, 5);
		});
		add(score5);
		// score seperator
		score6 = new FlxText(80, barheightTotal * 5, 0, '0', 32);
		score6.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer6:FlxTimer)
		{
			FlxTween.num(0, scorenum6, 5, {}, updateValue6);
			FlxTween.tween(score6, {x: 60 + (scorenum6 * scaleMultiplier), y: barheightTotal * 5}, 5);
		});
		add(score6);
		// score seperator
		score7 = new FlxText(80, barheightTotal * 6, 0, '0', 32);
		score7.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer7:FlxTimer)
		{
			FlxTween.num(0, scorenum7, 5, {}, updateValue7);
			FlxTween.tween(score7, {x: 60 + (scorenum7 * scaleMultiplier), y: barheightTotal * 6}, 5);
		});
		add(score7);
		// score seperator
		score8 = new FlxText(80, barheightTotal * 7, 0, '0', 32);
		score8.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer8:FlxTimer)
		{
			FlxTween.num(0, scorenum8, 5, {}, updateValue8);
			FlxTween.tween(score8, {x: 60 + (scorenum8 * scaleMultiplier), y: barheightTotal * 7}, 5);
		});
		add(score8);
		// score seperator
		score9 = new FlxText(80, barheightTotal * 8, 0, '0', 32);
		score9.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer9:FlxTimer)
		{
			FlxTween.num(0, scorenum9, 5, {}, updateValue9);
			FlxTween.tween(score9, {x: 40 + (scorenum9 * scaleMultiplier), y: barheightTotal * 8}, 5);
		});
		add(score9);
		// score seperator
		score10 = new FlxText(80, barheightTotal * 9, 0, '0', 32);
		score10.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer10:FlxTimer)
		{
			FlxTween.num(0, scorenum10, 5, {}, updateValue10);
			FlxTween.tween(score10, {x: 60 + (scorenum10 * scaleMultiplier), y: barheightTotal * 9}, 5);
		});
		add(score10);
		// score seperator
		score11 = new FlxText(80, barheightTotal * 10, 0, '0', 32);
		score11.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer11:FlxTimer)
		{
			FlxTween.num(0, scorenum11, 5, {}, updateValue11);
			FlxTween.tween(score11, {x: 80 + (scorenum11 * scaleMultiplier), y: barheightTotal * 10}, 5);
		});
		add(score11);
		// score seperator
		score12 = new FlxText(80, barheightTotal * 11, 0, '0', 32);
		score12.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer12:FlxTimer)
		{
			FlxTween.num(0, scorenum12, 5, {}, updateValue12);
			FlxTween.tween(score12, {x: 80 + (scorenum12 * scaleMultiplier), y: barheightTotal * 11}, 5);
		});
		add(score12);
		// score seperator
		score13 = new FlxText(80, barheightTotal * 12, 0, '0', 32);
		score13.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer13:FlxTimer)
		{
			FlxTween.num(0, scorenum13, 5, {}, updateValue13);
			FlxTween.tween(score13, {x: 60 + (scorenum13 * scaleMultiplier), y: barheightTotal * 12}, 5);
		});
		add(score13);
		// score seperator
		score14 = new FlxText(80, barheightTotal * 13, 0, '0', 32);
		score14.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer14:FlxTimer)
		{
			FlxTween.num(0, scorenum14, 5, {}, updateValue14);
			FlxTween.tween(score14, {x: 60 + (scorenum14 * scaleMultiplier), y: barheightTotal * 13}, 5);
		});
		add(score14);
		// score seperator
		score15 = new FlxText(80, barheightTotal * 14, 0, '0', 32);
		score15.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer15:FlxTimer)
		{
			FlxTween.num(0, scorenum15, 5, {}, updateValue15);
			FlxTween.tween(score15, {x: 80 + (scorenum15 * scaleMultiplier), y: barheightTotal * 14}, 5);
		});
		add(score15);
		// score seperator
		score16 = new FlxText(80, barheightTotal * 15, 0, '0', 32);
		score16.setFormat("Times New Roman", 32, FlxColor.BLACK);
		new FlxTimer().start(3, function(scoreTimer16:FlxTimer)
		{
			FlxTween.num(0, scorenum16, 5, {}, updateValue16);
			FlxTween.tween(score16, {x: 80 + (scorenum16 * scaleMultiplier), y: barheightTotal * 15}, 5);
		});
		add(score16);
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
			FlxTween.tween(bar1.scale, {x: scorenum1 * scaleMultiplier, y: 1}, 2.5);
			bar1.updateHitbox();
			FlxTween.tween(bar2.scale, {x: scorenum2 * scaleMultiplier, y: 1}, 2.5);
			bar2.updateHitbox();
			FlxTween.tween(bar3.scale, {x: scorenum3 * scaleMultiplier, y: 1}, 2.5);
			bar3.updateHitbox();
			FlxTween.tween(bar4.scale, {x: scorenum4 * scaleMultiplier, y: 1}, 2.5);
			bar4.updateHitbox();
			FlxTween.tween(bar5.scale, {x: scorenum5 * scaleMultiplier, y: 1}, 2.5);
			bar5.updateHitbox();
			FlxTween.tween(bar6.scale, {x: scorenum6 * scaleMultiplier, y: 1}, 2.5);
			bar6.updateHitbox();
			FlxTween.tween(bar7.scale, {x: scorenum7 * scaleMultiplier, y: 1}, 2.5);
			bar7.updateHitbox();
			FlxTween.tween(bar8.scale, {x: scorenum8 * scaleMultiplier, y: 1}, 2.5);
			bar8.updateHitbox();
			FlxTween.tween(bar9.scale, {x: scorenum9 * scaleMultiplier, y: 1}, 2.5);
			bar9.updateHitbox();
			FlxTween.tween(bar10.scale, {x: scorenum10 * scaleMultiplier, y: 1}, 2.5);
			bar10.updateHitbox();
			FlxTween.tween(bar11.scale, {x: scorenum11 * scaleMultiplier, y: 1}, 2.5);
			bar11.updateHitbox();
			FlxTween.tween(bar12.scale, {x: scorenum12 * scaleMultiplier, y: 1}, 2.5);
			bar12.updateHitbox();
			FlxTween.tween(bar13.scale, {x: scorenum13 * scaleMultiplier, y: 1}, 2.5);
			bar13.updateHitbox();
			FlxTween.tween(bar14.scale, {x: scorenum14 * scaleMultiplier, y: 1}, 2.5);
			bar14.updateHitbox();
			FlxTween.tween(bar15.scale, {x: scorenum15 * scaleMultiplier, y: 1}, 2.5);
			bar15.updateHitbox();
			FlxTween.tween(bar16.scale, {x: scorenum16 * scaleMultiplier, y: 1}, 2.5);
			bar16.updateHitbox();
			FlxTween.tween(name1, {x: 100 + (scorenum1 * scaleMultiplier), y: barheightTotal * 0}, 2.5);
			FlxTween.tween(name2, {x: 100 + (scorenum2 * scaleMultiplier), y: barheightTotal * 1}, 2.5);
			FlxTween.tween(name3, {x: 100 + (scorenum3 * scaleMultiplier), y: barheightTotal * 2}, 2.5);
			FlxTween.tween(name4, {x: 100 + (scorenum4 * scaleMultiplier), y: barheightTotal * 3}, 2.5);
			FlxTween.tween(name5, {x: 100 + (scorenum5 * scaleMultiplier), y: barheightTotal * 4}, 2.5);
			FlxTween.tween(name6, {x: 100 + (scorenum6 * scaleMultiplier), y: barheightTotal * 5}, 2.5);
			FlxTween.tween(name7, {x: 100 + (scorenum7 * scaleMultiplier), y: barheightTotal * 6}, 2.5);
			FlxTween.tween(name8, {x: 100 + (scorenum8 * scaleMultiplier), y: barheightTotal * 7}, 2.5);
			FlxTween.tween(name9, {x: 100 + (scorenum9 * scaleMultiplier), y: barheightTotal * 8}, 2.5);
			FlxTween.tween(name10, {x: 100 + (scorenum10 * scaleMultiplier), y: barheightTotal * 9}, 2.5);
			FlxTween.tween(name11, {x: 100 + (scorenum11 * scaleMultiplier), y: barheightTotal * 10}, 2.5);
			FlxTween.tween(name12, {x: 100 + (scorenum12 * scaleMultiplier), y: barheightTotal * 11}, 2.5);
			FlxTween.tween(name13, {x: 100 + (scorenum13 * scaleMultiplier), y: barheightTotal * 12}, 2.5);
			FlxTween.tween(name14, {x: 100 + (scorenum14 * scaleMultiplier), y: barheightTotal * 13}, 2.5);
			FlxTween.tween(name15, {x: 100 + (scorenum15 * scaleMultiplier), y: barheightTotal * 14}, 2.5);
			FlxTween.tween(name16, {x: 100 + (scorenum16 * scaleMultiplier), y: barheightTotal * 15}, 2.5);
		});
		new FlxTimer().start(8.5, function(placementTimer:FlxTimer)
		{
			FlxTween.tween(bar1, {x: 100, y: barheightTotal * 8}, 2);
			FlxTween.tween(name1, {x: 100 + (scorenum1 * scaleMultiplier), y: barheightTotal * 8}, 2);
			FlxTween.tween(score1, {x: 60 + (scorenum1 * scaleMultiplier), y: barheightTotal * 8}, 2);
			FlxTween.tween(bar2, {x: 100, y: barheightTotal * 14}, 2);
			FlxTween.tween(name2, {x: 100 + (scorenum2 * scaleMultiplier), y: barheightTotal * 14}, 2);
			FlxTween.tween(score2, {x: 80 + (scorenum2 * scaleMultiplier), y: barheightTotal * 14}, 2);
			FlxTween.tween(bar3, {x: 100, y: barheightTotal * 15}, 2);
			FlxTween.tween(name3, {x: 100 + (scorenum3 * scaleMultiplier), y: barheightTotal * 15}, 2);
			FlxTween.tween(score3, {x: 85 + (scorenum3 * scaleMultiplier), y: barheightTotal * 15}, 2);
			FlxTween.tween(bar4, {x: 100, y: barheightTotal * 1}, 2);
			FlxTween.tween(name4, {x: 100 + (scorenum4 * scaleMultiplier), y: barheightTotal * 1}, 2);
			FlxTween.tween(score4, {x: 60 + (scorenum4 * scaleMultiplier), y: barheightTotal * 1}, 2);
			FlxTween.tween(bar5, {x: 100, y: barheightTotal * 3}, 2);
			FlxTween.tween(name5, {x: 100 + (scorenum5 * scaleMultiplier), y: barheightTotal * 3}, 2);
			FlxTween.tween(score5, {x: 60 + (scorenum5 * scaleMultiplier), y: barheightTotal * 3}, 2);
			FlxTween.tween(bar6, {x: 100, y: barheightTotal * 6}, 2);
			FlxTween.tween(name6, {x: 100 + (scorenum6 * scaleMultiplier), y: barheightTotal * 6}, 2);
			FlxTween.tween(score6, {x: 60 + (scorenum6 * scaleMultiplier), y: barheightTotal * 6}, 2);
			FlxTween.tween(bar7, {x: 100, y: barheightTotal * 5}, 2);
			FlxTween.tween(name7, {x: 100 + (scorenum7 * scaleMultiplier), y: barheightTotal * 5}, 2);
			FlxTween.tween(score7, {x: 60 + (scorenum7 * scaleMultiplier), y: barheightTotal * 5}, 2);
			FlxTween.tween(bar8, {x: 100, y: barheightTotal * 4}, 2);
			FlxTween.tween(name8, {x: 100 + (scorenum8 * scaleMultiplier), y: barheightTotal * 4}, 2);
			FlxTween.tween(score8, {x: 60 + (scorenum8 * scaleMultiplier), y: barheightTotal * 4}, 2);
			FlxTween.tween(bar9, {x: 100, y: barheightTotal * 0}, 2);
			FlxTween.tween(name9, {x: 100 + (scorenum9 * scaleMultiplier), y: barheightTotal * 0}, 2);
			FlxTween.tween(score9, {x: 40 + (scorenum9 * scaleMultiplier), y: barheightTotal * 0}, 2);
			FlxTween.tween(bar10, {x: 100, y: barheightTotal * 2}, 2);
			FlxTween.tween(name10, {x: 100 + (scorenum10 * scaleMultiplier), y: barheightTotal * 2}, 2);
			FlxTween.tween(score10, {x: 60 + (scorenum10 * scaleMultiplier), y: barheightTotal * 2}, 2);
			FlxTween.tween(bar11, {x: 100, y: barheightTotal * 11}, 2);
			FlxTween.tween(name11, {x: 100 + (scorenum11 * scaleMultiplier), y: barheightTotal * 11}, 2);
			FlxTween.tween(score11, {x: 80 + (scorenum11 * scaleMultiplier), y: barheightTotal * 11}, 2);
			FlxTween.tween(bar12, {x: 100, y: barheightTotal * 10}, 2);
			FlxTween.tween(name12, {x: 100 + (scorenum12 * scaleMultiplier), y: barheightTotal * 10}, 2);
			FlxTween.tween(score12, {x: 80 + (scorenum12 * scaleMultiplier), y: barheightTotal * 10}, 2);
			FlxTween.tween(bar13, {x: 100, y: barheightTotal * 7}, 2);
			FlxTween.tween(name13, {x: 100 + (scorenum13 * scaleMultiplier), y: barheightTotal * 7}, 2);
			FlxTween.tween(score13, {x: 60 + (scorenum13 * scaleMultiplier), y: barheightTotal * 7}, 2);
			FlxTween.tween(bar14, {x: 100, y: barheightTotal * 9}, 2);
			FlxTween.tween(name14, {x: 100 + (scorenum14 * scaleMultiplier), y: barheightTotal * 9}, 2);
			FlxTween.tween(score14, {x: 60 + (scorenum14 * scaleMultiplier), y: barheightTotal * 9}, 2);
			FlxTween.tween(bar15, {x: 100, y: barheightTotal * 12}, 2);
			FlxTween.tween(name15, {x: 100 + (scorenum15 * scaleMultiplier), y: barheightTotal * 12}, 2);
			FlxTween.tween(score15, {x: 80 + (scorenum15 * scaleMultiplier), y: barheightTotal * 12}, 2);
			FlxTween.tween(bar16, {x: 100, y: barheightTotal * 13}, 2);
			FlxTween.tween(name16, {x: 100 + (scorenum16 * scaleMultiplier), y: barheightTotal * 13}, 2);
			FlxTween.tween(score16, {x: 80 + (scorenum16 * scaleMultiplier), y: barheightTotal * 13}, 2);
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