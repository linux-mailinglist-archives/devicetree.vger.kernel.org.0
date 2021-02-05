Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD4EA310801
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 10:38:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbhBEJgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 04:36:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230208AbhBEJeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 04:34:11 -0500
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14A2CC061793
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 01:33:31 -0800 (PST)
Received: by mail-qt1-x82b.google.com with SMTP id h16so4475483qth.11
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 01:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ojCeZlO98s2SPY23e+5Mf36GGQC+0u+nCZYUoLCQnwU=;
        b=c3m2FX9eauVZ9sIWQoZ+8mW8Xl5kQUxMzUIXIiXpEUEEdseHz+zR2axVX4AWVDhyh1
         nYzlpYc7gA23nipHsSuC9lATjWbV+qKnwJxrpYZP7hP8UyikduSztl2Kg31pDEJzshY3
         vjn6u4wX+cOGp1HFsTDaos9fsfZZJKT0g694Pqd89AuFJjoVTiHynmhXFMwqLvKfzLEA
         q9o4k/V1Kvsq4DuGBqqU3jnjHB//7WErk7+czsnf9rHGhYV4n/SXI5T/0euC+F/+Jifp
         6mfu0RkpmP8U8Imd5i4UsNZBQD1B4krshdK5FywN50HEHyqQD+RsiQvEMdPC3uexUaaP
         wORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ojCeZlO98s2SPY23e+5Mf36GGQC+0u+nCZYUoLCQnwU=;
        b=GMdQJgMeYrO2qOkzzGUB9lGrZd39KPTyXp1b/h53zgAS2bHIPKpxlxN7Eq5/AFoRSW
         AmrXVaxXe1dtUcghxCwSCsVELyACvjezj7puXd8dwN/Mftm+mELG+V8MJUG+0B8EEqC9
         4EMu8rOSbOI0Bk1hsQBmPRsVD/T24CVNK1gS33dcDYhwDGbdmiZJxpKKV1EE6TXwh5cy
         0Yytqq+AUSz09QdYV5/ZkQDNQyY32KK11oVI/iPAL1ngpRAcszwJ8tLv3oUFX1J0H2es
         z0oWrMvG50b2Gm9LO1S2Saqp/eWCENPLBnpXU1uyvtD9BZ/wFbJO5m0CIk/MQLF/sWrA
         zePw==
X-Gm-Message-State: AOAM530CeZqelTjELZh5pTVLZdc9aa3HXSX/OSZfYhRJphvNG9eD5D45
        mgBANo9F8AruwrAat2EoTYMHJgRY65/2KD5m9osA0A==
X-Google-Smtp-Source: ABdhPJw3Y0hQpeQyuzEHQLbC/PYwn+TCOT2lEoDgw8N2kDbcDCqdOYxzzpvB1XfBAWP2gvhu09yxOoofpcZtoebCUkY=
X-Received: by 2002:aed:204d:: with SMTP id 71mr3478755qta.318.1612517610095;
 Fri, 05 Feb 2021 01:33:30 -0800 (PST)
MIME-Version: 1.0
References: <20210203133138.10754-1-kostap@marvell.com> <20210203133138.10754-3-kostap@marvell.com>
 <87h7mtckxe.fsf@tarshish> <DM5PR18MB14529A28A31785A574A4DEF5CAB49@DM5PR18MB1452.namprd18.prod.outlook.com>
 <20210203143851.GR1463@shell.armlinux.org.uk> <DM5PR18MB1452A6CF26E3A54730872A14CAB49@DM5PR18MB1452.namprd18.prod.outlook.com>
 <20210203161137.GS1463@shell.armlinux.org.uk> <DM5PR18MB14525D61BC500B0026F30D07CAB49@DM5PR18MB1452.namprd18.prod.outlook.com>
In-Reply-To: <DM5PR18MB14525D61BC500B0026F30D07CAB49@DM5PR18MB1452.namprd18.prod.outlook.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Fri, 5 Feb 2021 10:33:18 +0100
Message-ID: <CAPv3WKdvzZm2qpaNBr7zCzqnzuadhreTe-2E=91TxG2zGQ692A@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH 02/11] dts: mvebu: Update A8K AP806 SDHCI settings
To:     Kostya Porotchkin <kostap@marvell.com>
Cc:     Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Baruch Siach <baruch@tkos.co.il>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "andrew@lunn.ch" <andrew@lunn.ch>,
        "jaz@semihalf.com" <jaz@semihalf.com>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Stefan Chulski <stefanc@marvell.com>,
        Ben Peled <bpeled@marvell.com>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kosta,

