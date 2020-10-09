Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91DB928896B
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 14:57:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387917AbgJIM5U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 08:57:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387898AbgJIM5U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 08:57:20 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C3BDC0613D2
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 05:57:20 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id r4so2310885ioh.0
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 05:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EECETrKbmoPSDvlqCGPtlVQRxwctT/KKRtpH7yPiQSk=;
        b=bTLrKdrfvuUK/6IApP7UUzshOURZdohqllb2TZ3nBt9kzD9gameKV377bq+QAuPI0b
         6mfCpjifwKllmzcR8KNJS4p/uMXgeWXPrAnhbgq0K6qD5m8GU9BhpKuP6QsFidjGzmu/
         nBpvq9cS147lMoHSh/6m53gBPiqVRDZxYjksv3vnJbdlcav/88WA6s3UVN90fDa1Ao40
         Md4FfOu/SjaqvQ9DASYxyfqpqHAbeV/U7nbQLhxtICcGHUBwznT46ADLRpZsmLx44Op/
         kg9hWziKzWl9ybsoOWtGEIQi8oKttWjHmSJQLboS0WcJfSG9YvfFQaHHM1mNFHpFwCIn
         ZAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EECETrKbmoPSDvlqCGPtlVQRxwctT/KKRtpH7yPiQSk=;
        b=QCPWLME4UPKVojJ502cRyOKbcWTMqsOXBW8joOnm/KbcTwtPnD1T0pLU/NWdtfgGnn
         3e9ghfV0ynutvz784mtUs4E2YNFssHVvujEQwyrihmQ7o2Gv6VKCvKI7CinHZZuJfo9W
         SKcCYpojzrdWxxglFFhNcrh8LDyAy0U7MBQVUiWUsX32y9xvrkumvqizAKuKgbS91iqc
         wgo5FgWVEpRQ2F+nTP3EFuCdaJ9BaIKf9eUqWTBOR5vY/1+GptnbP0ygfNLSPSXomOxe
         CfwqTxuJbShHIKB0EcXRgbJoJur8KFk9A3FAgEVyd6ub8bkCym9eHx5eGLM1mkjZQEJv
         CrFA==
X-Gm-Message-State: AOAM5317T5bJOyVifGRRNt1SK9QYmhlLFYnHRR7cFZSgmBvom9RMo4Yh
        CK5DDJ2iqKhYqum6z7C+4VVRgU1E+Q/ONfYJx3Y=
X-Google-Smtp-Source: ABdhPJykomo7ZyhdhH1YAXK4xyhoskOkpMaFOo5VC5j570wBLwCkeIO07SDkL4VXj7joM1DNnEXvjwfYLNuNM1n89rQ=
X-Received: by 2002:a5e:c70a:: with SMTP id f10mr9148283iop.178.1602248239403;
 Fri, 09 Oct 2020 05:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
