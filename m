Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4F2E2C815B
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 10:48:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728313AbgK3JrL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 04:47:11 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:2173 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726270AbgK3JrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 04:47:11 -0500
Received: from fraeml708-chm.china.huawei.com (unknown [172.18.147.200])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Cl0fd2Ccgz67KRZ;
        Mon, 30 Nov 2020 17:43:37 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml708-chm.china.huawei.com (10.206.15.36) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 30 Nov 2020 10:46:28 +0100
Received: from [10.47.3.199] (10.47.3.199) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 30 Nov
 2020 09:46:27 +0000
Subject: Re: [PATCH 2/2] perf/imx_ddr: Add system PMU identifier for userspace
To:     Joakim Zhang <qiangqing.zhang@nxp.com>, <will@kernel.org>,
        <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <linux-imx@nxp.com>,
        <frank.li@nxp.com>
References: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
 <20201128053627.7971-3-qiangqing.zhang@nxp.com>
From:   John Garry <john.garry@huawei.com>
Message-ID: <6b4e567b-4b94-4c21-d506-829b5a7ec15e@huawei.com>
Date:   Mon, 30 Nov 2020 09:46:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20201128053627.7971-3-qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.47.3.199]
X-ClientProxiedBy: lhreml704-chm.china.huawei.com (10.201.108.53) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2020 05:36, Joakim Zhang wrote:
> The DDR Perf for i.MX8 is a system PMU whose AXI ID would different from
> SoC to SoC. Need expose system PMU identifier for userspace which refer
> to /sys/bus/event_source/devices/<PMU DEVICE>/identifier.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>   drivers/perf/fsl_imx8_ddr_perf.c | 42 ++++++++++++++++++++++++++++++++
>   1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 4f063fb1c6b4..3517d2fb1469 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -50,6 +50,7 @@ static DEFINE_IDA(ddr_ida);
>   
>   struct fsl_ddr_devtype_data {
>   	unsigned int quirks;    /* quirks needed for different DDR Perf core */
> +	const char *identifier;	/* system PMU identifier for userspace */

so if this is not set, then what does the sysfs identifier file show?

It seems to be not set for "fsl,imx8-ddr-pmu" or "fsl,imx8m-ddr-pmu" 
matching.

Maybe it's better do like I did for SMMU PMCG, and not show the file if 
not set.

Thanks,
John

>   };
>   
>   static const struct fsl_ddr_devtype_data imx8_devtype_data;
> @@ -58,13 +59,32 @@ static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
>   	.quirks = DDR_CAP_AXI_ID_FILTER,
>   };
>   
> +static const struct fsl_ddr_devtype_data imx8mq_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MQ",
> +};
> +
> +static const struct fsl_ddr_devtype_data imx8mm_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MM",
> +};
> +
> +static const struct fsl_ddr_devtype_data imx8mn_devtype_data = {
> +	.quirks = DDR_CAP_AXI_ID_FILTER,
> +	.identifier = "i.MX8MN",
> +};
> +
>   static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
>   	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
> +	.identifier = "i.MX8MP",
>   };
>   
>   static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
>   	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
>   	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
> +	{ .compatible = "fsl,imx8mq-ddr-pmu", .data = &imx8mq_devtype_data},
> +	{ .compatible = "fsl,imx8mm-ddr-pmu", .data = &imx8mm_devtype_data},
> +	{ .compatible = "fsl,imx8mn-ddr-pmu", .data = &imx8mn_devtype_data},
>   	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
>   	{ /* sentinel */ }
>   };
> @@ -84,6 +104,27 @@ struct ddr_pmu {
>   	int id;
>   };
>   
> +static ssize_t ddr_perf_identifier_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *page)
> +{
> +	struct ddr_pmu *pmu = dev_get_drvdata(dev);
> +
> +	return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> +}
> +
> +static struct device_attribute ddr_perf_identifier_attr =
> +	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
> +
> +static struct attribute *ddr_perf_identifier_attrs[] = {
> +	&ddr_perf_identifier_attr.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group ddr_perf_identifier_attr_group = {
> +	.attrs = ddr_perf_identifier_attrs,
> +};
> +
>   enum ddr_perf_filter_capabilities {
>   	PERF_CAP_AXI_ID_FILTER = 0,
>   	PERF_CAP_AXI_ID_FILTER_ENHANCED,
> @@ -237,6 +278,7 @@ static const struct attribute_group *attr_groups[] = {
>   	&ddr_perf_format_attr_group,
>   	&ddr_perf_cpumask_attr_group,
>   	&ddr_perf_filter_cap_attr_group,
> +	&ddr_perf_identifier_attr_group,
>   	NULL,
>   };
>   
> 

