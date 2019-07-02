Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 877D45CE17
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 13:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726213AbfGBLHB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 07:07:01 -0400
Received: from foss.arm.com ([217.140.110.172]:47808 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725922AbfGBLHB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Jul 2019 07:07:01 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4F5A344;
        Tue,  2 Jul 2019 04:07:00 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17ACF3F246;
        Tue,  2 Jul 2019 04:06:58 -0700 (PDT)
Date:   Tue, 2 Jul 2019 12:06:53 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RESEND PATCH 2/3] soc: imx: Add power domain driver support for
 i.mx8m family
Message-ID: <20190702110653.GA7329@e107155-lin>
References: <20190702100832.29718-1-ping.bai@nxp.com>
 <20190702100832.29718-3-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702100832.29718-3-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 10:03:46AM +0000, Jacky Bai wrote:
> The i.MX8M family is a set of NXP product focus on delivering
> the latest and greatest video and audio experience combining
> state-of-the-art media-specific features with high-performance
> processing while optimized for lowest power consumption.
> 
> i.MX8MQ, i.MX8MM, i.MX8MN, even the furture i.MX8MP are all
> belong to this family. A GPC module is used to manage all the
> PU power domain on/off. But the situation is that the number of
> power domains & the power up sequence has significate difference
> on those SoCs. Even on the same SoC. The power up sequence still
> has big difference. It makes us hard to reuse the GPCv2 driver to
> cover the whole i.MX8M family. Each time a new SoC is supported in
> the mainline kernel, we need to modify the GPCv2 driver to support
> it. We need to add or modify hundred lines of code in worst case.
> It is a bad practice for the driver maintainability.
> 
> This driver add a more generic power domain driver that the actual
> power on/off is done by TF-A code. the abstraction give us the
> possibility that using one driver to cover the whole i.MX8M family
> in kernel side.
>

TF-A has SCMI support, why can't that be used as abstraction instead
of inventing new. Peng Fan has been working to get SMC mailbox.

Unless you give me strong reasons for not able to pursue that path,
NACK for this patch. I have told this in the recent past.

> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  drivers/soc/imx/Kconfig            |   6 +
>  drivers/soc/imx/Makefile           |   1 +
>  drivers/soc/imx/imx8m_pm_domains.c | 224 +++++++++++++++++++++++++++++
>  include/soc/imx/imx_sip.h          |  12 ++
>  4 files changed, 243 insertions(+)
>  create mode 100644 drivers/soc/imx/imx8m_pm_domains.c
>  create mode 100644 include/soc/imx/imx_sip.h

[...]

> +
> +	mutex_lock(&gpc_pd_mutex);
> +	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_CONFIG_GPC_PM_DOMAIN, domain->domain_index,
> +		      PD_STATE_ON, 0, 0, 0, 0, &res);
> +	mutex_unlock(&gpc_pd_mutex);
> +
> +	return 0;
> +}
> +
> +static int imx8m_pd_power_off(struct generic_pm_domain *genpd)
> +{
> +	struct imx8m_pm_domain *domain = to_imx8m_pm_domain(genpd);
> +	struct arm_smccc_res res;
> +	int index, ret = 0;
> +
> +	mutex_lock(&gpc_pd_mutex);
> +	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_CONFIG_GPC_PM_DOMAIN, domain->domain_index,
> +		      PD_STATE_OFF, 0, 0, 0, 0, &res);

How big is this IMX SMC SIP ? I keep seeing that it's ever growing.
I don't want to see this for any future products as they seem to be
designed "ON THE GO" as and when needed rather than completely thought
through.

--
Regards,
Sudeep
