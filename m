Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B64056920B9
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 15:21:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232416AbjBJOVg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 09:21:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbjBJOVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 09:21:35 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB52A303FB
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:21:33 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id ud5so16293945ejc.4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 06:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PFa0rHkdpQOgTA52rN1YNMw0CD3vASMGWTDIij4Zh70=;
        b=QOEnxemH1FIO2QuRsKmEx5hXjCRwb+w/YFbaSEjC8mrTA+TZEdY330/drjHnFb0g9O
         Hit4I6+iYritmmlcB5YmSENtFmRTrFV5b65r2NcHCJTLCzSy7Qba1uusz2PStVV74B59
         J+4gO0N0vpSHA0kFvUk3hL5b/lAIt9tF4sOKS3qIKHVxgkjN0glo9Jkyp+8LNKt1LlMo
         lUffQoKya5o9/mgYRoLsTEb9xUo6dTG+PkOVw6ax2M70oPMX4bOTC5Ewxttdt8g3oukx
         wt49YP2HVarhbzd+KrPTdOwrRD07ewmnDKCwnK2GJOKXZ0ozA+KHLwezpvFy/ZnJhY5I
         ecWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFa0rHkdpQOgTA52rN1YNMw0CD3vASMGWTDIij4Zh70=;
        b=rgndQ1uAjgnaErjHIXi3So83XT4ENa9y3fNR3NmjjPEUcaSRJWiiOYtnytlGjc1bOK
         MWdoffb+3LRcTME1q+eMKgHjz/hN/kCFLzbv0NPOv6+3abstzckympenBRa8iCoRrNLN
         0DfdxhPX/D+lCOdHRp9xGpgJDl6awMMOMbcl+BPPCaygO8VxNt6PFFB8+hOc1eC08Ni1
         GbVPFAO7Gpsg07TyNGULB8hjhR1hUophXm/u5c/nzxOzpv+dlDhKG3uQ0YeZdimQvuED
         eyjX+pT0nvVXkDpcERs85cO9bqMhfToFAb+4gsEr/zaThmysxafl1ujh3bDNXgbIxSo3
         /dmQ==
X-Gm-Message-State: AO0yUKVoeb+PvYheBvxfyUewvBf9tCmEc4+9+MQHTE3h6V+pgmhdTl8U
        EGmxSIMpAINsa/CffheyVGedC1RBQywdo48E6Rs=
X-Google-Smtp-Source: AK7set/u9XNa9yRyDSTg5Vgy2KdkrhZPdVH6DOwmLYY/zv376VZU1eFqfKTsns3RskODdrA9/jhfHVYM2Wnr3kRgYWE=
X-Received: by 2002:a17:906:fb87:b0:8a5:c8bd:4ac4 with SMTP id
 lr7-20020a170906fb8700b008a5c8bd4ac4mr1247934ejb.15.1676038892176; Fri, 10
 Feb 2023 06:21:32 -0800 (PST)
MIME-Version: 1.0
References: <20230113192823.6301-1-mr.bo.jangles3@gmail.com>
 <20230113192823.6301-2-mr.bo.jangles3@gmail.com> <ef8eec8a-2ce5-ad1a-afcf-86ee78231017@kernel.org>
