Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48BEC76CAA4
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 12:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230386AbjHBKU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 06:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233191AbjHBKUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 06:20:51 -0400
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF792708
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 03:20:49 -0700 (PDT)
Received: by mail-ua1-x933.google.com with SMTP id a1e0cc1a2514c-794b8fe8cc4so486306241.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 03:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1690971649; x=1691576449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jKZ0R3DPIYHcdJLQv+5lRyfZ09+VFNbp6gc2DK3aN8=;
        b=CcutReOLppEl5P39GZQtGdqFStYs+bTD3iKyusKA7htgaz+bwjlpYvylNDNmSHAmxz
         EteuMBTL5PTLky1Rjfl5xlYBbi/pwvTGFgWCP+zvkFDStNbCCE6DBQpyf3QJ8o7PVRq1
         YA6O9OpE2/pm1eH+6nhKuQveO90O0BdbTO5cnD8L5F0Axr5/JSrjt3SmmRtSYloQGuVh
         KZhkKtIeBE9r5dJATIZfDZ+R0aEKNd6pQ7indZU0OubqDCqpeSpMeLIgWKLvP9Hbx3ny
         JgMzJw2nvLv+9WJY+sXeVakyU1RQGQL0I3u10VbR7hjNFMu17S+Cgr7i3SP+XZczl/cW
         uyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690971649; x=1691576449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jKZ0R3DPIYHcdJLQv+5lRyfZ09+VFNbp6gc2DK3aN8=;
        b=T/tRWeMYU63q1kFUIb+nEKuDfeqxppx1bYBHs5GfsgHYNmOML3M+yDZ1+h4GnUbHp7
         2LyFoBkbHQuWIpXzFEVa40QFRd4tWlL1SISsU54TM+psn1WgpSNENNF2+cxUgBkUPTAm
         MOuJEvAAtCJk4OPihsxvi00rBpiEjjnf5xZREdsDrNeQ4RL5tKj1bz+kN3X0l7HSiqFG
         CRmIO9oWwbjfZJ2pk/RlJzxca374oarR/FyQh9OxxEcJ/4GE311DUuLRBM3siJicGez9
         Hebu5AsdQCyGDCd8F9TzTSqE1MUsbDu4GrHMAJ770eRoV5j8AZQpBtkT3BbLq73Vmsl/
         ydAg==
X-Gm-Message-State: ABy/qLZIRy6Kag9pePbcipbv5UoCjKhAl6ZU6IQOdzB6KqbkeG0Fyv3m
        pBL0qIOHU4HPjzM1IBfqTA4//wCSVWpTcJ0QhAFgzA==
X-Google-Smtp-Source: APBJJlG9jHMfKX7KHC9UcQuXSUVxUC+l+gtm2pw0eWvNyUOBz0M9OyvtwxK6AEm9c1R7m8bP//+rO0lqK1m2fR/wK0c=
X-Received: by 2002:a1f:9e11:0:b0:481:5132:48c7 with SMTP id
 h17-20020a1f9e11000000b00481513248c7mr2077016vke.1.1690971648824; Wed, 02 Aug
 2023 03:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
 <CAPY8ntD07rCC5ttudKtbXkDcKFLJb5htRdawWR+S7p914ti4MA@mail.gmail.com>
 <20230801144313.GB25590@pendragon.ideasonboard.com> <20230801203308.GA8578@pendragon.ideasonboard.com>
In-Reply-To: <20230801203308.GA8578@pendragon.ideasonboard.com>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Wed, 2 Aug 2023 11:20:32 +0100
Message-ID: <CAPY8ntDU6j79w93GknHmx34-o0v6pRL8L4YK9nZ+V70JAbt9Lg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>,
        Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent

On Tue, 1 Aug 2023 at 21:33, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Dave,
>
> On Tue, Aug 01, 2023 at 05:43:15PM +0300, Laurent Pinchart wrote:
> > On Tue, Aug 01, 2023 at 03:22:17PM +0100, Dave Stevenson wrote:
> > > On Mon, 31 Jul 2023 at 22:55, Laurent Pinchart wrote:
> > > >
> > > > Hello,
> > > >
> > > > This series is an attempt to revive support for pinmuxed I2C0 on th=
e
> > > > Raspberry Pi BCM2711-based board.
> > > >
> > > > On BCM2711-based boards, the I2C0 controller can be muxed between p=
ins
> > > > 0+1 or 44+45. The former is exposed through the 40-pins GPIO connec=
tor,
> > > > and the latter is used for the RTC on the CM4 I/O board, but also r=
outed
> > > > to the display and camera connectors on the Raspberry Pi 4B board. =
The
> > > > other BCM2711-based board, the Raspberry Pi 400, does not expose or
> > > > connect anything to pins 44+45.
> > > >
> > > > A previous version was posted ([1]) a year and a half ago by Uwe. I=
t
> > > > bundled the pinmuxing and RTC in a single patch, with the mux added=
 to
