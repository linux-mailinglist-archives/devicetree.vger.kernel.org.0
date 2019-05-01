Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E630510A37
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:41:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726599AbfEAPlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:41:25 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41268 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726586AbfEAPlZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 11:41:25 -0400
Received: by mail-pg1-f196.google.com with SMTP id f6so8448663pgs.8
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 08:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z9Jk9f5GRyVp8LwJQr63Ueksfq6d8UWo5ZdkS2e4C5Q=;
        b=pUGtFJa+YB3mWZM+HAUSk09dKbR7DFVrhScOIWdcA5l6TBTa2wRlPXW9Jk6SUnAfFC
         WgszkMgkRhYZ5REx8i3n/BFJUqlSjO3VQCoxmE9IGD2RT4iyCHvenKGE6dLXnENR8k9k
         x6mVHku40atbRzdKP24xZVggr6BbJiDDh7P/iWTWEWRpYleYP/EutRJ6Jz4vsjJCfV73
         gE5Ra8+d2aTvDJiFxg3YCSvrhnRJGwgZ61CiaL/gQaAUQG43gXpNW/sisqUgJmk9bTTp
         xzwYvbmjh3k28DOi4P52NNGArzpAArt79bkc4NpH2RparU6YBSbk/pRVmkn2TB2eXkWV
         fidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z9Jk9f5GRyVp8LwJQr63Ueksfq6d8UWo5ZdkS2e4C5Q=;
        b=Jt/2Xt+0Zzi5y6mWyjy1a0VJl05Td+xUXjCaVtzsujS9Qf/epQc86DHDPW5HCSvsIc
         gyoWzqjVbhRbfVHtS1+dP+H2K70YC5UR/jHhhE38gKSqSxwX/+WESFyw6wQITZGp+xZY
         YOnbrfv1dtAM+uOdTiDMO3jG5/UojPxM4sDfFmxFKUaYkAVeaz2JpCN8XBfPm1po8Y/u
         cRHU46S7gVMcYuLf0dy+y3iTUdacQhwzdjAO0I5XGtbCpCWyo3e31AdGmnJfjHUc7aMW
         iTqs9uZ0sXneWjWbY7TScpaRR1Fmai1fmVKhatMelNEVs+z+2zBCt6ouSB+NSK+vglSk
         VEuw==
X-Gm-Message-State: APjAAAVQ0sbDX1gE4dic2dNKky0pgi4NmxGtLpxLGtC/nDwEnCAKIC3j
        Lz652fQhI3gAPBylCHZnFR3RWTPl2HblMVArRuEt1t3kztQ=
X-Google-Smtp-Source: APXvYqwTzicPPLPet3+UmO2HcborhdtkQ4PO7SRbsVyx3T3dAQWyJ1xvVtmZt/hOK7v/k9gEIMPAjmbD75fREeTsRAM=
X-Received: by 2002:a62:a513:: with SMTP id v19mr78245243pfm.212.1556725284311;
 Wed, 01 May 2019 08:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com> <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
In-Reply-To: <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Wed, 1 May 2019 10:41:13 -0500
Message-ID: <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
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

On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
>
> On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > +{
> > > +     struct ddr_pmu *pmu;
> > > +     struct device_node *np;
> > > +     void __iomem *base;
> > > +     char *name;
> > > +     int num;
> > > +     int ret;
> > > +     int irq;
> > > +
> > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > +     if (IS_ERR(base))
> > > +             return PTR_ERR(base);
> > > +
> > > +     np = pdev->dev.of_node;
> > > +
> > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > +     if (!pmu)
> > > +             return -ENOMEM;
> > > +
> > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > +
> > > +     platform_set_drvdata(pdev, pmu);
> > > +
> > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> >
> > Still not happy with this.
>
> is imx_ddr_pmu%d  okay?

imx_ddr%d_pmu look like more reasonable.

best regards
Frank Li

>
> >
> > Will
