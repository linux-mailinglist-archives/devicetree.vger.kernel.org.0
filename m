Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7922635F18A
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 12:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233740AbhDNKgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 06:36:01 -0400
Received: from foss.arm.com ([217.140.110.172]:54482 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232235AbhDNKgA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Apr 2021 06:36:00 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6738E11B3;
        Wed, 14 Apr 2021 03:35:39 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B64E3F73B;
        Wed, 14 Apr 2021 03:35:37 -0700 (PDT)
Date:   Wed, 14 Apr 2021 11:35:16 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Michael Weiser <michael.weiser@gmx.de>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
Message-ID: <20210414113516.0fdc3a24@slackpad.fritz.box>
In-Reply-To: <YHXneEEiFCwna7X6@weiser.dinsnail.net>
References: <20210412000813.13071-1-andre.przywara@arm.com>
        <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
        <20210412174558.4ba90cf8@slackpad.fritz.box>
        <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
        <20210413115837.232c465a@slackpad.fritz.box>
        <YHXneEEiFCwna7X6@weiser.dinsnail.net>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Apr 2021 20:48:24 +0200
Michael Weiser <michael.weiser@gmx.de> wrote:

Hi Michael,

thanks for the reply and your testing!

> On Tue, Apr 13, 2021 at 11:58:37AM +0100, Andre Przywara wrote:
> 
> > > > Daniel, Michael, can you test this on your boards? So removing the
> > > > cd-gpios property, and adding "broken-cd;" instead?    
> > > Yes, it works fine. What flummoxed me at first was that obviously I also
> > > have to disable the ACTIVE_LOW definition in sun50i-a64-sopine.dtsi
> > > after having added and disabled an ACTIVE_HIGH definition in
> > > sun50i-a64-pine64-lts.dts.  
> > Why? From my experiments it should not matter, the actual card presence
> > is typically detected via the SD bus anyway (if I understand the code
> > correctly). broken-cd just prevents installation of an interrupt
> > handler, so it's less efficient and prevents wakeup on card detect,
> > AFAICS.  
> 
> I just retested to be sure: At least with 5.11.11 and on my boards,
> cd-gpio ACTIVE_LOW being specified in the sopine.dtsi takes precedence
> over broken-cd being specified in pine64-lts.dts. Could that spoil the
> plan of disabling cd-gpio for the LTS while leaving it enabled for
> Sopine and baseboard?

I am not sure what you mean with "takes precedence"? And there should be
no active-low anymore, after that other patch of mine[1].

The CD GPIO and broken-cd are somewhat independent: Whenever a CD GPIO
is specified in the DT, the code will pick it up and use any level
changes, but only to trigger the actual card detection routine (over the
SD bus). If "broken-cd" is NOT specified, it will also try to register
an interrupt handler for any pin change, so it doesn't need to poll and
can use it as a wakeup source.
So I specified a different GPIO and connected a switch to that pin, to
simulate the different cases:
- Having broken-cd didn't hurt in any way, maybe apart from the missing
  wakeup source (which I didn't test).
- Having no CD GPIO property, but broken-cd worked equally fine, every
  card insertion or removal was detected.
- Having the CD GPIO at somewhat random (switch not corresponding to
  actual card insertion state), but still having broken-cd, did not do
  any harm either: it always looked at the actual card state and still
  detected any card change, even without a pin change.
- The only problematic situation is "no broken-cd, but wrong CD GPIO":
  card removals are detected, but the card insertion checks would rely
  on the CD pin reading "card inserted". Not sure if there is a way
  to force card detection from the prompt somehow.

This last case however is only a problem is the CD GPIO never reads
"card inserted". In our case (active high, as inherited from the
SOPine), it works even without broken-cd on those broken boards: the
"stuck at 1" means "card always inserted", which correctly detects
every removal and insertion.

So given the above (broken-cd not doing any harm, but correctly
describing the situation on some boards), I would like to see both an
active-high CD GPIO and the broken-cd property to be in. I will send a
v2 in a minute.

> 
> Behaviour is as such: With cd-gpios ACTIVE_LOW in sopine.dtsi and

Yes, that is wrong, and I sent a patch already [1].

> broken-cd in pine64-lts.dts, card insertion, removal and reinsertion is
> not detected after booting the kernel without a card in the slot. With
> cd-gpios ACTIVE_LOW removed from sopine.dtsi it starts working.

Yes, that confirms my findings above. ACTIVE_LOW is the culprit here,
with ACTIVE_HIGH it should work.

> 
> In diffs for added clarity:
> 
> PAGER= git log --pretty=oneline HEAD~1..HEAD
> aa7258f8f3d48a29bc024ea8c5145bdc4a980e4d (HEAD, tag: v5.11.11) Linux 5.11.11
> 
> - not working on its own:
> 
> index 302e24be0a31..5b0c21e68352 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -8,3 +8,7 @@ / {
>         compatible = "pine64,pine64-lts", "allwinner,sun50i-r18",
>                      "allwinner,sun50i-a64";
>  };
> +
> +&mmc0 {
> +       broken-cd;
> +};
> 
> - working with this additional change:
> 
> index 3402cec87035..ba2b7398993b 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
> @@ -34,7 +34,6 @@ &mmc0 {
>         vmmc-supply = <&reg_dcdc1>;
>         disable-wp;
>         bus-width = <4>;
> -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */

It should work with this line still in, but reading ACTIVE_HIGH, as per
[1].

>         status = "okay";
>  };
> 
> > So for your particular board (version) you could actually remove the
> > whole &mmc0 node override, use the same node as the SOPine (working
> > active-high CD) and it should work.  
> 
> Correct. Again for reasons of laziness I tested with the dts from
> 5.11.11 which is currently running on the board and which still has
> ACTIVE_LOW in sopine.dtsi. Sorry for not being clearer about that.
> 
> But somewhat lucky as well because without ACTIVE_LOW still being set in
> sopine.dtsi I wouldn't have had a way to tell that broken-cd was not
> taking effect and silently have tested the working ACTIVE_HIGH
> definition from sopine.dtsi.
> 
> Or am I somehow making a mess of this?
> 
> > > BTW: My boards have a marking "PINE64-R18-V1_1" and below it
> > > "2017-08-03" on their upper side. On the back it says on one sticker
> > > "Model:PineA64 2GB LTS" and on another "2O1-PINE64R18-00" and
> > > "PINE64-R18-V1.1 2G". Is CD being stuck at 1 a bug of revision 1.0
> > > perhaps?  Is there a way to detect this difference in software and add
> > > some sort of quirk handler for it?  
> > As Jernej mentioned, this would be U-Boot's task, but I don't see a
> > good reason for it. Firstly, you would need to find a good automatic
> > way of determining the board revision, which I doubt there is. And
> > secondly, I don't see the benefit: It works quite nicely with
> > broken-cd: card removals and insertions are detected automatically,
> > it's just not as efficient (interrupt-driven) as it could be.
> > Or do you see any problems with broken-cd?  
> 
> Of course not. My boards have their rootfs on mmc0, so the card is never
> removed and replaced during operation anyway. I was just asking out of
> curiosity.

Ah, OK. I am running with initrds for those tests, so SD card status is
not fatal.
 
> And out of curiosity again: Could one have a device tree overlay
> configured manually to be loaded by the bootloader that adds cd-gpio
> ACTIVE_HIGH for mmc0 and disables/overrules broken-cd? Somewhat like so
> (untested):

ACTIVE_HIGH should be merged anytime soon, so we don't need that.
And yes, you can remove broken-cd, but as shown above, I don't see why
and it's certainly not worth the hassle from my point of view.

> 
> /dts-v1/;
> /plugin/;
> 
> #include <dt-bindings/gpio/gpio.h>
> 
> / {
>         fragment@0 {
>                 target = <&mmc0>;
>                 __overlay__ {
>                         cd-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>; /* PF6 push-push switch */
>                 };
>         };
> };

If you really want to remove broken-cd from the DT, you can do much
easier in U-Boot:
=> fdt addr $fdt_addr_r
=> fdt rm /soc/mmc broken-cd

> 
> Here it would be useful if cd-gpios indeed took precedence over
> broken-cd because my grepping of the code can't find a way to un-specify
> it once set.

See above, shouldn't be a problem.

Cheers,
Andre
[1]
http://lists.infradead.org/pipermail/linux-arm-kernel/2021-March/645191.html