> > > > the CM4 I/O board device tree. This version splits this in two, and
> > > > moves the pinumxing to the bcm2711-rpi.dtsi to also support the
> > > > Raspberry Pi 4B.
> > > >
> > > > The Raspberry Pi downstream kernel has a more complex DT architectu=
re in
> > > > order to support different I2C0 pinmuxing for other boards. Two fil=
es,
> > > > bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, de=
fine
> > > > the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 an=
d
> > > > 44+45). Each board .dts then includes the appropriate file. I'm hop=
ing
> > > > to avoid this additional complexity for now, by addressing the I2C0
> > > > pinmuxing for BCM2711-based boards only. If/when support for I2C0
> > > > pinmuxing on boards will be needed, we can revisit this topic.
> > > >
> > > > Compared to the Raspberry Pi downstream kernel, the two muxed I2C b=
uses
> > > > are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. Thi=
s
> > > > change was made to keep the naming of the I2C controller labels
> > > > consistent, avoiding renaming of the I2C0 controller's label from i=
2c0
> > > > to i2c0if.
> > > >
> > > > Dave, are you fine with the differences between this patch series a=
nd
> > > > the downstream kernel, or do you expect them to cause issues ?
> > >
> > > I've checked with Phil. There's nothing too untoward that will cause
> > > us any significant grief.
> >
> > Thanks for checking.
> >
> > In the meantime, I realized that the CM4S is 2711-based and, according
> > to the downstream DT, multiplexes I2C0 on pins 28+29, not 44+45 :-(
> > Umang and Kieran also told me that we want to test camera support on th=
e
> > Pi 3B. It looks like the only viable approach to support all that will
> > be to include per-board I2C0 pinmux .dtsi as done in the downstream
> > kernel. I'll send a v5.
> >
> > > Phil has commented that the RTC is an PCF85063AT, so that compatible
> > > string should be "nxp,pcf85063a" if you actually want to make use of
> > > the alarm output.
> > > Then again the driver support for the alarm output appears to want it
> > > routed to an IRQ rather than as a system reset/wakeup, so it probably
> > > makes little difference. It llargely depends on how exact you want to
> > > be in your hardware description.
> >
> > I'll update the compatible string, it's an easy change and it's nice to
> > be accurate.
>
> The driver will print a warning if the quartz-load-femtofarads property
> isn't set in DT (it can be either 7pF or 12.5pF).

Really? The bindings [1] don't list it as required, and just trying it
hasn't logged an error.
The return value from of_property_read_u32 isn't checked at [2], so
load remains unchanged at 7000 if not present.

> If I'm not mistaken,
> the quartz oscillator on the CM4 I/O board is calibrated for a 6pF load
> capacitance, so 7pF is the closest and best value. Could you confirm
> that ?

The relevant hardware person isn't in at present, but schematics for
the RTC are on page 13 of the cm4io-datasheet [4].
Crystal is listed as a X32K768S300, and Farnell's copy of the
datasheet [4] say that has a 6pF load capacitance.

  Dave

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/rtc/nxp%2Cpcf85063.yaml
[2] https://github.com/torvalds/linux/blob/master/drivers/rtc/rtc-pcf85063.=
c#L344
[3] https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
[4] https://www.farnell.com/datasheets/1881558.pdf

> > > > [1] https://lore.kernel.org/linux-arm-kernel/20211231115109.94626-1=
-uwe@kleine-koenig.org/
> > > >
> > > > Uwe Kleine-K=C3=B6nig (2):
> > > >   ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
> > > >   ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
> > > >
> > > >  arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++
> > > >  arch/arm/boot/dts/bcm2711-rpi.dtsi       | 31 ++++++++++++++++++++=
++++
> > > >  2 files changed, 47 insertions(+)
>
> --
> Regards,
>
> Laurent Pinchart
