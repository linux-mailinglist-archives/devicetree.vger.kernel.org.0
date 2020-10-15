Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2966B28EC8A
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 07:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgJOFFC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 01:05:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725935AbgJOFFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 01:05:02 -0400
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com [IPv6:2607:f8b0:4864:20::b41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB978C061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 22:05:01 -0700 (PDT)
Received: by mail-yb1-xb41.google.com with SMTP id l15so1237224ybp.2
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 22:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SbYl9bPJ1YMr8h9G4MVZE8ZI/swm1pBRzaskkoxVQl4=;
        b=Pv5XYd5MEsJIt7d+VKpiLOS2ItM4KF4A1jy27GbClY9ZKzsSQzGojKsdwxaLojI+Ji
         ObhRkNR85+1ain3IYJ2F/k8GwRld4+YIIyDh+1JpJ4/O4ZNz0ytYcutwG19hI1bveVAb
         tcPTSt8Ojlu2hsewbefiNTF13B9kXN/kXTM/pjRsffj8odM1FC0RUultb3zl7k1dfdwy
         TzFbXka3xtyoD3JbTG1lXZYzfcW28QEnF3G4CVvRt1GXCvpX5do9guOeNm6xPnGYIMRY
         ph33uG6O3746d6tW+ggbOpULZa+wA1FLDEDo9KCwXC8vwmdMu6aYzsXhj8Vf4oEOpcVV
         E84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SbYl9bPJ1YMr8h9G4MVZE8ZI/swm1pBRzaskkoxVQl4=;
        b=e3hTL1kaV6xL1GnC3spvHfVD1RIL1wz8tGqOlY7xcbmsMVrwZYvXnEMrJ7vJM831vm
         1aDmYzbkt6EnjZ7naAXfz8aodGIox6adkXQjeGc7OcTClLhFUKUqMwTVH29qBSoEJe0V
         mddzxVRe8kpHK79HaZT4vL0jiIZ8wJOI6zp3UUfuM0xaGhjuNfrgNQgr0N95r2AE+Po/
         7JvnMxvfGJNctMcs2P3V5pPYIdfCNUSry+s1riHPKmuy/2ZcfRM011AzycnN7yraGzJI
         FHRrIBvQ3JDRG9IgCRF8xBV5KYmytw+75aTeEyvY2QS1ggEwS0FohwJznRIoIuPTJh8W
         FGMQ==
X-Gm-Message-State: AOAM532Tdt8UZL6pmrsvo2gxTxxH/s0aSJ9u8izO1b7C6j5xbHgYUgpW
        eQ+lRYnlPK/3WxKHO+VxMzj2XJLxzccA+Jgd24NOgA==
X-Google-Smtp-Source: ABdhPJwSQedKrg9WEVBvmocSg3JKU+bAer0Pc6/xAaf+qz4InDcuYXwPOx6pzs1eifNy6jhG9Ea/djkvL3XcbfQiOI0=
X-Received: by 2002:a25:b9cc:: with SMTP id y12mr2981756ybj.228.1602738300624;
 Wed, 14 Oct 2020 22:05:00 -0700 (PDT)
MIME-Version: 1.0
References: <20201014191235.7f71fcb4@xhacker.debian> <CAGETcx9PiX==mLxB9PO8Myyk6u2vhPVwTMsA5NkD-ywH5xhusw@mail.gmail.com>
 <20201015120206.41b6a454@xhacker.debian>
In-Reply-To: <20201015120206.41b6a454@xhacker.debian>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 14 Oct 2020 22:04:24 -0700
Message-ID: <CAGETcx_jzF_iV5oJQ8BuDBu0b5Z8G=uL0DhA4uS5U9XLuYryjg@mail.gmail.com>
Subject: Re: fw_devlink on will break all snps,dw-apb-gpio users
To:     Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 9:02 PM Jisheng Zhang
<Jisheng.Zhang@synaptics.com> wrote:
>
> On Wed, 14 Oct 2020 10:29:36 -0700
> Saravana Kannan <saravanak@google.com> wrote:
>
> > CAUTION: Email originated externally, do not click links or open attachments unless you recognize the sender and know the content is safe.
> >
> >
> > On Wed, Oct 14, 2020 at 4:12 AM Jisheng Zhang
> > <Jisheng.Zhang@synaptics.com> wrote:
> > >
> > > Hi,
> > >
> > > If set fw_devlink as on, any consumers of dw apb gpio won't probe.
> > >
> > > The related dts looks like:
> > >
> > > gpio0: gpio@2400 {
> > >        compatible = "snps,dw-apb-gpio";
> > >        #address-cells = <1>;
> > >        #size-cells = <0>;
> > >
> > >        porta: gpio-port@0 {
> > >               compatible = "snps,dw-apb-gpio-port";
> > >               gpio-controller;
> > >               #gpio-cells = <2>;
> > >               ngpios = <32>;
> > >               reg = <0>;
> > >        };
> > > };
> > >
> > > device_foo {
> > >         status = "okay"
> > >         ...;
> > >         reset-gpio = <&porta, 0, GPIO_ACTIVE_HIGH>;
> > > };
> > >
> > > If I change the reset-gpio property to use another kind of gpio phandle,
> > > e.g gpio expander, then device_foo can be probed successfully.
> > >
> > > The gpio expander dt node looks like:
> > >
> > >         expander3: gpio@44 {
> > >                 compatible = "fcs,fxl6408";
> > >                 pinctrl-names = "default";
> > >                 pinctrl-0 = <&expander3_pmux>;
> > >                 reg = <0x44>;
> > >                 gpio-controller;
> > >                 #gpio-cells = <2>;
> > >                 interrupt-parent = <&portb>;
> > >                 interrupts = <23 IRQ_TYPE_NONE>;
> > >                 interrupt-controller;
> > >                 #interrupt-cells = <2>;
> > >         };
> > >
> > > The common pattern looks like the devlink can't cope with suppliers from
> > > child dt node.
> >
> > fw_devlink doesn't have any problem dealing with child devices being
> > suppliers. The problem with your case is that the
> > drivers/gpio/gpio-dwapb.c driver directly parses the child nodes and
> > never creates struct devices for them. If you have a node with
> > compatible string, fw_devlink expects you to create and probe a struct
> > device for it. So change your driver to add the child devices as
> > devices instead of just parsing the node directly and doing stuff with
> > it.
> >
> > Either that, or stop putting "compatible" string in a node if you
> > don't plan to actually treat it as a device -- but that's too late for
> > this driver (it needs to be backward compatible). So change the driver
> > to add of_platform_populate() and write a driver that probes
> > "snps,dw-apb-gpio-port".
> >
>
> Thanks for the information. The "snps,dw-apb-gpio-port" is never used,
> so I just sent out a series to remove it.

I'd actually prefer that you fix the kernel code to actually use it.
So that fw_devlink can be backward compatible (Older DT + new kernel).
The change is pretty trivial (I just have time to do it for you).

-Saravana
