Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67033453963
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 19:28:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbhKPSa4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 13:30:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239451AbhKPSa4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 13:30:56 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 149ABC061570
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 10:27:59 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id m24so8204113pls.10
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 10:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3fWpMphG8TELS3To5kNUPAdl3qEwjOdeaKeyS/lZ/+Q=;
        b=v7U8Pho5TSrKi0WUmKmg5nYv8pzJsmc1zgTktLy7tBJs384ab32z22wtQBQ4d1PxrG
         34ck/LfGq5WuAfOLT5HulvYuov9azJin3fMpUKgsb7Z4khkUwzIs3omQlwiI0OvKYlDk
         Xa0IhiiPZ/9kupz8wSlmHKwSMXCjuYIuBlOYHLYRL6gDZZNpTe0MS537SLRPH7KzxnU8
         XUIiYjsO1+yHKKcUg0oEXCEOC72XR0s0tYn3vnCEOVV7gUNiJScD+A2WaGeuUVBd/gJi
         2SLRwOGh1X4koS84XtySAVn5Yg35qGbGyVRGnD1QRTQwmFKcdnJYc1PUCIgsJiRUe0rv
         BA+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3fWpMphG8TELS3To5kNUPAdl3qEwjOdeaKeyS/lZ/+Q=;
        b=zaInvUMzKr0Z4JoxBw0oMyv/Oee72X9oyqat58eVv031P6pwQj71TTE22uBnSZSu4J
         JqkX107WJY5niBLtTLZkR/0qXidhrpJLrE0D1sgdl4nLvrfZU8wEYLIhpmIEYegjEyGZ
         q5vUBfIfkmmfFNlvsEpX5nzAMc9uKJ8TmRedUBJDLSKca0D2aXNOt23LbZdxzkamchFQ
         nxV4mlN36Ai+IDf0vp9mZyIawuCKFm4mXW3ONCnt4H9zbz/CGE4rBLU0KdENL7ixf4rU
         K6vPyJ0sjmDYRRQYkEJZnYhxLddxWJMX8c2hmI/GazqV7nR5p1zUZ5J6U6/qBp7Y5iyh
         /TZw==
X-Gm-Message-State: AOAM5308EddhUfqu6AIiANoUt/pCYmsOCihmq3vWkIG/gxPLk+xC8THx
        m+wKLqNC5751yJf29vD06sbvSq1UrxeJf8z0/X0whQ==
X-Google-Smtp-Source: ABdhPJxKDUKSRoAF2mb9fa5zMqyZi9Dc7WvOkkSIFILxvRZwKcYxm4j7RxIlx6pDl4fVfAvjdMe1Jrp9A0P+wPkBCNg=
X-Received: by 2002:a17:90b:1b06:: with SMTP id nu6mr1261126pjb.155.1637087278606;
 Tue, 16 Nov 2021 10:27:58 -0800 (PST)
MIME-Version: 1.0
References: <20211104161804.587250-1-aford173@gmail.com> <CAJ+vNU2jcWyCm3UyiOnvknS0t+mSdpaB+CgGWYO3jxXTa3LhRA@mail.gmail.com>
 <CAHCN7xJrnZMQgXVMJg7MZdFMWyesf6Ph7HnfMH7-9bm1qODHFw@mail.gmail.com>
In-Reply-To: <CAHCN7xJrnZMQgXVMJg7MZdFMWyesf6Ph7HnfMH7-9bm1qODHFw@mail.gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 16 Nov 2021 10:27:47 -0800
Message-ID: <CAJ+vNU32GXtbKWGQXoE7pkXU8FcKh+HQJJduwRbRJ0tC-d6GoA@mail.gmail.com>
Subject: Re: [PATCH V3 0/9] arm64: imx8mn: Enable more imx8m Nano functions
To:     Adam Ford <aford173@gmail.com>
Cc:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Adam Ford-BE <aford@beaconembedded.com>,
        ariel.dalessandro@collabora.com,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 10:04 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Tue, Nov 16, 2021 at 11:57 AM Tim Harvey <tharvey@gateworks.com> wrote:
> >
> > On Thu, Nov 4, 2021 at 9:18 AM Adam Ford <aford173@gmail.com> wrote:
> > >
> > > The i.MX8M Nano is similar to the i.MX8M Mini in some ways, but very
> > > different in others.  With the blk-ctrl driver for Mini in place,
> > > this series expands the blk-ctrl driver to support the Nano which
> > > opens the door for additional functions in the future.  As part of
> > > this series, it also addresses some issues in the GPCv2 driver and
> > > finally adds support for enabling USB and GPU.
> > >
> > > V3:  Fixes an the yaml example
> > > V2:  Fixes the clock count in the blk-ctrl
> > >
> > > Adam Ford (9):
> > >   soc: imx: gpcv2: keep i.MX8MN gpumix bus clock enabled
> > >   soc: imx: gpcv2: Add dispmix and mipi domains to imx8mn
> > >   dt-bindings: power: imx8mn: add defines for DISP blk-ctrl domains
> > >   dt-bindings: soc: add binding for i.MX8MN DISP blk-ctrl
> > >   soc: imx: imx8m-blk-ctrl: add i.MX8MN DISP blk-ctrl
> > >   arm64: dts: imx8mn: add GPC node
> > >   arm64: dts: imx8mn: put USB controller into power-domains
> > >   arm64: dts: imx8mn: add DISP blk-ctrl
> > >   arm64: dts: imx8mn: Enable GPU
> > >
> > >  .../soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml     |  97 +++++++++++++++++
> > >  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 103 ++++++++++++++++++
> > >  drivers/soc/imx/gpcv2.c                       |  26 +++++
> > >  drivers/soc/imx/imx8m-blk-ctrl.c              |  75 ++++++++++++-
> > >  include/dt-bindings/power/imx8mn-power.h      |   5 +
> > >  5 files changed, 305 insertions(+), 1 deletion(-)
> > >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
> > >
> >
> > Adam,
> >
> > Thanks for the patches. I'm not sure how best to test this but on an
> > imx8mm-venice-gw7902 which has USB, but no display.
> >
> > I find that if DRM_ETNAVIV is enabled I hang at 'etnaviv etnaviv:
> > bound 38000000.gpu (ops 0xffff800010964748)'.
>
> Thanks for testing this.
>
> Does your board send power to the GPU?  I recall someone somewhere
> didn't power theirGPU, but I can't remember who and/or what board was
> being discussed.

Yes, the imx8mm-venice-gw7902 does have the GPU powered (the
imx8mm-venice-gw7901 was the one that did not).

Tim

>
> I'll run some more tests on the latest 5.16-rc1 to see if I can
> replicate your issue.
>
> adam
> >
> > If DRM_ETNAVIV is not enabled:
> > - boots fine
> > - usb works
> > - soft reboot works (does not hang)
>
> At least we have some progress.  :-)
>
> adam
> >
> > Best regards,
> >
> > Tim
