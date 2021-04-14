Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54B8A35FAE9
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 20:50:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352729AbhDNSp5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 14:45:57 -0400
Received: from heinz.dinsnail.net ([81.169.187.250]:39884 "EHLO
        heinz.dinsnail.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbhDNSp4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 14:45:56 -0400
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
        by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13EIj9OC025817;
        Wed, 14 Apr 2021 20:45:09 +0200
Received: from eldalonde.UUCP (uucp@localhost)
        by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id 13EIj8JL025816;
        Wed, 14 Apr 2021 20:45:08 +0200
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1] (may be forged))
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13EIZ3pY028239;
        Wed, 14 Apr 2021 20:35:03 +0200
Received: (from michael@localhost)
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id 13EIZ3ZX028238;
        Wed, 14 Apr 2021 20:35:03 +0200
Date:   Wed, 14 Apr 2021 20:35:03 +0200
From:   Michael Weiser <michael.weiser@gmx.de>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: Revert SD card CD GPIO for
 Pine64-LTS
Message-ID: <YHc11xC1vT1Yr+a1@weiser.dinsnail.net>
References: <20210414104740.31497-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414104740.31497-1-andre.przywara@arm.com>
X-dinsnail.net-MailScanner-Information: Please contact the ISP for more information
X-dinsnail.net-MailScanner-ID: 13EIj9OC025817
X-dinsnail.net-MailScanner: Found to be clean
X-dinsnail.net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andre,

On Wed, Apr 14, 2021 at 11:47:40AM +0100, Andre Przywara wrote:

> Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
> SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
> along the way with the Pine64-LTS, which share the same base .dtsi.

> This was based on the observation that the Pine64-LTS has as "push-push"
> SD card socket, and that the schematic mentions the card detect GPIO.

> After having received two reports about failing SD card access with that
> patch, some more research and polls on that subject revealed that there
> are at least two different versions of the Pine64-LTS out there:
> - On some boards (including mine) the card detect pin is "stuck" at
>   high, regardless of an microSD card being inserted or not.
> - On other boards the card-detect is working, but is active-high, by
>   virtue of an explicit inverter circuit, as shown in the schematic.

> To cover all versions of the board out there, and don't take any chances,
> let's revert the introduction of the active-low CD GPIO, but let's use
> the broken-cd property for the Pine64-LTS this time. That should avoid
> regressions and should work for everyone, even allowing SD card changes
> now.
> The SOPine card detect has proven to be working, so let's keep that
> GPIO in place.

I can confirm that this change works on my Pine64 LTS boards (with
working high-active card detect) when applied to today's linux-next (which
already includes your previous change to change the card detect GPIO
from low- to high-active in sun50i-a64-sopine.dtsi).

> Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
> Reported-by: Michael Weiser <michael.weiser@gmx.de>
> Reported-by: Daniel Kulesz <kuleszdl@posteo.org>
> Suggested-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Tested-by: Michael Weiser <michael.weiser@gmx.de>

Thanks!
Michael

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> index e79ce49e7e6a..596a25907432 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> @@ -21,5 +21,5 @@
>  };

>  &mmc0 {
> -	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> +	broken-cd;		/* card detect is broken on *some* boards */
>  };

-- 
tschoe, Michael
Eisregen
