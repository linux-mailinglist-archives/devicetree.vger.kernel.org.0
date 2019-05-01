Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82C41109FC
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:24:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726481AbfEAPYo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:24:44 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:60956 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726473AbfEAPYo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 11:24:44 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47FAFA78;
        Wed,  1 May 2019 08:24:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED31A3F719;
        Wed,  1 May 2019 08:24:41 -0700 (PDT)
Date:   Wed, 1 May 2019 16:24:37 +0100
From:   Will Deacon <will.deacon@arm.com>
To:     Frank Li <frank.li@nxp.com>
Cc:     "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501152437.GA28109@fuggles.cambridge.arm.com>
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1556724043-3961-2-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	struct device_node *np;
> +	void __iomem *base;
> +	char *name;
> +	int num;
> +	int ret;
> +	int irq;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	np = pdev->dev.of_node;
> +
> +	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	num = ddr_perf_init(pmu, base, &pdev->dev);
> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);

Still not happy with this.

Will