Let me chime in.

=C5=9Br., 3 lut 2021 o 17:57 Kostya Porotchkin <kostap@marvell.com> napisa=
=C5=82(a):
>
> Hello, Russell,
> I agree that this patch needs rework.
> I will definitely do it and issue a new version.
>
> > On Wed, Feb 03, 2021 at 02:50:45PM +0000, Kostya Porotchkin wrote:
> > > [KP] So for older systems this "slow mode" parameter could be set on =
the
> > board level.
> > > When it is set in ap80x,dtsi file it downgrades all systems to HS-SDR=
52, even
> > if they support HS400 on AP side.
> > > MacchiatoBIN AP eMMC is connected to 3.3v regulator and has "no-1-8-v=
"
> > flag set, so it should remain in low speed anyway.
> >
> > Your reasoning does not make sense.
> >
> > The ap80x.dtsi file does not specify "marvell,xenon-phy-slow-mode".
> > It is not specified at this level. It is already specified at board lev=
el.
> [KP] it does. In current armada-ap80x.dtsi File this specification is on =
row 260:
>                         ap_sdhci0: sdhci@6e0000 {
>                                 compatible =3D "marvell,armada-ap806-sdhc=
i";
>                                 reg =3D <0x6e0000 0x300>;
>                                 interrupts =3D <GIC_SPI 16 IRQ_TYPE_LEVEL=
_HIGH>;
>                                 clock-names =3D "core";
>                                 clocks =3D <&ap_clk 4>;
>                                 dma-coherent;
>                                 marvell,xenon-phy-slow-mode;
>                                 status =3D "disabled";
>                         };
> So I would like to remove this row.
>
> > Given that Macchiatobin will still use slow mode, why remove the
> > marvell,xenon-phy-slow-mode property from this file?
> [KP] Agree, I will keep this property in Macchiatobin DTS file.
>

Please do it another way around.
1. We need to leave the device tree bindings intact as much as
possible -  specifically for Armada 7k8k changes in this area have
been causing enough problems in the past, breaking compatibility
between kernel revisions. Moving the property to board level can be
good here, but forces all other board dts files to adjust.
Unfortunately Linux is a source of truth for the arm64 device tree
bindings, but please note other OS's use those files as well - let's
minimize the impact for existing HW and drivers.

2. What I propose is to remove `marvell,xenon-phy-slow-mode` from
armada-ap80x.dtsi and add below in armada-ap806.dtsi:
&ap_sdhci0 {
         marvell,xenon-phy-slow-mode;
 };

This way AP807 becomes free from the unwanted slow mode setting. Also
any user of Armada 7k8k the B0 revision can add below to the board
file:

&ap_sdhci0 {
+      /delete-property/marvell,xenon-phy-slow-mode;
 };

3. Contrary to the SDK version, sdhci-xenon.c is not capable of
checking the SoC revision. HS200 is disabled for all versions of AP806
there - I believe this place requires revisiting, to start relying
explicitly on the `marvell,xenon-phy-slow-mode` setting, rather than
the compatible string. I can handle this one.

4. Please move armada-8040-db.dts changes to a separate patch, please.

Thanks,
Marcin



> >
> > Also, if you're upgrading ap80x.dtsi to use a bus-width of 8, why keep =
the bus-
> > width specifier of 8 in the board files?
> [KP] The bus width is updated in A8040 DB DTS. This board utilizes 8-bit =
interface.
> The armada-ap80x.dtsi file does not specifies the bus width since it is b=
oard-specific.
>
> >
> > This patch just doesn't make sense, and your responses to our points se=
em to
> > add to the confusion.
> [KP] I am sorry about it. Hope my last response clarifies it.
>
> Kosta
> >
> > --
> > RMK's Patch system: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> > 3A__www.armlinux.org.uk_developer_patches_&d=3DDwIBAg&c=3DnKjWec2b6R0
> > mOyPaz7xtfQ&r=3D-
> > N9sN4p5NSr0JGQoQ_2UCOgAqajG99W1EbSOww0WU8o&m=3DV27OOcgNqKN2
> > WrlW2YFvHm_D_dXoP44wPd5zyOKvEBk&s=3Do3OrmStt1ZuXVNlYklTV_b1wY35
> > NvPPrdLqwGgtxRZU&e=3D
> > FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
