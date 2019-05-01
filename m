Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE94710A43
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:48:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726457AbfEAPs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:48:58 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:33012 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726434AbfEAPs6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 11:48:58 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 472EAA78;
        Wed,  1 May 2019 08:48:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB8173F719;
        Wed,  1 May 2019 08:48:54 -0700 (PDT)
Date:   Wed, 1 May 2019 16:48:52 +0100
From:   Will Deacon <will.deacon@arm.com>
To:     Zhi Li <lznuaa@gmail.com>
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
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501154852.GB28109@fuggles.cambridge.arm.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
 <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
 <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 01, 2019 at 10:41:13AM -0500, Zhi Li wrote:
> On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
> >
> > On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > > +{
> > > > +     struct ddr_pmu *pmu;
> > > > +     struct device_node *np;
> > > > +     void __iomem *base;
> > > > +     char *name;
> > > > +     int num;
> > > > +     int ret;
> > > > +     int irq;
> > > > +
> > > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > > +     if (IS_ERR(base))
> > > > +             return PTR_ERR(base);
> > > > +
> > > > +     np = pdev->dev.of_node;
> > > > +
> > > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > > +     if (!pmu)
> > > > +             return -ENOMEM;
> > > > +
> > > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > > +
> > > > +     platform_set_drvdata(pdev, pmu);
> > > > +
> > > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> > >
> > > Still not happy with this.
> >
> > is imx_ddr_pmu%d  okay?
> 
> imx_ddr%d_pmu look like more reasonable.

Sorry, it's a bit subtle, but please use "imx8" instead of "imx" since
they may change the thing completely in a future revision of the SoC. That's
why I suggested "imx8_ddr" in my reply on the previous version of the patch
(although it appears I somehow managed to drop the CC line in my reply, so
it only went to your gmail address).

Will
