Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 814F164109C
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 23:29:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234555AbiLBW3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 17:29:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234389AbiLBW3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 17:29:34 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E52F8FCC3
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 14:29:32 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id jl24so5884062plb.8
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 14:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GDvPEgw54XMXnHzNSFDDYTrwGtxyeOf1PlA18WSZUyw=;
        b=IIj6sXH1Y1xQiin9pYNGovuDGIU+1okfMlKkWcTa1IOEZwsS2c2HsrYD0IJkR3Bl5z
         fy0WP98jps6Mv56gZrL9UEzrhFUHEC6n9EOABGo7xwN0IlfJvZe3puhPvpy6p2g0ZACt
         4Nr+2SJossSPw+RxFTqlw0uIlAmKzyKuDK0b6VJl9XFq2lJK2oG8+BB1Q64z2OZ6XKn9
         jPvg5E2no0JD6CrfUMTLeO+u7IA0aU0tSMIYQYOQDACK1oQ3Q06Jgynz8Ft9LCZgRGA8
         pUW4FtmEWZzZUQCObJEX7UeJ1pLwmgic4RYPEWZ/KYFjrC5uSaLrtQpFzp9BYAouqhzj
         WRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GDvPEgw54XMXnHzNSFDDYTrwGtxyeOf1PlA18WSZUyw=;
        b=XIrVHwJHcA18124dJs8W1tiHULDRG4d2fE8ISWw00s56T2J8I4vMX0Y7yDJnpko63c
         9dSiQKO+fyDOLpnZA2xbe34/pbaG6vwe0Ugx7f44rhkDjuGHJ7u7RuVwJ+CHswasyhOi
         wm+tUYdiNjjBCoMuFer0zZW1kjZAy66u0RjfM3IDm/+7f8MmuHSbfs6V7oI9ItM/o41g
         ooi731Mm75HEMTEZIV/n09SD5ZbhpDSrqur+RNK99VdQ+3lCkFIdIi/nDdr7OTKP4RL6
         y7GJg/MzGWs9jr3sJT0CWcOuSzqw/hU0JU+UoOvx6Ltc2biss3WlHUBUkRvaY9Ox5Afj
         auKw==
X-Gm-Message-State: ANoB5pmr/4hGIvEg5nmK6tg+VuVIg5E800Bud1IJnvrrp12ZqvgMHgJJ
        2UdmULgAGkOkXSIwbdKjkxL0z+dS0RFIhCTaUc3d4Q==
X-Google-Smtp-Source: AA0mqf49PLirJ7mqsjOqF0AQC0DheXW69JDuDNz9qFlpoUcR6poh9e8QRekuQyLfCWi+QBml37VOY2tcrF+3jfujssM=
X-Received: by 2002:a17:902:ccd1:b0:189:2370:7f6a with SMTP id
 z17-20020a170902ccd100b0018923707f6amr60605847ple.158.1670020172373; Fri, 02
 Dec 2022 14:29:32 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch> <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
