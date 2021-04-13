Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAB3235E6BD
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 21:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238639AbhDMTA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 15:00:57 -0400
Received: from heinz.dinsnail.net ([81.169.187.250]:38626 "EHLO
        heinz.dinsnail.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbhDMTA5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 15:00:57 -0400
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
        by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13DJ09Dn019335;
        Tue, 13 Apr 2021 21:00:09 +0200
Received: from eldalonde.UUCP (uucp@localhost)
        by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id 13DJ084g019314;
        Tue, 13 Apr 2021 21:00:08 +0200
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1] (may be forged))
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13DImOtG023112;
        Tue, 13 Apr 2021 20:48:24 +0200
Received: (from michael@localhost)
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id 13DImOD8023111;
        Tue, 13 Apr 2021 20:48:24 +0200
Date:   Tue, 13 Apr 2021 20:48:24 +0200
From:   Michael Weiser <michael.weiser@gmx.de>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
Message-ID: <YHXneEEiFCwna7X6@weiser.dinsnail.net>
References: <20210412000813.13071-1-andre.przywara@arm.com>
 <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
 <20210412174558.4ba90cf8@slackpad.fritz.box>
 <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
 <20210413115837.232c465a@slackpad.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413115837.232c465a@slackpad.fritz.box>
X-dinsnail.net-MailScanner-Information: Please contact the ISP for more information
X-dinsnail.net-MailScanner-ID: 13DJ09Dn019335
X-dinsnail.net-MailScanner: Found to be clean
X-dinsnail.net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jernej and Andre,

On Tue, Apr 13, 2021 at 11:58:37AM +0100, Andre Przywara wrote:

> > > Daniel, Michael, can you test this on your boards? So removing the
> > > cd-gpios property, and adding "broken-cd;" instead?  
> > Yes, it works fine. What flummoxed me at first was that obviously I also
> > have to disable the ACTIVE_LOW definition in sun50i-a64-sopine.dtsi
> > after having added and disabled an ACTIVE_HIGH definition in
> > sun50i-a64-pine64-lts.dts.
> Why? From my experiments it should not matter, the actual card presence
> is typically detected via the SD bus anyway (if I understand the code
> correctly). broken-cd just prevents installation of an interrupt
> handler, so it's less efficient and prevents wakeup on card detect,
> AFAICS.

I just retested to be sure: At least with 5.11.11 and on my boards,
cd-gpio ACTIVE_LOW being specified in the sopine.dtsi takes precedence
over broken-cd being specified in pine64-lts.dts. Could that spoil the
plan of disabling cd-gpio for the LTS while leaving it enabled for
Sopine and baseboard?

Behaviour is as such: With cd-gpios ACTIVE_LOW in sopine.dtsi and
broken-cd in pine64-lts.dts, card insertion, removal and reinsertion is
not detected after booting the kernel without a card in the slot. With
cd-gpios ACTIVE_LOW removed from sopine.dtsi it starts working.

In diffs for added clarity:

PAGER= git log --pretty=oneline HEAD~1..HEAD
aa7258f8f3d48a29bc024ea8c5145bdc4a980e4d (HEAD, tag: v5.11.11) Linux 5.11.11

- not working on its own:

index 302e24be0a31..5b0c21e68352 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
@@ -8,3 +8,7 @@ / {
        compatible = "pine64,pine64-lts", "allwinner,sun50i-r18",
                     "allwinner,sun50i-a64";
 };
+
+&mmc0 {
+       broken-cd;
+};

- working with this additional change:

index 3402cec87035..ba2b7398993b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
@@ -34,7 +34,6 @@ &mmc0 {
        vmmc-supply = <&reg_dcdc1>;
        disable-wp;
        bus-width = <4>;
-       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
        status = "okay";
 };

> So for your particular board (version) you could actually remove the
> whole &mmc0 node override, use the same node as the SOPine (working
> active-high CD) and it should work.

Correct. Again for reasons of laziness I tested with the dts from
5.11.11 which is currently running on the board and which still has
ACTIVE_LOW in sopine.dtsi. Sorry for not being clearer about that.

But somewhat lucky as well because without ACTIVE_LOW still being set in
sopine.dtsi I wouldn't have had a way to tell that broken-cd was not
taking effect and silently have tested the working ACTIVE_HIGH
definition from sopine.dtsi.

Or am I somehow making a mess of this?

> > BTW: My boards have a marking "PINE64-R18-V1_1" and below it
> > "2017-08-03" on their upper side. On the back it says on one sticker
> > "Model:PineA64 2GB LTS" and on another "2O1-PINE64R18-00" and
> > "PINE64-R18-V1.1 2G". Is CD being stuck at 1 a bug of revision 1.0
> > perhaps?  Is there a way to detect this difference in software and add
> > some sort of quirk handler for it?
> As Jernej mentioned, this would be U-Boot's task, but I don't see a
> good reason for it. Firstly, you would need to find a good automatic
> way of determining the board revision, which I doubt there is. And
> secondly, I don't see the benefit: It works quite nicely with
> broken-cd: card removals and insertions are detected automatically,
> it's just not as efficient (interrupt-driven) as it could be.
> Or do you see any problems with broken-cd?

Of course not. My boards have their rootfs on mmc0, so the card is never
removed and replaced during operation anyway. I was just asking out of
curiosity.

And out of curiosity again: Could one have a device tree overlay
configured manually to be loaded by the bootloader that adds cd-gpio
ACTIVE_HIGH for mmc0 and disables/overrules broken-cd? Somewhat like so
(untested):

/dts-v1/;
/plugin/;

#include <dt-bindings/gpio/gpio.h>

/ {
        fragment@0 {
                target = <&mmc0>;
                __overlay__ {
                        cd-gpios = <&pio 5 6 GPIO_ACTIVE_HIGH>; /* PF6 push-push switch */
                };
        };
};

Here it would be useful if cd-gpios indeed took precedence over
broken-cd because my grepping of the code can't find a way to un-specify
it once set.
-- 
Michael
