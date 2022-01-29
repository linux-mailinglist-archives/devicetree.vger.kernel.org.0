Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8A584A2B46
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 03:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352197AbiA2CcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 21:32:10 -0500
Received: from foss.arm.com ([217.140.110.172]:50452 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240775AbiA2CcJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 Jan 2022 21:32:09 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90A1ED6E;
        Fri, 28 Jan 2022 18:32:08 -0800 (PST)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC63A3F7D7;
        Fri, 28 Jan 2022 18:32:06 -0800 (PST)
Date:   Sat, 29 Jan 2022 02:31:55 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH] ARM: dts: suniv: Add MMC and clock macros.
Message-ID: <20220129023155.401b2fa3@slackpad.fritz.box>
In-Reply-To: <d19e70d8-02e1-b986-c0cf-f081fd82b52a@gmail.com>
References: <20220125011352.2691365-1-Mr.Bossman075@gmail.com>
        <20220126235726.03abdab4@slackpad.fritz.box>
        <d69233d8-4e3d-56db-d4d3-1b39fe84ee30@gmail.com>
        <20220127005304.06215ae8@slackpad.fritz.box>
        <d19e70d8-02e1-b986-c0cf-f081fd82b52a@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 28 Jan 2022 21:05:28 -0500
Jesse Taube <mr.bossman075@gmail.com> wrote:

> On 1/26/22 19:53, Andre Przywara wrote:
> > On Wed, 26 Jan 2022 19:12:05 -0500
> > Jesse Taube <mr.bossman075@gmail.com> wrote:
> >   
> >> On 1/26/22 18:57, Andre Przywara wrote:  
> >>> On Mon, 24 Jan 2022 20:13:52 -0500
> >>> Jesse Taube <mr.bossman075@gmail.com> wrote:
> >>>
> >>> Hi Jesse,
> >>>
> >>> I understand that get_maintainers.pl suggested this CC: list,  but you
> >>> should add sunxi people and linux-arm kernel ML. Doing that now.  
> >> Uh yeah that makes sense in hind sight.  
> >>>> Include clock and reset macros and replace magic numbers.
> >>>> Add MMC node.  
> >>>
> >>> This patch itself does not do much, does it? You would at least need to
> >>> enable that in the board dts.  
> >> True it doesn't do much just so that its in both u-boot and linux.  
> >>> And this should be multiple patches:
> >>> 1) replace numbers with macros (part of this patch)
> >>> 2) Add the MMC compatible string combo to the the bindings doc  
> Uh there is no f1c100s driver yet its just a placeholder it should be 
> compatible with the a20 though.

That is expected, ideally we won't need any addition to the driver
file, as indeed chances are it's really compatible to the A20.
But in any case we need to document the compatible string, and how it
is used: paired with the actual defining A20 fallback string. This
needs to go to
Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml.
If you look around in that file and its git history, you should get the
idea what you need to do.

> >>> 3) Add the *two* MMC nodes and at least the pinctrl node for MMC0 to the
> >>> SoC .dtsi (partly in this patch)
> >>> 4) Enable the MMC and the card detect pin in the Nano board .dts  
> Uh after like an hour of trying to find the schematic I found it here 
> nano.lichee.pro but the card detect pin isn't connected ;-(.

That's fine, it wouldn't be the first one. We have the "broken-cd;"
property for this.

Cheers,
Andre


