Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1BF32FF377
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:47:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbhAUSqf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 13:46:35 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37450 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726662AbhAUSky (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 13:40:54 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LIdA2B064006;
        Thu, 21 Jan 2021 12:39:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611254350;
        bh=/qd7LEfp7P1X46YckUfvATyn9+fX0DnQt8qNqExcLQ8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=uZs9yjsXVOpDoo/IhBcEtobiqlJKuQ0jfhwsKzM8W+C9RbgleaLGOvKP/RAMcI5TK
         pRpW9Ug5xnFReSBGzeEtDVAP5kIeF6Ar6QqMDFXyWvfLZIDozdghryZwiG8X6NltKc
         62ShucG9WAUqcPfaXJi8JgJyMtwj/Hn/oI/HP2U0=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LIdA8n041093
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 12:39:10 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 12:39:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 12:39:09 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LId9ln067401;
        Thu, 21 Jan 2021 12:39:09 -0600
Date:   Thu, 21 Jan 2021 12:39:09 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210121183909.pwpboiptqbof2dfu@squint>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:13-20210121, Suman Anna wrote:
> On 1/21/21 11:46 AM, Nishanth Menon wrote:
> > On 11:25-20210121, Suman Anna wrote:
> >> On 1/20/21 2:25 PM, Dave Gerlach wrote:
> >>> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> >>> providing advanced system integration to enable applications such as
> >>> Motor Drives, PLC, Remote IO and IoT Gateways.
> >>>
> >>> Some highlights of this SoC are:
> >>> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
> >>>   MCUs, and a single Cortex-M4F.
> >>> * Two Gigabit Industrial Communication Subsystems (ICSSG).
> >>> * Integrated Ethernet switch supporting up to a total of two external
> >>>   ports.
> >>> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
> >>>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
> >>>   peripherals.
> >>> * Centralized System Controller for Security, Power, and Resource
> >>>   Management (DMSC).
> >>>
> >>> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> >>> for further details: https://www.ti.com/lit/pdf/spruim2
> >>>
> >>> Introduce basic support for the AM642 SoC to enable ramdisk or MMC
> >>> boot. Introduce the sdhci, i2c, spi, and uart MAIN domain periperhals
> >>> under cbass_main and the i2c, spi, and uart MCU domain periperhals
> >>> under cbass_mcu.
> >>>
> >>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> >>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> >>
> >> Hmm, there are a few pieces contributed by me, so please do add
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> > 
> > Sure, thanks..
> > 
> > [...]
> > 
> >>> +
> >>> +	sdhci0: mmc@fa10000 {
> >>> +		compatible = "ti,am64-sdhci-8bit";
> >>
> >> Hmm, I tried booting this series on top of 5.11-rc1 + Nishanth's current
> >> ti-k3-dts-next. So, boot of these patches using this baseline fails when using
> >> MMC rootfs, but is ok when using initramfs. This particular compatible and the
> >> corresponding driver change are only in linux-next coming through couple of
> >> patches from the MMC subsystem.
> >>
> >> I am not sure why we would be including stuff that's dependent on some other
> >> patches being merged from a different sub-system? Strangely, this ought to be
> >> caught by dtbs_check, but it is not throwing any errors.
> >>
> >> IMHO, these should only be added if you have no other external dependencies
> >> especially when you are applying on a 5.11-rc baseline. The MMC pull-requests
> >> would not go through arm-soc either.
> >>
> > 
> > Yes, I am aware of this - this is no different from integration we have
> > done in the past as well.. intent is to get bindings in via subsystem
> > trees and dts changes via arm-soc. I always insist that basic ramdisk
> > boot always in the basic introduction tree. mmc, nfs are add-ons that
> > get added via subsystem tree and I host the dts changes - in this case
> > every dts node binding is fine with subsystems already queued in
> > linux-next. And this is no different from what I have noticed on other
> > ARM SoC maintainer trees as well.
> > 
> 
> Hmm, this is kinda counter-intuitive. When I see a dts node, I am expecting the

What is counter intutive about a -next branch be tested against
linux-next tree?

> required driver functionality to have been in (or atleast the binding as per
> documentation), and not having to need to pick additional patches.
> 
> If the intent is to verify/test everything against linux-next and not the
> baseline tree, then I guess this works. But in general, this kinda goes against
> the rules set in submitting patches. For example, see
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/submitting-patches.rst#n44
> 
> And sure enough, this is what I get when I run checkpatch against your tree.

Also read https://www.kernel.org/doc/html/v5.11-rc4/process/2.Process.html#next-trees

You should probably realize linux-next is an integral part of the
process for us now.

> 
> WARNING: DT compatible string "ti,am64-sdhci-8bit" appears un-documented --
> check ./Documentation/devicetree/bindings/
> #347: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:298:
> +		compatible = "ti,am64-sdhci-8bit";
> 
> WARNING: DT compatible string "ti,am64-sdhci-4bit" appears un-documented --
> check ./Documentation/devicetree/bindings/
> #365: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:316:
> +		compatible = "ti,am64-sdhci-4bit";


you are saying basically - wait a complete kernel cycle after a driver
is introduced before we can even test a driver SoC support introduced
without an user in the same kernel version.. which is a disaster and bit-rot

OR

Let the subsystem maintainers also carry the patches for dts - which is
going to be another disaster and creates all kind of avoidable merge
conflicts.

OR

I stage a rc1 and rc2 merge cycle - which makes no sense - these nodes
dont get activated without a compatible match, which gets enabled only
when the corresponding subsystem is merged - they dont break existing
functionality even when the subsystem is merged, it just increases
the functionality as it should. (not to mention that all my follow on
kernel merge trees will have to be rc2 based - since majority nodes
will be introduced there)

dts already has a pain point that we are trying to manage logically
here, this is not a MISRA-C ASIL-D process - follow and exact verbatim
word to word process, that is just plain ridiculous.

When rc1 comes together, which is what my next branch is for, things
should be cohesive - we dont introduce regressions and broken trees -
which is exactly what the -next process makes sure happens.


Now, if you want to launch a product with my -next branch - go ahead, I
don't intent it for current kernel version - you are on your own.

If there is a real risk of upstream next-breaking - speakup with an
real example - All I care about is keeping upstream functional and
useable.

I recheck the linux-next tree almost daily basis for consistency, and I
do appreciate the concern here (and passion) - point is, I think we
might be a bit of an over-reaction if we just look at the other options
in front of us - not to mention, maybe drop the entire idea of dt coming
in from ARM SoC - let the subsystem member create merge conflict and
duke it out.. I don't think any of us want to see that kind of mayhem.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
