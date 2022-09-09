Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 183725B3E17
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 19:42:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbiIIRmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 13:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbiIIRmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 13:42:16 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E79B98CB0
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 10:42:15 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id fv3so2208891pjb.0
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 10:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=i0TWXvsMdzImF9hLkcZNKk+2MjIILmGHGg2qkEi7CcA=;
        b=ZBI1LtnkLZ2w2b7p6oHqxdChxFGPWJXfmp5TlVlDmHeHCijJXtQfjz7IHI2IriPIMF
         f95h64zEmTxv1+DXoTxsj6cRwdC1+GnvPm0JrTms/AGZLOcHNFuEBk6AhT6kPYqfHFmE
         6bDNh1tlHqdpcSzTgOefQ9CgJD2IqhiECkFP9CSIYs1N1sGMsa2Ei8kNs6yZox26GAtZ
         iONIXHmphNPHtiCxrPavb7H6I0KJdDUDNNge9BQiMEJ4nTIuBKozvhWHK9CoL1uDc8Cf
         JL94MJojJBhXLy0AOoH6zfaglKh9jHeaGHRZV1XD/Bfy2L5PWc8m8Yjb06WaoaYOVFeJ
         M7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=i0TWXvsMdzImF9hLkcZNKk+2MjIILmGHGg2qkEi7CcA=;
        b=xhYD0Icea6+2Mgo+4g3AHyuvuG1GpoQN+GsUJK4sy3pN5T8NVetexIYj7xAnFyFB5S
         sTc7yt2eNclKTguWPasEc6ZJzdmGRfW/vO6aIPm2Zb0wLsToQsqpap2AetMIUhrY+0Lx
         rr4nPT9iUZZ7aomAVAa0YE59Og+lu/w3A4DFXvCEhkAT83Ht5QrjiFmtUTorfcCcFNLU
         kSwEo/Z4XzidfESU9zsK93jIKQyORxLh8KUoamkGZ58GA3gn09GZ22xXc/7kqrkeDZcx
         RdLw+DJg5OjRgjTqBrzVo+5onMW/bgLIK7RI2xMPLILEboPktmD7oOvXZgJammhk4lTh
         Io2w==
X-Gm-Message-State: ACgBeo0mLxXpFrcD5HQrN1e+imNud/uG9CCSgrWXsRPi+dQqsTgLIxl+
        TsdlB5jiJE6apSFCk1GN2n+c2VZZB5NfDZK9dJNCng==
X-Google-Smtp-Source: AA6agR7PVoOHHD6bpgJ/hR/7PXLQu2R8LF81Vy2s6/XMli+cSHaT4YUyimg9nypVDN3AAMWlgQYuQwo3RVsQWwQxlFs=
X-Received: by 2002:a17:902:be02:b0:172:d409:e057 with SMTP id
 r2-20020a170902be0200b00172d409e057mr14704787pls.90.1662745334819; Fri, 09
 Sep 2022 10:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220908154903.4100386-1-tharvey@gateworks.com> <2530681.Lt9SDvczpP@steina-w>
In-Reply-To: <2530681.Lt9SDvczpP@steina-w>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 9 Sep 2022 10:42:03 -0700
Message-ID: <CAJ+vNU2sKkjv1q=oPD++1DE7uUiXJYi75-fpRRNboabUbUwCqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-venice-gw74xx: add PCIe support
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 8, 2022 at 10:59 PM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi Tim,
>
> Am Donnerstag, 8. September 2022, 17:49:03 CEST schrieb Tim Harvey:
> > Add PCIe support on the Gateworks GW74xx board. While at it,
> > fix the related gpio line names from the previous incorrect values.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../dts/freescale/imx8mp-venice-gw74xx.dts    | 40 +++++++++++++++++--
> >  1 file changed, 37 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts index
> > e0fe356b662d..7644db61d631 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > @@ -8,6 +8,7 @@
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/linux-event-codes.h>
> >  #include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/phy/phy-imx8-pcie.h>
> >
> >  #include "imx8mp.dtsi"
> >
> > @@ -100,6 +101,12 @@ led-1 {
> >               };
> >       };
> >
> > +     pcie0_refclk: pcie0-refclk {
> > +             compatible = "fixed-clock";
> > +             #clock-cells = <0>;
> > +             clock-frequency = <100000000>;
> > +     };
> > +
> >       pps {
> >               compatible = "pps-gpio";
> >               pinctrl-names = "default";
> > @@ -215,8 +222,8 @@ &gpio1 {
> >  &gpio2 {
> >       gpio-line-names =
> >               "", "", "", "", "", "", "", "",
> > -             "", "", "", "", "", "", "", "",
> > -             "pcie3_wdis#", "", "", "pcie1_wdis@", "pcie2_wdis#", "",
> "", "",
> > +             "", "", "", "", "", "", "pcie3_wdis#", "",
> > +             "", "", "pcie2_wdis#", "", "", "", "", "",
> >               "", "", "", "", "", "", "", "";
> >  };
> >
> > @@ -562,6 +569,28 @@ &i2c4 {
> >       status = "okay";
> >  };
> >
> > +&pcie_phy {
> > +     fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> > +     fsl,clkreq-unsupported;
> > +     clocks = <&pcie0_refclk>;
> > +     clock-names = "ref";
> > +     status = "okay";
> > +};
> > +
> > +&pcie {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_pcie0>;
> > +     reset-gpio = <&gpio2 17 GPIO_ACTIVE_LOW>;
> > +     clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> > +              <&clk IMX8MP_CLK_PCIE_ROOT>,
> > +              <&clk IMX8MP_CLK_HSIO_AXI>;
> > +     clock-names = "pcie", "pcie_aux", "pcie_bus";
>
> With the still pending dt-binding patch at [1] the clock order shall be
> "pcie", "pcie_bus", "pcie_phy".
>
> Best regards,
> Alexander
>
> [1] https://lore.kernel.org/lkml/20220822184701.25246-2-Sergey.Semin@baikalelectronics.ru/
>

Alexander,

Interesting... the imx8pm-evk PCIe patch was accepted with the
bindings I used which are current. So I suppose if/when the patch you
pointed to gets accepted some existing bindings will need to change to
be compliant.

Best Regards,

Tim
