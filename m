Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 525A93088A4
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 12:55:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232244AbhA2Ly1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 06:54:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232173AbhA2K0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 05:26:17 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 016F0C08ECA9
        for <devicetree@vger.kernel.org>; Fri, 29 Jan 2021 02:24:30 -0800 (PST)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1l5PzP-00010R-L4; Fri, 29 Jan 2021 10:22:51 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1l5PzO-0004CB-NP; Fri, 29 Jan 2021 10:22:50 +0100
Date:   Fri, 29 Jan 2021 10:22:50 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     DTML <devicetree@vger.kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/3] arm64: dts: imx: Add i.mx8mm nitrogen8mm basic
 dts support
Message-ID: <20210129092250.4cet62bqkju3i3vp@pengutronix.de>
References: <20210118111531.903154-1-adrien.grassein@gmail.com>
 <20210118111531.903154-3-adrien.grassein@gmail.com>
 <20210128161845.lvex3vh6xfa64b3h@pengutronix.de>
 <CABkfQAHDoFpJQSE3Ls5V_jyiq5N-VO=LvZbb+pvdCRZpm+PjwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABkfQAHDoFpJQSE3Ls5V_jyiq5N-VO=LvZbb+pvdCRZpm+PjwA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:26 up 57 days, 23:15, 34 users,  load average: 0.06, 0.14,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adrien,

On 21-01-28 18:23, Adrien Grassein wrote:

> > > +&i2c1 {
> > > +     clock-frequency = <400000>;
> >                             ^
> >                 Is the i2c errata fixed on the imx8?
> 
> I don't know. What is this errata?
> Should I set a lower speed for the particular i2c?

The max. clock on iMX6 is 375kHz due to errate ERR007805
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

> >
> > > +     pinctrl-names = "default", "gpio";
> >                                      ^
> >                         no pinctrl for gpio.
> 
> Yes, it's a bug, thanks
> 
> > > +     pinctrl-0 = <&pinctrl_i2c1>;
> > > +     status = "okay";
> > > +
> > > +     pmic@8 {
> > > +             compatible = "nxp,pf8121a";
> > > +             reg = <0x8>;
> > > +
> > > +             regulators {
> > > +                 reg_ldo1: ldo1 {
> >                         ^
> >                    alignment
> 
> OK
> 
> > > +                             regulator-min-microvolt = <1500000>;
> > > +                             regulator-max-microvolt = <5000000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_ldo2: ldo2 {
> > > +                             regulator-min-microvolt = <1500000>;
> > > +                             regulator-max-microvolt = <5000000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_ldo3: ldo3 {
> > > +                             regulator-min-microvolt = <1500000>;
> > > +                             regulator-max-microvolt = <5000000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_ldo4: ldo4 {
> > > +                             regulator-min-microvolt = <1500000>;
> > > +                             regulator-max-microvolt = <5000000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck1: buck1 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck2: buck2 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_sw3: buck3 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck4: buck4 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck5: buck5 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck6: buck6 {
> > > +                             regulator-min-microvolt = <400000>;
> > > +                             regulator-max-microvolt = <1800000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_buck7: buck7 {
> > > +                             regulator-min-microvolt = <3300000>;
> > > +                             regulator-max-microvolt = <3300000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> > > +
> > > +                     reg_vsnvs: vsnvs {
> > > +                             regulator-min-microvolt = <1800000>;
> > > +                             regulator-max-microvolt = <3300000>;
> > > +                             regulator-boot-on;
> > > +                             regulator-always-on;
> > > +                     };
> >
> > Do we really need to have all regulators marked as always-on?
> >
> I used the definition present on the example.
> I will remove this (for the one I don't use).

Can you test to remove all always-on except for those really needed e.g.
the vddr-ref. Regulators are obtained on demand by the devices. This
allows us to save power e.g. in suspend-to-ram case.

> > > +             };
> > > +     };
> > > +};
> > > +
> > > +&i2c3 {
> > > +     clock-frequency = <100000>;
> > > +     pinctrl-names = "default", "gpio";
> > > +     pinctrl-0 = <&pinctrl_i2c3>;
> > > +     status = "okay";
> > > +
> > > +     i2cmux@70 {
> > > +             compatible = "nxp,pca9540";
> > > +             reg = <0x70>;
> > > +             #address-cells = <1>;
> > > +             #size-cells = <0>;
> > > +
> > > +             i2c3 {
> > > +                     reg = <0>;
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     rtc@68 {
> > > +                             compatible = "microcrystal,rv4162";
> > > +                             pinctrl-names = "default";
> > > +                             pinctrl-0 = <&pinctrl_i2c3a_rv4162>;
> > > +                             reg = <0x68>;
> >
> > reg should be the 2nd property, after the compatible.
> >
> OK.
> 
> > > +                             interrupts-extended = <&gpio4 22 IRQ_TYPE_LEVEL_LOW>;
> > > +                             wakeup-source;
> > > +                     };
> > > +             };
> > > +     };
> > > +};
> > > +
> > > +/* console */
> > > +&uart2 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&pinctrl_uart2>;
> > > +     assigned-clocks = <&clk IMX8MM_CLK_UART2>;
> > > +     assigned-clock-parents = <&clk IMX8MM_CLK_24M>;
> > > +     status = "okay";
> > > +};
> > > +
> > > +/* eMMC */
> > > +&usdhc1 {
> > > +     bus-width = <8>;
> > > +     sdhci-caps-mask = <0x80000000 0x0>;
> >                 ^
> > This is a SD host controller property according the doc.
> >
> Yes, I don't understand the point, sorry.
> This property is read by the host driver, but should be present here
> (like in some other dts).

I've never seen this property. I said "This is a SD host controller"
because your comment says that this usdhc controller is used for eMMC
which is not an SD controller.

> > > +     non-removable;
> > > +     pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > > +     pinctrl-0 = <&pinctrl_usdhc1>;
> > > +     pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> > > +     pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> > > +     status = "okay";
> > > +};
> > > +
> > > +/* sdcard */
> > > +&usdhc2 {
> > > +     bus-width = <4>;
> > > +     cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> > > +     pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > > +     pinctrl-0 = <&pinctrl_usdhc2>;
> > > +     pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> > > +     pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> > > +     vqmmc-supply = <&reg_ldo2>;
> > > +     status = "okay";
> > > +};
> > > +
> > > +&wdog1 {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&pinctrl_wdog>;
> > > +     fsl,ext-reset-output;
> > > +     status = "okay";
> > > +};
> > > +
> > > +&iomuxc {
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&pinctrl_hog>;
> >
> > It would be nice to avoid such hog's. Instead those gpios should get
> > configured by the device(s) using those.
> >
> Once again (sorry), I don't understand the point.
> I did this like any other imx8 board (imx8mq-nitrogem for example).

Question is where are those pins used and for what purpose. It is common
to specify the muxing within the device nodes like you did for the wdog1
device. This mechanism here is something like: "Oh I don't wanna setup
the muxing on the correct places, so let's mux it here in glob". Your
hog group isn't really large but it would be nice to avoid it since day
one.

Regards,
  Marco
