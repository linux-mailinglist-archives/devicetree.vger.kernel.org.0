Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E85EA9C9AD
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 08:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727097AbfHZGyo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 02:54:44 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:45546 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729487AbfHZGyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 02:54:41 -0400
Received: by mail-ed1-f68.google.com with SMTP id x19so24943333eda.12
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2019 23:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nTkNb4qhu4LWrFg09llWi3oBh88pK95w54xsWrsdjT0=;
        b=WRcwatvAI0WEvdFUv/sT0oyCxKW9JAWDmzw43+hawcVPvkP4MC+sOxq613oe7+u4MD
         bjj8wG02Jk6cwVwZCt36tlQmALBdiNQObpjmpl0NVmcWhLPGKFfJioYsChUsQ2SvXU+Z
         +1RwYI0ZvOyR/CpVy0n1vVMkrI8RqOW2IPN3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nTkNb4qhu4LWrFg09llWi3oBh88pK95w54xsWrsdjT0=;
        b=PGZB/jzkFCZzZzFf35ODcbrHRfvnHZbR+SSHsSIEcHc7etBB4XZNGNaguq3sVHFrAw
         OxCHg8kdMS8Ta5lJdPTlXWpWcLzT6TerAD+Vm7PNs44J4QlIZL7sXBTjuvoxJtAxRBJb
         l6vWKrvm9R5DFCdK1UpXzXSuKMmOs0Ebj2d/LIa2Q/ZatR8C7kL2l0mgbNGjjmNWNgxn
         ELXbuYc48QR0usZgmxwyLt5QyBp+Gd1eKptKzfD8AINlvFDuYewQUCHU3tOT9soOdNV+
         9s8l5MZh8phMWpuJTlE2Bw1hruPx7iPEo+oDYjrxgfms6ExAZP+fZiiUjKgU00tOxB1w
         EuVQ==
X-Gm-Message-State: APjAAAXUn0+XfbXVCa9RULWoEMpzBDpPwbJNumodl95+NLVZN67YQUsI
        ZGBNBwrIZEkw66reTgTeAZldNJ1SyhbzMA==
X-Google-Smtp-Source: APXvYqwN0911ZZzbMoSBgapBUT9VU+9eUwwp57Tn/Hc2EY3h1UQ0o+dW1hRqwO5FKjcLxQkrLr2OGg==
X-Received: by 2002:a17:906:5789:: with SMTP id k9mr15699815ejq.56.1566802479864;
        Sun, 25 Aug 2019 23:54:39 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com. [209.85.221.41])
        by smtp.gmail.com with ESMTPSA id p23sm1105029eds.81.2019.08.25.23.54.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Aug 2019 23:54:38 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id t16so14164527wra.6
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2019 23:54:37 -0700 (PDT)
X-Received: by 2002:adf:fc03:: with SMTP id i3mr19059644wrr.48.1566802476916;
 Sun, 25 Aug 2019 23:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com> <20190821103038.GA148543@chromium.org>
 <20190821110542.GD31967@paasikivi.fi.intel.com>
In-Reply-To: <20190821110542.GD31967@paasikivi.fi.intel.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Mon, 26 Aug 2019 15:54:25 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A-ze9FgDqNpPgyu7gA3nQPUW_G0zEG8ThNGjVEb=_jjA@mail.gmail.com>
Message-ID: <CAAFQd5A-ze9FgDqNpPgyu7gA3nQPUW_G0zEG8ThNGjVEb=_jjA@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
To:     Sakari Ailus <sakari.ailus@linux.intel.com>
Cc:     dongchun.zhu@mediatek.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Cao Bing Bu <bingbu.cao@intel.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        Sj Huang <sj.huang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        devicetree@vger.kernel.org, Louis Kuo <louis.kuo@mediatek.com>,
        shengnan.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 21, 2019 at 8:05 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Tomasz,
>
> On Wed, Aug 21, 2019 at 07:30:38PM +0900, Tomasz Figa wrote:
[snip]
> > Is it really correct to enable the clock before the regulators?
> >
> > According to the datasheet, it should be:
> >  - PD pin HIGH,
> >  - nRST pin LOW,
> >  - DVDDIO and AVDD28 power up and stabilize,
> >  - clock enabled,
> >  - min 5 ms delay,
> >  - PD pin LOW,
> >  - min 4 ms delay,
> >  - nRST pin HIGH,
> >  - min 5 ms delay,
> >  - I2C interface ready.
> >
> > > +
> > > +   /* Note: set 0 is high, set 1 is low */
> >
> > Why is that? If there is some inverter on the way that should be handled
> > outside of this driver. (GPIO DT bindings have flags for this purpose.
> >
> > If the pins are nRESET and nPOWERDOWN in the hardware datasheet, we should
> > call them like this in the driver too (+/- the lowercase and underscore
> > convention).
> >
> > According to the datasheet, the reset pin is called RST and inverted, so we should
> > call it n_rst, but the powerdown signal, called PD, is not inverted, so pd
> > would be the right name.
>
> For what it's worth sensors generally have xshutdown (or reset) pin that is
> active high. Looking at the code, it is not the case here. It's a bit odd
> since the usual arrangement saves power when the camera is not in use; it's
> not a lot but still. Oh well.
>

I guess we could drive powerdown low after disabling the regulators
and clocks, but that wouldn't work for the cases where the regulators
are actually shared with something else, especially if that is not
related to the same camera module.

> ...
>
> > > +static struct i2c_driver ov02a10_i2c_driver = {
> > > +   .driver = {
> > > +           .name = "ov02a10",
> > > +           .pm = &ov02a10_pm_ops,
> > > +           .of_match_table = ov02a10_of_match,
> >
> > Please use of_match_ptr() wrapper.
>
> Not really needed; the driver does expect regulators, GPIOs etc., but by
> leaving out of_match_ptr(), the driver will also probe on ACPI based
> systems.

Good point, I always keep forgetting about the ability to probe OF
drivers from ACPI. Then we also need to remove the #if
IS_ENABLED(CONFIG_OF) from ov02a10_of_match.

Best regards,
Tomasz