> >>>
> >>> I checked that the macros names match the numbers they replace, so
> >>> you can add my R-b: on that patch 1 (if you follow my suggestion).
> >>> The MMC node also seems to look sane.  
> >> That seems okay.  
> >>>>
> >>>> Signed-off-by: Mesih Kilinc <mesihkilinc@gmail.com>  
> >>>
> >>> It is not evident why Mesih's S-o-b: is in here? The patch seems to be
> >>> authored and sent by you? Either you make him the author if that is his
> >>> patch originally, or you put him just as Cc: or in Suggested-by:, maybe.  
> >> I did write the patch after I wrote it I was looking at his github and
> >> he had almost the same patch.  
> > 
> > Yeah, not really surprising, there are only so many ways to write a DT.
> > I guess he never sent it, and since you wrote it, it's yours, so just
> > add him in Cc:, since he was involved in the F1C100s upstreaming.
> > 
> > Cheers,
> > Andre
> >   
> >>> Cheers,
> >>> Andre
> >>>      
> >>>> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> >>>> ---
> >>>>    arch/arm/boot/dts/suniv-f1c100s.dtsi | 41 +++++++++++++++++++++++-----
> >>>>    1 file changed, 34 insertions(+), 7 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> >>>> index 6100d3b75f61..32872bb29917 100644
> >>>> --- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
> >>>> +++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> >>>> @@ -4,6 +4,9 @@
> >>>>     * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
> >>>>     */
> >>>>    
> >>>> +#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
> >>>> +#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
> >>>> +
> >>>>    / {
> >>>>    	#address-cells = <1>;
> >>>>    	#size-cells = <1>;
> >>>> @@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
> >>>>    			compatible = "allwinner,suniv-f1c100s-pinctrl";
> >>>>    			reg = <0x01c20800 0x400>;
> >>>>    			interrupts = <38>, <39>, <40>;
> >>>> -			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
> >>>> +			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
> >>>>    			clock-names = "apb", "hosc", "losc";
> >>>>    			gpio-controller;
> >>>>    			interrupt-controller;
> >>>> @@ -93,6 +96,11 @@ uart0_pe_pins: uart0-pe-pins {
> >>>>    				pins = "PE0", "PE1";
> >>>>    				function = "uart0";
> >>>>    			};
> >>>> +
> >>>> +			mmc0_pins: mmc0-pins {
> >>>> +				pins = "PF0", "PF1", "PF2", "PF3", "PF4", "PF5";
> >>>> +				function = "mmc0";
> >>>> +			};
> >>>>    		};
> >>>>    
> >>>>    		timer@1c20c00 {
> >>>> @@ -108,14 +116,33 @@ wdt: watchdog@1c20ca0 {
> >>>>    			reg = <0x01c20ca0 0x20>;
> >>>>    		};
> >>>>    
> >>>> +		mmc0: mmc@1c0f000 {
> >>>> +			compatible = "allwinner,suniv-f1c100s-mmc",
> >>>> +				     "allwinner,sun7i-a20-mmc";
> >>>> +			reg = <0x01c0f000 0x1000>;
> >>>> +			clocks = <&ccu CLK_BUS_MMC0>,
> >>>> +				 <&ccu CLK_MMC0>,
> >>>> +				 <&ccu CLK_MMC0_OUTPUT>,
> >>>> +				 <&ccu CLK_MMC0_SAMPLE>;
> >>>> +			clock-names = "ahb", "mmc", "output", "sample";
> >>>> +			resets = <&ccu RST_BUS_MMC0>;
> >>>> +			reset-names = "ahb";
> >>>> +			interrupts = <23>;
> >>>> +			pinctrl-names = "default";
> >>>> +			pinctrl-0 = <&mmc0_pins>;
> >>>> +			status = "disabled";
> >>>> +			#address-cells = <1>;
> >>>> +			#size-cells = <0>;
> >>>> +		};
> >>>> +
> >>>>    		uart0: serial@1c25000 {
> >>>>    			compatible = "snps,dw-apb-uart";
> >>>>    			reg = <0x01c25000 0x400>;
> >>>>    			interrupts = <1>;
> >>>>    			reg-shift = <2>;
> >>>>    			reg-io-width = <4>;
> >>>> -			clocks = <&ccu 38>;
> >>>> -			resets = <&ccu 24>;
> >>>> +			clocks = <&ccu CLK_BUS_UART0>;
> >>>> +			resets = <&ccu RST_BUS_UART0>;
> >>>>    			status = "disabled";
> >>>>    		};
> >>>>    
> >>>> @@ -125,8 +152,8 @@ uart1: serial@1c25400 {
> >>>>    			interrupts = <2>;
> >>>>    			reg-shift = <2>;
> >>>>    			reg-io-width = <4>;
> >>>> -			clocks = <&ccu 39>;
> >>>> -			resets = <&ccu 25>;
> >>>> +			clocks = <&ccu CLK_BUS_UART1>;
> >>>> +			resets = <&ccu RST_BUS_UART1>;
> >>>>    			status = "disabled";
> >>>>    		};
> >>>>    
> >>>> @@ -136,8 +163,8 @@ uart2: serial@1c25800 {
> >>>>    			interrupts = <3>;
> >>>>    			reg-shift = <2>;
> >>>>    			reg-io-width = <4>;
> >>>> -			clocks = <&ccu 40>;
> >>>> -			resets = <&ccu 26>;
> >>>> +			clocks = <&ccu CLK_BUS_UART2>;
> >>>> +			resets = <&ccu RST_BUS_UART2>;
> >>>>    			status = "disabled";
> >>>>    		};
> >>>>    	};  
> >>>      
> >   
> 

