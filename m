Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 355C0521412
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 13:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbiEJLpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 07:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240842AbiEJLpb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 07:45:31 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A71686AFF
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 04:41:33 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id e3so18182293ios.6
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 04:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5NSLtMW8lsWjf+NFgBL7FnQgrCqrvvIapyadPxLxjY8=;
        b=ND3nIJ8vevB929VRK9EErWSYeXoXHet8LCfs2gSBv6Sy7DTnHCuwM9Rz3xKayezbwI
         6HMVR7k8CaUCXw4rZVBf2WB7D0M9GDHFAumYPKMOGr+LQ+bE97nTNA7X3VmXPiO3yS3F
         c3cZG9APXpVlEBavoZ8EG2MYcJD1219+Ddu1Q1lkMYPoh0nNBd+T3EvPDprnzBIiqR+y
         UJUO5dS/ZoBFUY9ghvIK9ZDh7ACpQQ0INKlyMLcgJNTPaeMXmo454lFN3Cn8A5ekpm/f
         TJdQzyigoryX9lEcNkG0hbjm3tX9URwDvaFL7VWFjMS5b5Yry4R1/AkCHUopyp9eLo1n
         U8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5NSLtMW8lsWjf+NFgBL7FnQgrCqrvvIapyadPxLxjY8=;
        b=Vlwi3rqC4894XqiNSARO18wEXs0YXuBozuN3qVIXf/WnA4nj8CRVE1CGFE+/KyX6Gy
         fzb70k6fJBaOi3rm3awq1WUGfsSgYlUDrVkmVYbUzQ77+FHSavF7cqC4PjLl77VWJm1s
         AedVAvSQeOikPhYIOSPh/18sqLeVDPW1rilKCfNhfRBvp4NjOHRFzHYgvMQq0tHkgmNs
         tMaFigwKt6JG4qI3duZ2kFBYWXiz/I/JokvXqd2ph+yFFb8kY5/lfCJLsRPpgnE3ACN4
         NIcZ5oB2rPZagwDnyxa6F95qIaoNPEe088vccH+9ctMXMNvAI9beuZZIj9On3dhf0vlp
         BH1w==
X-Gm-Message-State: AOAM532/SjxKCwF9s7uT3aMemfN3e1uoGY9G+fEOS1Yalm5XeTG+AZG7
        +6PuRGIypULfTlonSw6dMb0UVcT1IL7kBPGmiWHLGJ10b/Sf4kejea4=
X-Google-Smtp-Source: ABdhPJzMkCq7T5jgkVtVAvwDCOOWnAZIYmwahfibvG3muR/o0Qdvts8gO6VAQlYP708H7Vrv5LYJBLs7kz/DZDE53ss=
X-Received: by 2002:a5e:c24c:0:b0:657:a86a:d1b0 with SMTP id
 w12-20020a5ec24c000000b00657a86ad1b0mr8667800iop.43.1652182892991; Tue, 10
 May 2022 04:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220509110028.144226-1-robert.marko@sartura.hr>
 <20220509110028.144226-2-robert.marko@sartura.hr> <8e22cbf7-eee1-0ec7-10f9-3839ec80dfbf@linaro.org>
In-Reply-To: <8e22cbf7-eee1-0ec7-10f9-3839ec80dfbf@linaro.org>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 10 May 2022 13:41:22 +0200
Message-ID: <CA+HBbNE1w5w6c8MwMuSwCFzjnyKOQ7Y0MV4bPijJW3rekWLo4w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: marvell: add support for Methode eDPU
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org, Andrew Lunn <andrew@lunn.ch>,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        shawnguo@kernel.org, Linus Walleij <linus.walleij@linaro.org>,
        kostap@marvell.com, devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 12:20 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 09/05/2022 13:00, Robert Marko wrote:
> > Methode eDPU is an Armada 3720 powered board based on the Methode uDPU.
> >
> > They feature the same CPU, RAM, and storage as well as the form factor.
> >
> > However, eDPU only has one SFP slot plus a copper G.hn port.
> >
> > In order to reduce duplication, split the uDPU DTS into a common one.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  arch/arm64/boot/dts/marvell/Makefile          |   1 +
> >  .../boot/dts/marvell/armada-3720-eDPU.dts     |  14 ++
> >  .../boot/dts/marvell/armada-3720-uDPU.dts     | 148 +---------------
> >  .../boot/dts/marvell/armada-3720-uDPU.dtsi    | 163 ++++++++++++++++++
> >  4 files changed, 179 insertions(+), 147 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> >  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
> > index 1c794cdcb8e6..104d7d7e8215 100644
> > --- a/arch/arm64/boot/dts/marvell/Makefile
> > +++ b/arch/arm64/boot/dts/marvell/Makefile
> > @@ -1,6 +1,7 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  # Mvebu SoC Family
> >  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
> > +dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-eDPU.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-emmc.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-ultra.dtb
> > diff --git a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> > new file mode 100644
> > index 000000000000..6b573a6854cc
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> > @@ -0,0 +1,14 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "armada-3720-uDPU.dtsi"
> > +
> > +/ {
> > +     model = "Methode eDPU Board";
> > +     compatible = "methode,edpu", "marvell,armada3720";
>
> You need also bindings for the board compatible. Someone should convert
> the Documentation/devicetree/bindings/arm/marvell/armada-37xx.txt to YAML.

Ok, I can convert the SoC compatibles at least for now.
Any advice you can give me on how the handle the Espressobin boards
having multiple board-specific compatibles?
For example, Espressobin V7 has:
"globalscale,espressobin-v7", "globalscale,espressobin"

>
> > +};
> > +> +  sfp_eth1: sfp-eth1 {
>
> Generic node names, please.

Can you give me an example of what would be appropriate here because the SFP
bindings example utilizes the same naming scheme as used here?

>
> > +             compatible = "sff,sfp";
> > +             i2c-bus = <&i2c1>;
> > +             los-gpio = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
> > +             mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
> > +             tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
> > +             tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
> > +             maximum-power-milliwatt = <3000>;
> > +     };
> > +};
> > +
> > +&sdhci0 {
> > +     status = "okay";
> > +     bus-width = <8>;
> > +     mmc-ddr-1_8v;
> > +     mmc-hs400-1_8v;
> > +     marvell,pad-type = "fixed-1-8v";
> > +     non-removable;
> > +     no-sd;
> > +     no-sdio;
> > +};
> > +
> > +&spi0 {
> > +     status = "okay";
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&spi_quad_pins>;
> > +
> > +     spi-flash@0 {
>
> Run dtbs_check and fix the errors.

Ok, will split the DTSI and eDPU commits and fixup nodes in between.
>
> > +             compatible = "jedec,spi-nor";
> > +             reg = <0>;
> > +             spi-max-frequency = <54000000>;
> > +
> > +             partitions {
> > +                     compatible = "fixed-partitions";
> > +                     #address-cells = <1>;
> > +                     #size-cells = <1>;
> > +                     /* only bootloader is located on the SPI */
> > +                     partition@0 {
> > +                             label = "firmware";
> > +                             reg = <0x0 0x180000>;
> > +                     };
> > +
> > +                     partition@180000 {
> > +                             label = "u-boot-env";
> > +                             reg = <0x180000 0x10000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&pinctrl_nb {
> > +     i2c2_recovery_pins: i2c2-recovery-pins {
> > +             groups = "i2c2";
> > +             function = "gpio";
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     status = "okay";
> > +     pinctrl-names = "default", "recovery";
> > +     pinctrl-0 = <&i2c2_pins>;
> > +     pinctrl-1 = <&i2c2_recovery_pins>;
> > +     /delete-property/mrvl,i2c-fast-mode;
> > +     scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +     sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > +
> > +     nct375@48 {
>
> Generic node names, representing class of a device.
Ok, will rename in v2.
>
> > +             status = "okay";
>
> OK status is by default, why do you need it? Also, it goes as last property.

It's not needed, I have not changed any nodes, they are just
copy/paste during the DTS split.
Will drop it in v2.

Regards,
Robert
>
> > +             compatible = "ti,tmp75c";
> > +             reg = <0x48>;
> > +     };
> > +
> > +     nct375@49 {
> > +             status = "okay";
> > +             compatible = "ti,tmp75c";
> > +             reg = <0x49>;
> > +     };
> > +};
> > +
> > +&eth0 {
> > +     status = "okay";
> > +     managed = "in-band-status";
> > +     phys = <&comphy1 0>;
> > +};
> > +
> > +&eth1 {
> > +     phy-mode = "sgmii";
> > +     status = "okay";
> > +     managed = "in-band-status";
> > +     phys = <&comphy0 1>;
> > +     sfp = <&sfp_eth1>;
> > +};
> > +
> > +&usb3 {
> > +     status = "okay";
> > +     phys = <&usb2_utmi_otg_phy>;
> > +     phy-names = "usb2-utmi-otg-phy";
> > +};
> > +
> > +&uart0 {
> > +     status = "okay";
> > +};
>
>
> Best regards,
> Krzysztof



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