In-Reply-To: <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Fri, 9 Oct 2020 07:57:08 -0500
Message-ID: <CAHCN7xKN4S=cGe=ULqwG=Pi-9a8spxrAefiRFO0ZEw0JxfBNNQ@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Jacky Bai <ping.bai@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 9, 2020 at 6:16 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Jacky,
>
> On Fr, 2020-10-09 at 03:00 +0000, Jacky Bai wrote:
> > > -----Original Message-----
> > > From: Lucas Stach [mailto:l.stach@pengutronix.de]
> > > Sent: Wednesday, September 30, 2020 11:50 PM
> > > To: Shawn Guo <shawnguo@kernel.org>; Rob Herring <robh+dt@kernel.org>
> > > Cc: dl-linux-imx <linux-imx@nxp.com>; Fabio Estevam
> > > <festevam@gmail.com>; Frieder Schrempf <frieder.schrempf@kontron.de>;
> > > Marek Vasut <marex@denx.de>; linux-arm-kernel@lists.infradead.org;
> > > devicetree@vger.kernel.org; kernel@pengutronix.de;
> > > patchwork-lst@pengutronix.de
> > > Subject: [PATCH 00/11] i.MX8MM power domain support
> > >
> > > Hi all,
> > >
> > > this adds power domain support for the i.MX8MM to the existing GPCv2 driver.
> > > It is not complete yet, as it is still missing the VPU and display power domains,
> > > as those require support for the BLK_CTL regions of the VPUMIX and
> > > DISPLAYMIX domains. A Linux driver for those regions on the i.MX8MP is
> > > currently under development and we plan to use this as a template for the
> > > i.MX8MM when the dust has settled. The changes in this series have been
> > > made with this in mind, so once the BLK_CTL driver exists it should be a
> > > matter of hooking things together via DT, with no further changes required on
> > > the GPCv2 driver side (famous last words).
> > >
> > > Special thanks to Marek Vasut who helped with testing and debugging of early
> > > versions of this code.
> > >
> >
> > Lucas,
> >
> > thanks for working on this, but I think current support for 8MM can NOT 100% work due to HW limitation.
> > Maybe, we need further discussion before moving forward, otherwise, we will meet awkward situation when NXP
> > doing LTS upgrade. Below are some info shared.
> >
> > 1. The GPU & VPU related power domains need to do special handling due to HW limitation, can refer to the power domain sequence
> >   In NXP release.
>
> For the GPU this driver already does the same thing as the TF-A based
> implementation by driving the GPU2D and GPU3D domains together and
> triggering the SRC reset.
>
> For the VPU I expect that we can do all the necessary syncing with a
> proper VPU BLK_CTL driver.
>
> > 2. another reason that we do power domain control in TF-A in NXP release is that MAIN NOC power domain can only be controlled by
> >   TF-A, and before MAIN NOC power domain, we need to check other MIXs' power status. If other power domain is controlled by linux side,
> >   It is not easy to cross world status sync.
>
> This is a valid concern and I want to learn more about this. When do
> you turn off MAIN NOC power in the TF-A? Is it just system suspend? If
> so I think it's a valid requirement for the kernel driver to shut down
> all the peripheral power domains before entering system suspend.
>
> > 3. either 8MM, 8MN, or 8MP, the power domain design is different, I am not sure if it is the good to add hundreds line of code in GPCv2 each time
> >   a new SOC is added.
>
> I don't buy into this argument. We have lots of drivers in the Linux
> kernel that require some changes for new SoC generations, that's what
> Linux drivers are for. The complexity of the hardware doesn't disappear
> just because you push some of the driver bits into TF-A, you just
> handle the complexity at a different palce and IMHO that the wrong
> place. The power domains have complex interactions with other drivers
> in the Linux system, so debugging and deplyong fixes is much easier
> when the power domain handling is fully done by a kernel driver.

In an effort to keep the code size manageable, what if we were to
propose a gpc-core configured to be a generic function common to all
SoC's, and move the tables for each unique SoC into separate files.
Making each SoC's GPC a Kconfig option could give people the ability
to disable the various options that don't apply to their specific
application, and the setup and configuration of the tables should be
easier to read.  I know of at least one touchscreen driver that does
this (tsc200x).

adam
>
> Regards,
> Lucas
>
> > BR
> > Jacky Bai
> >
> > > Regards,
> > > Lucas
> > >
> > > Lucas Stach (11):
> > >   soc: imx: gpcv2: move to more ideomatic error handling in probe
> > >   soc: imx: gpcv2: move domain mapping to domain driver probe
> > >   soc: imx: gpcv2: split power up and power down sequence control
> > >   soc: imx: gpcv2: wait for ADB400 handshake
> > >   soc: imx: gpcv2: add runtime PM support for power-domains
> > >   soc: imx: gpcv2: allow domains without power-sequence control
> > >   soc: imx: gpcv2: add support for optional resets
> > >   dt-bindings: add defines for i.MX8MM power domains
> > >   soc: imx: gpcv2: add support for i.MX8MM power domains
> > >   arm64: dts: imx8mm: add GPC node and power domains
> > >   arm64: dts: imx8mm: put USB controllers into power-domains
> > >
> > >  .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
> > >  drivers/soc/imx/gpcv2.c                       | 501
> > > +++++++++++++++---
> > >  include/dt-bindings/power/imx8mm-power.h      |  22 +
> > >  4 files changed, 516 insertions(+), 74 deletions(-)  create mode 100644
> > > include/dt-bindings/power/imx8mm-power.h
> > >
> > > --
> > > 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
