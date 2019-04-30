Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8F1CFDEE
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 18:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbfD3Qaa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 12:30:30 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:38404 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726785AbfD3Qa3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 12:30:29 -0400
Received: by mail-pl1-f194.google.com with SMTP id f36so6976573plb.5
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2019 09:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=42TxqEwaxIKdbqbYpo6K4IuBy7auUCN8dCTPz6kwS3Y=;
        b=cjIsh610oGurHp9tgtxwXC0QhmZDrQMZOXT7/Uft9jFisFaTR0aaD5TBLp6+Zp3g20
         iprnt0tglOn2koUfsoDu5ihRT76g5lK+SXafGq4YJEAUc+gSwNUrp45Fs1AyOxV1M3l3
         U6BVlNx4Tq/vbH/0VDDO7IvYWvBKWBMt2jCQlM6cHUC7oAg03Uq9a6b41HSeg6HbhNiy
         bPbpwiC2/d5fuD8ba+KJVF060/e4Ar9p4tqggImpoo9UE9cg38+di2str93Bc+9hDa13
         RWfH6yQNc+Mbz/TQb3qgpYJfCzE3B1JNPLS7Yw/XFj6Nx46P350s1Q/pQwd95+WqZHIr
         pipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=42TxqEwaxIKdbqbYpo6K4IuBy7auUCN8dCTPz6kwS3Y=;
        b=YPcuikGu33s4coPHvX7nAS3XTgbJUdgXnjlOBv/sneqKxDqil/7QSmBfYWw0khvDvl
         Z47trYuPXz65d9FdojCdJm5RQxmXiNHA2KZj9s6lvlyZK9C3N9qF9QPiSZwzcYZDAxUY
         qpg5AltGKu62tvCTSHbffjl+BccQ+mZBTNZ3MIX0i+awqye6kKr/DdU/4GUi7usSuVUf
         83dEzUB9Ov8fi9xSUTJbZqxNOLXfwsOIU2AgOw2Ileshi+Vkmr7jhfUuXmB8GANN4puK
         pQ/Vv/VubLYWDHEtycvNC+KbpqgHqdWMQ91yoVz95m5U404gYwwCkkurOUFpS+YGzvWK
         FbPQ==
X-Gm-Message-State: APjAAAUEdlQ/Km5faCT8JJwv97xMRPQ+5zyrQYfPJ1WgYWV1o0bdeuAj
        xVBvt0NOLu+2MNVWfYLt/ovP90/2QOxjxyINPVo=
X-Google-Smtp-Source: APXvYqyXab738Odf5A0Sa3zKpysPLC8zk+iApwq2bjCFdw+6+z6x3W1u0YIcG8FPQ0PqkekbJi5ueSxa+seExEzMRaM=
X-Received: by 2002:a17:902:3064:: with SMTP id u91mr26845533plb.181.1556641828432;
 Tue, 30 Apr 2019 09:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
 <1556556252-22868-2-git-send-email-Frank.Li@nxp.com> <20190430105124.GA16204@fuggles.cambridge.arm.com>
In-Reply-To: <20190430105124.GA16204@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Tue, 30 Apr 2019 11:30:17 -0500
Message-ID: <CAHrpEqTqf2TFjrgdbu8RpYY6RKeJdX2Sz7yj+0-k5hE1gUCJ8w@mail.gmail.com>
Subject: Re: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance counter support
To:     Will Deacon <will.deacon@arm.com>
Cc:     Frank Li <frank.li@nxp.com>,
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

On Tue, Apr 30, 2019 at 5:51 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Mon, Apr 29, 2019 at 04:44:32PM +0000, Frank Li wrote:
> > diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> > new file mode 100644
> > index 0000000..087d75a
> > --- /dev/null
> > +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> > @@ -0,0 +1,589 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2017 NXP
> > + * Copyright 2016 Freescale Semiconductor, Inc.
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/perf_event.h>
> > +#include <linux/slab.h>
> > +
> > +#define COUNTER_CNTL         0x0
> > +#define COUNTER_READ         0x20
> > +
> > +#define COUNTER_DPCR1                0x30
> > +
> > +#define CNTL_OVER            0x1
> > +#define CNTL_CLEAR           0x2
> > +#define CNTL_EN                      0x4
> > +#define CNTL_EN_MASK         0xFFFFFFFB
> > +#define CNTL_CLEAR_MASK              0xFFFFFFFD
> > +#define CNTL_OVER_MASK               0xFFFFFFFE
> > +
> > +#define CNTL_CSV_SHIFT               24
> > +#define CNTL_CSV_MASK                (0xFF << CNTL_CSV_SHIFT)
> > +
> > +#define EVENT_CYCLES_ID              0
> > +#define EVENT_CYCLES_COUNTER 0
> > +#define NUM_COUNTERS         4
> > +
> > +#define to_ddr_pmu(p)                container_of(p, struct ddr_pmu, pmu)
> > +
> > +#define DDR_PERF_DEV_NAME    "ddr_perf"
>
> This is far too generic. Please make it something like "imx8_ddr_perf_pmu".
>
> > +static int ddr_perf_probe(struct platform_device *pdev)
> > +{
> > +     struct ddr_pmu *pmu;
> > +     struct device_node *np;
> > +     void __iomem *base;
> > +     struct resource *iomem;
> > +     char *name;
> > +     char *hpname;
> > +     int num;
> > +     int ret;
> > +     int irq;
> > +
> > +     iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +     base = devm_ioremap_resource(&pdev->dev, iomem);
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
> > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "ddr%d", num);
> > +     if (!name)
> > +             return -ENOMEM;
> > +
> > +     hpname = devm_kasprintf(&pdev->dev, GFP_KERNEL,
> > +                             "perf/imx/ddr%d:online", num);
> > +     if (!hpname)
> > +             return -ENOMEM;
> > +
> > +     pmu->cpu = raw_smp_processor_id();
> > +     ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, hpname, NULL,
> > +                                      ddr_perf_offline_cpu);
>
> This doesn't seem right to me. My understanding of the cpuhp mechanism
> is that you register a single multi-instance state as part of driver
> initialisation, and then add an instance for each device you probe.
> That means you don't need to kasprintf the callback name as you are above --
> you can just use DDR_PERF_DEV_NAME instead.
>
> Please see how other perf drivers manage this on my for-next/perf branch.
>
> > +
> > +     if (ret < 0) {
> > +             dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
> > +             goto ddr_perf_err;
> > +     }
> > +
> > +     pmu->cpuhp_state = ret;
> > +
> > +     /* Register the pmu instance for cpu hotplug */
> > +     cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> > +
> > +     ret = perf_pmu_register(&pmu->pmu, name, -1);
>
> Again, the string you're passing in here is too generic. I suggest taking
> DDR_PERF_DEV_NAME and adding "_%d" to the end to paste in your 'num'
> identifier.
>
> Sorry if this feels like pedantry, but this gets exposed to userspace
> via sysfs, so we need to be careful with the namespace.

imx8_ddr_perf_pmu is too long to use.  how about imx_ddr%d?

best regards
Frank Li

>
> Will
