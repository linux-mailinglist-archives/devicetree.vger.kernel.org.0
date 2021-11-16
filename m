Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D639E4531D0
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 13:08:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235953AbhKPMLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 07:11:03 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:4099 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235964AbhKPMJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 07:09:43 -0500
Received: from fraeml741-chm.china.huawei.com (unknown [172.18.147.207])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4HtlCZ3mXzz67bJm;
        Tue, 16 Nov 2021 20:06:34 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml741-chm.china.huawei.com (10.206.15.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 16 Nov 2021 13:06:41 +0100
Received: from [10.47.82.31] (10.47.82.31) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Tue, 16 Nov
 2021 12:06:40 +0000
Subject: Re: [PATCH 2/2] perf/smmuv3: Add devicetree support
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        <robh+dt@kernel.org>
CC:     <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
        <robin.murphy@arm.com>, <iommu@lists.linux-foundation.org>,
        <uchida.jun@socionext.com>, <leo.yan@linaro.org>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <20211116113536.69758-3-jean-philippe@linaro.org>
From:   John Garry <john.garry@huawei.com>
Message-ID: <0f410098-2a58-9024-9fe4-77fb54b2a076@huawei.com>
Date:   Tue, 16 Nov 2021 12:06:36 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20211116113536.69758-3-jean-philippe@linaro.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.47.82.31]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2021 11:35, Jean-Philippe Brucker wrote:
> Add device-tree support to the SMMUv3 PMCG.  One small cosmetic change
> while factoring the option mask printout: don't display it when zero, it
> only contains one erratum at the moment.
> 
> Signed-off-by: Jay Chen <jkchen@linux.alibaba.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>   drivers/perf/arm_smmuv3_pmu.c | 25 +++++++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index 226348822ab3..958325ac103a 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -47,6 +47,7 @@
>   #include <linux/kernel.h>
>   #include <linux/list.h>
>   #include <linux/msi.h>
> +#include <linux/of.h>
>   #include <linux/perf_event.h>
>   #include <linux/platform_device.h>
>   #include <linux/smp.h>
> @@ -750,8 +751,15 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
>   		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
>   		break;
>   	}
> +}
> +
> +static void smmu_pmu_get_of_options(struct smmu_pmu *smmu_pmu)
> +{
> +	struct device_node *node = smmu_pmu->dev->of_node;
>   
> -	dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
> +	if (of_device_is_compatible(node, "hisilicon,smmu-v3-pmcg-hip08"))

I don't think that this is necessary. We don't support DT for hip08, nor 
have any plans to. Incidentally, was this binding missing in your series?

Thanks,
John

> +		/* HiSilicon Erratum 162001800 */
> +		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
>   }
>   
>   static int smmu_pmu_probe(struct platform_device *pdev)
> @@ -834,7 +842,13 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>   		return -EINVAL;
>   	}
>   
> -	smmu_pmu_get_acpi_options(smmu_pmu);
> +	if (dev->of_node)
> +		smmu_pmu_get_of_options(smmu_pmu);
> +	else
> +		smmu_pmu_get_acpi_options(smmu_pmu);
> +
> +	if (smmu_pmu->options)
> +		dev_notice(dev, "option mask 0x%x\n", smmu_pmu->options);
>   
>   	/* Pick one CPU to be the preferred one to use */
>   	smmu_pmu->on_cpu = raw_smp_processor_id();
> @@ -884,10 +898,17 @@ static void smmu_pmu_shutdown(struct platform_device *pdev)
>   	smmu_pmu_disable(&smmu_pmu->pmu);
>   }
>   
> +static const struct of_device_id arm_smmu_pmu_match[] = {
> +	{ .compatible = "arm,smmu-v3-pmcg" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, arm_smmu_pmu_match);
> +
>   static struct platform_driver smmu_pmu_driver = {
>   	.driver = {
>   		.name = "arm-smmu-v3-pmcg",
>   		.suppress_bind_attrs = true,
> +		.of_match_table = of_match_ptr(arm_smmu_pmu_match),
>   	},
>   	.probe = smmu_pmu_probe,
>   	.remove = smmu_pmu_remove,
> 