In-Reply-To: <Y4o2TFGH6DK3tRcH@lunn.ch>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 2 Dec 2022 14:29:20 -0800
Message-ID: <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 2, 2022 at 9:31 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > > >                                 port@5 {
> > > > >                                         reg = <5>;
> > > > >                                         label = "cpu";
> > > > >                                         ethernet = <&fec>;
> > > > > +                                       phy-mode = "rgmii-id";
> > > > > +
> > > > > +                                       fixed-link {
> > > > > +                                               speed = <1000>;
> > > > > +                                               full-duplex;
> > > > > +                                       };
> > > > >                                 };
> > >
> > > This part is needed to make a warning go away. Does the SoC network interface
> > > have phy-mode = "rgmii"; ?
> >
> > No, it looks like this:
> >
> > &fec {
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&pinctrl_enet>;
> >         phy-mode = "rgmii-id";
>
> > Is something here wrong?
>
> It suggests both ends should insert RGMII delays. So you will end up
> with double delays. Have one end say plain "rgmii" and the other
> "rgmii-id". I would probably go with the FEC being "rgmii".
>
>     Andrew

Andrew,

That makes sense - I will change the fec node to rgmii.

Upon further testing I find there is something else wrong with this
patch however that I don't yet understand.

Without it the switch works fine (due to RGMII delay being configured
via boot firmware) but I do get the warning you had mentioned due to
the phy-mode/phy-handle props missing:
mv88e6085 2188000.ethernet-1:00: switch 0x1760 detected: Marvell
88E6176, revision 1
mv88e6085 2188000.ethernet-1:00: OF node
/soc/bus@2100000/ethernet@2188000/mdio/switch@0/ports/port@5 of CPU
port 5 lacks the required "phy-mode" property
mv88e6085 2188000.ethernet-1:00: OF node
/soc/bus@2100000/ethernet@2188000/mdio/switch@0/ports/port@5 of CPU
port 5 lacks the required "phy-handle", "fixed-link" or "managed"
properties
mv88e6085 2188000.ethernet-1:00: Skipping phylink registration for CPU port 5
mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): PHY
[mv88e6xxx-1:00] driver [Generic PHY] (irq=POLL)
mv88e6085 2188000.ethernet-1:00 lan3 (uninitialized): PHY
[mv88e6xxx-1:01] driver [Generic PHY] (irq=POLL)
mv88e6085 2188000.ethernet-1:00 lan2 (uninitialized): PHY
[mv88e6xxx-1:02] driver [Generic PHY] (irq=POLL)
mv88e6085 2188000.ethernet-1:00 lan1 (uninitialized): PHY
[mv88e6xxx-1:03] driver [Generic PHY] (irq=POLL)

When I add the phy-mode/phy-handle props with this patch I get the
following failure:
mv88e6085 2188000.ethernet-1:00: switch 0x1760 detected: Marvell
88E6176, revision 1
mv88e6085 2188000.ethernet-1:00: switch 0x1760 detected: Marvell
88E6176, revision 1
mv88e6085 2188000.ethernet-1:00: configuring for fixed/rgmii-id link mode
mv88e6085 2188000.ethernet-1:00: p5: delay RXCLK yes, TXCLK yes
mv88e6085 2188000.ethernet-1:00: p5: delay RXCLK yes, TXCLK yes
mv88e6085 2188000.ethernet-1:00: Link is Up - 1Gbps/Full - flow control off
mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): validation of
internal with support 00000000,00000000,000062ff and advertisement
00000000,00000000,000062ff failed: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): failed to
connect to PHY: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): error -22
setting up PHY for tree 0, switch 0, port 0
mv88e6085 2188000.ethernet-1:00 lan3 (uninitialized): validation of
internal with support 00000000,00000000,000062ff and advertisement
00000000,00000000,000062ff failed: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan3 (uninitialized): failed to
connect to PHY: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan3 (uninitialized): error -22
setting up PHY for tree 0, switch 0, port 1
mv88e6085 2188000.ethernet-1:00 lan2 (uninitialized): validation of
internal with support 00000000,00000000,000062ff and advertisement
00000000,00000000,000062ff failed: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan2 (uninitialized): failed to
connect to PHY: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan2 (uninitialized): error -22
setting up PHY for tree 0, switch 0, port 2
mv88e6085 2188000.ethernet-1:00 lan1 (uninitialized): validation of
internal with support 00000000,00000000,000062ff and advertisement
00000000,00000000,000062ff failed: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan1 (uninitialized): failed to
connect to PHY: -EINVAL
mv88e6085 2188000.ethernet-1:00 lan1 (uninitialized): error -22
setting up PHY for tree 0, switch 0, port 3

I've run into this message before and had a hard time understanding
the issue from the message - it seems to indicate the phy status
matches advertisement but that its an invalid mode?

Thanks,

Tim
