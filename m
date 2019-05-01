Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3F8AB10A27
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726602AbfEAPfO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:35:14 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:46792 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbfEAPfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 11:35:14 -0400
Received: by mail-pg1-f196.google.com with SMTP id n2so8430817pgg.13
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 08:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kgmmbX11duKut5f1yf/akLjshjYvHQVrE54CwkSmvqs=;
        b=polivYvSvbIKLB3JVQUPsaiqqenkFleCf8AHLLIyPYMeKU2ZMncFTvzayCGMFIYYHG
         xJ6GqUmT8zTAyZlfKu8ZWhqjwyOCMoHYnxe79kV9NGwZkuhpGQYeQ7poU5FiH2fI+ItV
         lwM6zw1VfJAJT77/sZad4CY72mywRyA1zOOz4xu6FxqnppGA8KpJly+2rihORfLeoZLt
         7gF3le104L9SFwiygI7YG3qbEHLHPPkWb7TUyo16IRF0lmirB/a/eJgGoDbpS7wOGs6u
         FXIg7adWM1XbD89jWA+aI01oTwP0IITvflH4NcQu6+/eC3ZwHIhqNuo9UqXxsKoLts3o
         ta0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kgmmbX11duKut5f1yf/akLjshjYvHQVrE54CwkSmvqs=;
        b=GWgGp+2yWvYqkmYV9CVf7ISM+gxTFNDrErHh0gX6h53pZqCc8XuiZ6kEC0LkSaTdBv
         Yimr8ss8F8F5sBirrdzS4vA5MRzKwKIrQbwuYs7kACcCusd91bg+j6y5IODj6tuAVtra
         MmRI9QC3bgbLDeqn0OhoVFUvQmWEy6e58M8NT2uMMigsA0+ylS34giwa8RXmPelAxtMt
         rzyST5QXDMgPTXORxYqUYOWmcS3XGz6xa+yjdTgkxlPOAPdRbRwkKlUyaijqm5LFWvco
         hGDGH77ovHu4Hs4sYFc6og6ibGxtpv1G91I9OO1LHD1eKbrz1s9h850wapQ06IfNRQPL
         RxIw==
X-Gm-Message-State: APjAAAVgeEYZ+I9NBJvkhUDTq4SEQkece6+9pinQI2VQ975aj4MQqxAX
        +7GCDJFN9lspLskxJbq9NUPqAu4TblPJes/wfWE=
X-Google-Smtp-Source: APXvYqzy43+x8L9pDbTCt0Zr3sBdD7BiqN5VG8r/buWa1KkQmflmjUsdR7Zg8m5fiMZyQ2qnaTJ5MWVa0XZSmoPiwiM=
X-Received: by 2002:a63:f212:: with SMTP id v18mr69367043pgh.231.1556724913015;
 Wed, 01 May 2019 08:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com> <20190501152437.GA28109@fuggles.cambridge.arm.com>
In-Reply-To: <20190501152437.GA28109@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Wed, 1 May 2019 10:35:01 -0500
Message-ID: <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To:     Will Deacon <will.deacon@arm.com>
Cc:     Frank Li <frank.li@nxp.com>,
        "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > +static int ddr_perf_probe(struct platform_device *pdev)
> > +{
> > +     struct ddr_pmu *pmu;
> > +     struct device_node *np;
> > +     void __iomem *base;
> > +     char *name;
> > +     int num;
> > +     int ret;
> > +     int irq;
> > +
> > +     base = devm_platform_ioremap_resource(pdev, 0);
> > +     if (IS_ERR(base))
> > +             return PTR_ERR(base);
> > +
> > +     np = pdev->dev.of_node;
> > +
> > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > +     if (!pmu)
> > +             return -ENOMEM;
> > +
> > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > +
> > +     platform_set_drvdata(pdev, pmu);
> > +
> > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
>
> Still not happy with this.

is imx_ddr_pmu%d  okay?

>
> Will