In-Reply-To: <ef8eec8a-2ce5-ad1a-afcf-86ee78231017@kernel.org>
Reply-To: mr.bo.jangles3@gmail.com
From:   Logan B <mrbojangles3@gmail.com>
Date:   Fri, 10 Feb 2023 09:21:21 -0500
Message-ID: <CAFR4CiuYqp5k6gcjmt8JV0a=LeNh5hTyVUEaa1HshYkYnS_rXQ@mail.gmail.com>
Subject: Re: [PATCH] Add support for SolidRun Clearfog CN9130 base,pro.
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.org, jon@solid-run.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 10, 2023 at 7:32 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
>
> There is no one to apply your patch as you missed several people.
>
> On 13/01/2023 20:28, Logan Blyth wrote:
>
> Thank you for your patch. There is something to discuss/improve.
>
> 1. Use subject prefixes matching the subsystem (which you can get for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching).
>
> 2. Subject: no full stop.
>
> > From: Logan Blyth <mrbojangles3@gmail.com>
> >
>
> 3. Missing commit msg. Please describe here hardware.
>
>
> > Signed-off-by: Logan Blyth <mrbojangles3@gmail.com>
> > ---
> >  arch/arm64/boot/dts/marvell/Makefile          |   2 +
> >  .../arm64/boot/dts/marvell/cn9130-cf-base.dts | 367 +++++++++++++++
> >  arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts | 428 ++++++++++++++++++
>
> 4. As I wrote on IRC, missing bindings patch (first in the series).
>
> >  3 files changed, 797 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
> >  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-cf-pro.dts
> >
> > diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
> > index 058237681fe5..6b3b4c4856c1 100644
> > --- a/arch/arm64/boot/dts/marvell/Makefile
> > +++ b/arch/arm64/boot/dts/marvell/Makefile
> > @@ -25,4 +25,6 @@ dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db-B.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-A.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += cn9130-crb-B.dtb
> > +dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-pro.dtb
> > +dtb-$(CONFIG_ARCH_MVEBU) += cn9130-cf-base.dtb
> >  dtb-$(CONFIG_ARCH_MVEBU) += ac5-98dx35xx-rd.dtb
> > diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
> > new file mode 100644
> > index 000000000000..f258a539e378
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
> > @@ -0,0 +1,367 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright SolidRun Ltd.
> > + *
> > + * Device tree for the       CN9130 based SOM.
>
> 5. Drop weird space/indent in the middle.
>
> > + */
> > +
> > +#include "cn9130.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +     model = "SolidRun CN9130 based SOM Clearfog Base";
>
> 6. Missing compatible.
>
> > +
> > +     chosen {
> > +             stdout-path = "serial0:115200n8";
> > +     };
> > +
> > +     aliases {
> > +             gpio1 = &cp0_gpio1;
> > +             gpio2 = &cp0_gpio2;
> > +             i2c0 = &cp0_i2c0;
> > +             ethernet0 = &cp0_eth0;
> > +             ethernet1 = &cp0_eth1;
> > +             ethernet2 = &cp0_eth2;
> > +             spi1 = &cp0_spi0;
> > +             spi2 = &cp0_spi1;
> > +     };
> > +
> > +     memory@00000000 {
> > +             device_type = "memory";
> > +             reg = <0x0 0x0 0x0 0x80000000>;
> > +     };
>
> Missing blank line.
>
> > +     v_3_3: regulator-3-3v {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "v_3_3";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             regulator-always-on;
> > +             status = "okay";
>
> Drop, it's by default okay.
>
> > +     };
>
> Missing blank line.
>
> > +     ap0_reg_sd_vccq: ap0_sd_vccq@0 {
>
> Do not use undercores in node names.
>
> Node names should contain generic prefix or suffix. In your case -
> "regulator-" prefix as your node above.
>
>
> > +             compatible = "regulator-gpio";
> > +             regulator-name = "ap0_sd_vccq";
> > +             regulator-min-microvolt = <1800000>;
> > +             regulator-max-microvolt = <1800000>;
> > +             states = <1800000 0x1 3300000 0x0>;
> > +     };
> > +
> > +     cp0_reg_usb3_vbus0: cp0_usb3_vbus@0 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "cp0-xhci0-vbus";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             enable-active-high;
>
> That's not correct property if you do not have GPIO... where is GPIO?
>
> > +     };
> > +
> > +     cp0_usb3_0_phy0: cp0_usb3_phy@0 {
>
> Multiple issues here...
>
> Node names should be generic, so "phy".
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>
> @0 points you have reg=0, where is it? Why 0?
>
> All problems above are also in other places.
>
>
> > +             compatible = "usb-nop-xceiv";
> > +             vcc-supply = <&cp0_reg_usb3_vbus0>;
> > +     };
> > +
> > +     cp0_reg_usb3_vbus1: cp0_usb3_vbus@1 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "cp0-xhci1-vbus";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             enable-active-high;
> > +     };
> > +
> > +     cp0_usb3_0_phy1: cp0_usb3_phy@1 {
> > +             compatible = "usb-nop-xceiv";
> > +             vcc-supply = <&cp0_reg_usb3_vbus1>;
> > +     };
> > +
> > +     cp0_reg_sd_vccq: cp0_sd_vccq@0 {
> > +             compatible = "regulator-gpio";
> > +             regulator-name = "cp0_sd_vccq";
> > +             regulator-min-microvolt = <1800000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             states = <1800000 0x1
> > +                     3300000 0x0>;
> > +     };
> > +
> > +     cp0_reg_sd_vcc: cp0_sd_vcc@0 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "cp0_sd_vcc";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             enable-active-high;
> > +             regulator-always-on;
> > +     };
> > +
> > +     cp0_sfp_eth0: sfp-eth@0 {
> > +             compatible = "sff,sfp";
> > +             i2c-bus = <&cp0_i2c1>;
> > +             los-gpio = <&expander0 12 GPIO_ACTIVE_HIGH>;
> > +             mod-def0-gpio = <&expander0 15 GPIO_ACTIVE_LOW>;
> > +             tx-disable-gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
> > +             tx-fault-gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
> > +             maximum-power-milliwatt = <2000>;
>
> Be sure you run `make dtbs_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>
>
> > +     };
> > +};
> > +
> > +&uart0 {
>
> Overrides are usually ordered by name. Isn't the case for Marvell?
>
> > +     status = "okay";
> > +};
> > +
> > +// on-board eMMC
>
> Comment style /* */
>
> > +&ap_sdhci0 {
> > +     pinctrl-names = "default";
> > +     bus-width = <8>;
> > +     vqmmc-supply = <&ap0_reg_sd_vccq>;
> > +     status = "okay";
> > +};
> > +
> > +&cp0_crypto {
> > +     status = "disabled";
> > +};
> > +
> > +&cp0_ethernet {
> > +     status = "okay";
> > +};
> > +
> > +&cp0_gpio1 {
> > +     status = "okay";
> > +};
> > +
> > +&cp0_gpio2 {
> > +     status = "okay";
> > +};
> > +
> > +// EEPROM
> > +&cp0_i2c0 {
> > +     status = "okay";
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&cp0_i2c0_pins>;
> > +     clock-frequency = <100000>;
> > +
> > +     /*
> > +      * PCA9655 GPIO expander, up to 1MHz clock.
> > +      *      0-CON3 CLKREQ#
> > +      *      1-CON3 PERST#
> > +      *      2-CON2 PERST#
> > +      *      3-CON3 W_DISABLE
> > +      *      4-CON2 CLKREQ#
> > +      *      5-USB3 overcurrent
> > +      *      6-USB3 power
> > +      *      7-CON2 W_DISABLE
> > +      *      8-JP4 P1
> > +      *      9-JP4 P4
> > +      * 10-JP4 P5
> > +      * 11-m.2 DEVSLP
> > +      * 12-SFP_LOS
> > +      * 13-SFP_TX_FAULT
> > +      * 14-SFP_TX_DISABLE
> > +      * 15-SFP_MOD_DEF0
> > +      */
> > +     expander0: gpio-expander@20 {
> > +             /*
> > +              * This is how it should be:
> > +              * compatible = "onnn,pca9655", "nxp,pca9555";
> > +              * but you can't do this because of the way I2C works.
>
> ??? Why?
>
> > +              */
> > +             compatible = "nxp,pca9555";
> > +             gpio-controller;
> > +             #gpio-cells = <2>;
> > +             reg = <0x20>;
>
> reg is usually second property, after compatible
>
> > +
> > +             pcie1_0_clkreq {
>
> No underscores in node names. Use hyphens/dashes.
>
> > +                     gpio-hog;
> > +                     gpios = <0 GPIO_ACTIVE_LOW>;
> > +                     input;
> > +                     line-name = "pcie1.0-clkreq";
> > +             };
> > +             pcie1_0_w_disable {
> > +                     gpio-hog;
> > +                     gpios = <3 GPIO_ACTIVE_LOW>;
> > +                     output-low;
> > +                     line-name = "pcie1.0-w-disable";
> > +             };
> > +             usb3_ilimit {
> > +                     gpio-hog;
> > +                     gpios = <5 GPIO_ACTIVE_LOW>;
> > +                     input;
> > +                     line-name = "usb3-current-limit";
> > +             };
> > +             usb3_power {
> > +                     gpio-hog;
> > +                     gpios = <6 GPIO_ACTIVE_HIGH>;
> > +                     output-high;
> > +                     line-name = "usb3-power";
> > +             };
> > +             m2_devslp {
> > +                     gpio-hog;
> > +                     gpios = <11 GPIO_ACTIVE_HIGH>;
> > +                     output-low;
> > +                     line-name = "m.2 devslp";
> > +             };
> > +     };
> > +
> > +     // The MCP3021 supports standard and fast modes
> > +     mikrobus_adc: mcp3021@4c {
>
> Node names should be generic.
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>
> > +             compatible = "microchip,mcp3021";
> > +             reg = <0x4c>;
> > +     };
> > +
> > +     // EEPROM on the SOM
> > +     eeprom@53 {
> > +             compatible = "atmel,24c02";
> > +             reg = <0x53>;
> > +             pagesize = <16>;
> > +     };
> > +};
> > +
> > +// I2C Master
> > +&cp0_i2c1 {
> > +     status = "okay";
> > +     clock-frequency = <100000>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&cp0_i2c1_pins>;
> > +};
> > +
> > +&cp0_gpio1 {
> > +     // Release switch reset
> > +     phy_reset {
>
> No underscores in node names
>
> All the comments apply everywhere else. I'll stop review at this place.
>
> Best regards,
> Krzysztof
>
Thank you for your comments and instructions. I will use the scripts
provided in the kernel and make the changes you have indicated.

-- 
Logan
