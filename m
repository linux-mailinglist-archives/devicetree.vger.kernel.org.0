Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB35348EA1A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 13:50:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241121AbiANMtZ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 14 Jan 2022 07:49:25 -0500
Received: from foss.arm.com ([217.140.110.172]:32886 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235721AbiANMtY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jan 2022 07:49:24 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4230FED1;
        Fri, 14 Jan 2022 04:49:24 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B16B3F774;
        Fri, 14 Jan 2022 04:49:21 -0800 (PST)
Date:   Fri, 14 Jan 2022 12:49:19 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 3/3] ARM: dts: sun8i: r40: add second ethernet
 support
Message-ID: <20220114124919.3b312c85@donnerap.cambridge.arm.com>
In-Reply-To: <0d62080d-e373-8b6f-699a-b7e4e84a26ce@wirenboard.com>
References: <20220113053734.105813-1-boger@wirenboard.com>
        <20220113053734.105813-4-boger@wirenboard.com>
        <20220114094255.br6qqqgoajvhpt2x@houat>
        <20220114103750.01f95d70@donnerap.cambridge.arm.com>
        <0d62080d-e373-8b6f-699a-b7e4e84a26ce@wirenboard.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 Jan 2022 15:10:34 +0300
Evgeny Boger <boger@wirenboard.com> wrote:

Hi,

> 14.01.2022 13:37, Andre Przywara пишет:
> > On Fri, 14 Jan 2022 10:42:55 +0100
> > Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >  
> >> On Thu, Jan 13, 2022 at 08:37:34AM +0300, Evgeny Boger wrote:  
> >>> R40 (aka V40, A40i, T3) has two different Ethernet IPs
> >>> called EMAC and GMAC. EMAC only support 10/100 Mbit in MII mode,
> >>> while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).
> >>>
> >>> In contrast to A10/A20 where GMAC and EMAC share the same pins
> >>> making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
> >>> Both EMAC (on port H) and GMAC (on port A) can be then enabled at
> >>> the same time, allowing for two ethernet ports.
> >>>
> >>> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> >>> ---
> >>>   arch/arm/boot/dts/sun8i-r40.dtsi | 49 ++++++++++++++++++++++++++++++++
> >>>   1 file changed, 49 insertions(+)
> >>>
> >>> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> >>> index 03d3e5f45a09..8770b105f86e 100644
> >>> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> >>> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> >>> @@ -217,6 +217,19 @@ syscon: system-control@1c00000 {
> >>>   			#size-cells = <1>;
> >>>   			ranges;
> >>>   
> >>> +			sram_a: sram@0 {
> >>> +				compatible = "mmio-sram";
> >>> +				reg = <0x00000000 0xc000>;
> >>> +				#address-cells = <1>;
> >>> +				#size-cells = <1>;
> >>> +				ranges = <0 0x00000000 0xc000>;
> >>> +
> >>> +				emac_sram: sram-section@8000 {
> >>> +					compatible = "allwinner,sun4i-a10-sram-a3-a4";
> >>> +					reg = <0x8000 0x4000>;
> >>> +				};
> >>> +			};
> >>> +
> >>>   			sram_c: sram@1d00000 {
> >>>   				compatible = "mmio-sram";
> >>>   				reg = <0x01d00000 0xd0000>;
> >>> @@ -553,6 +566,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
> >>>   				drive-strength = <40>;
> >>>   			};
> >>>   
> >>> +			emac_pa_pins: emac-pa-pins {
> >>> +				pins = "PA0", "PA1", "PA2",
> >>> +				       "PA3", "PA4", "PA5", "PA6",
> >>> +				       "PA7", "PA8", "PA9", "PA10",
> >>> +				       "PA11", "PA12", "PA13", "PA14",
> >>> +				       "PA15", "PA16";
> >>> +				function = "emac";
> >>> +			};
> >>> +
> >>> +			emac_ph_pins: emac-ph-pins {
> >>> +				pins = "PH8", "PH9", "PH10", "PH11",
> >>> +				       "PH14", "PH15", "PH16", "PH17",
> >>> +				       "PH18","PH19", "PH20", "PH21",
> >>> +				       "PH22", "PH23", "PH24", "PH25",
> >>> +				       "PH26", "PH27";
> >>> +				function = "emac";
> >>> +			};  
> >> There's 17 pins on the first group, but 18 on the second, is it intentional?  
> > Yeah, looks like PA17 is missing above. This pin is used for MII only, so
> > it is omitted from the existing gmac_rgmii_pins group.
> >
> > Evgeny: Did you try a 100MBit PHY on PortA? That should work with both the
> > GMAC and EMAC, right? I wonder if we should add a group that connects all
> > pins needed for MII to the GMAC as well, so basically the above (with PA17
> > added), but using 'function = "gmac";'? Put an "/omit-if-no-ref/" before
> > that (also to those above?) to avoid blowing up the DTB needlessly.  
> Hi Andre,
> 
> No, it's not intentional, thank you for noticing that!

Kudos go to Maxime for spotting the different number of pins!

> I haven't tried EMAC on port A with the latest patch, but it should be 
> trivial to do.
> The problem with TXERR signal is that it's kind of optional, so it's 
> hard to notice if it doesn't work properly.

I see, I was wondering already, since you mentioned MII on both ports
before, IIRC.

> As for adding gmac_*mii*_pins node, I think it could be useful. Do you 
> suggest to add it to the same series? Strictly speaking, it has nothing 
> to do with R40 and second ethernet support. GMAC is ubiquitous among 
> Allwinner SoCs, so I think it would make sense to add to all SoCs at once.

In general we try to add those pin groups only when they get used. The A64
describes both sets of pins (MII & RGMII), because there is the Pine64
(non-plus) with a Realtek 8201FN PHY. For the H3 & H6 this was not needed
before, since board vendors use the internal PHY for 100MBit. I think
similar reasoning applies to the other SoCs.

> As for /omit-if-no-ref/ on pinctrl nodes, is there a policy on it?

Not written out, but my understanding is that if there is only a very
small number of users, we try not to bother everyone else. And connecting
a PHY via MII to the GMAC sounds like a niche use case, if you have the
EMAC on PortH (now).

> I 
> mean there are people (ourselves included) who use device tree overlays 
> a lot, both in bootloader and kernel, so it's not that harmless.

I haven't checked, do those nodes still get removed if you compile the DT
with -@?

Cheers,
Andre
