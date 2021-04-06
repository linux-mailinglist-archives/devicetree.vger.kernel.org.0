Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A049C355CED
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 22:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245379AbhDFUcn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 16:32:43 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:28554 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241558AbhDFUcm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 16:32:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617741154;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=y5AiEX2xm7mUi1RVcdN7OMtElv1auQNpFMNuLEK6CfA=;
        b=AJzFBMpaNQXQB4OQ0iU645DtRZiegMxC8p4sHQnRXuiZheiIQ2XvjI+Ey4bR2+9i9Uo/VL
        gcOZEHuFQT3KD714j8sjRXR988DstWIbdCuv5RA+s7Qg5SnlO8aWlhbyNA5I8r4nshqR9L
        B3LlSgHcisohi2JZTeHAEfT8D4PrZQo=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-mYZIP-mHNhaIgg46vlti9w-1; Tue, 06 Apr 2021 16:32:10 -0400
X-MC-Unique: mYZIP-mHNhaIgg46vlti9w-1
Received: by mail-qv1-f70.google.com with SMTP id i7so11174002qvh.22
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 13:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=y5AiEX2xm7mUi1RVcdN7OMtElv1auQNpFMNuLEK6CfA=;
        b=Y6qvHIJtu9uczz7gEEykmBJSE6pS9hQDYknD9lLGrCD+9tdAvmr0K0wZ8LVApHC2wi
         mMHvg7piMtRQLfVry2nV+63YmO4lP6OOGWf22T/n+QNWbz1a73SN/t5yjihTjHN5TC3k
         zmyKwBNQyeLhI8U6R1V3i7P0dccn4Lt5ouieo4VaTagYNtjF0oTS3tiNzX3Jm6JOdGPI
         EKFOOzHfCV18c0rDfYAmYPs4T669/8RqPGahp33xuPPymudKKplCKJsDzGd4/zgLVdTh
         x1d9qEGB8flBf7Tiqy69M85Pju56twOVeJWzy4jAHvg0vtBGfPImq4Ia3QZV+1uVp5Zg
         qL0A==
X-Gm-Message-State: AOAM531em2p+QOtEAunLQNWZ/nDbqZ57K5GJHI2A6F1WSMZKC/2ib3LP
        T2Utwq7uQDCBneuqxk1AZQnHesiSEzSt9JVC/WpCAe3vBUrPkJWd+z36rLQf5ASnOo50mm2Hhpx
        TcdfxdE54EYmLWv+GktVNwA==
X-Received: by 2002:ac8:4f4b:: with SMTP id i11mr28830321qtw.284.1617741129566;
        Tue, 06 Apr 2021 13:32:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7sLqUq5cANZ1kwhajOaTsNAUz4EiDlSnyYp1An3TL4fwvTZK2F1iywiIsZZ48SG5iW9ozcg==
X-Received: by 2002:ac8:4f4b:: with SMTP id i11mr28830309qtw.284.1617741129293;
        Tue, 06 Apr 2021 13:32:09 -0700 (PDT)
Received: from localhost.localdomain (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 17sm16297016qky.7.2021.04.06.13.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 13:32:09 -0700 (PDT)
Subject: Re: [PATCH V4 XRT Alveo 17/20] fpga: xrt: clock frequency counter
 platform driver
To:     Lizhi Hou <lizhi.hou@xilinx.com>, linux-kernel@vger.kernel.org
Cc:     linux-fpga@vger.kernel.org, maxz@xilinx.com,
        sonal.santan@xilinx.com, yliu@xilinx.com, michal.simek@xilinx.com,
        stefanos@xilinx.com, devicetree@vger.kernel.org, mdf@kernel.org,
        robh@kernel.org, Max Zhen <max.zhen@xilinx.com>
References: <20210324052947.27889-1-lizhi.hou@xilinx.com>
 <20210324052947.27889-18-lizhi.hou@xilinx.com>
From:   Tom Rix <trix@redhat.com>
Message-ID: <ee717a18-bfec-6962-39cd-2efb223d577b@redhat.com>
Date:   Tue, 6 Apr 2021 13:32:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210324052947.27889-18-lizhi.hou@xilinx.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 3/23/21 10:29 PM, Lizhi Hou wrote:
> Add clock frequency counter driver. Clock frequency counter is
> a hardware function discovered by walking xclbin metadata. A platform
> device node will be created for it. Other part of driver can read the
> actual clock frequency through clock frequency counter driver.
>
> Signed-off-by: Sonal Santan <sonal.santan@xilinx.com>
> Signed-off-by: Max Zhen <max.zhen@xilinx.com>
> Signed-off-by: Lizhi Hou <lizhi.hou@xilinx.com>
> ---
>   drivers/fpga/xrt/include/xleaf/clkfreq.h |  21 ++
>   drivers/fpga/xrt/lib/xleaf/clkfreq.c     | 240 +++++++++++++++++++++++
>   2 files changed, 261 insertions(+)
>   create mode 100644 drivers/fpga/xrt/include/xleaf/clkfreq.h
>   create mode 100644 drivers/fpga/xrt/lib/xleaf/clkfreq.c
>
> diff --git a/drivers/fpga/xrt/include/xleaf/clkfreq.h b/drivers/fpga/xrt/include/xleaf/clkfreq.h
> new file mode 100644
> index 000000000000..005441d5df78
> --- /dev/null
> +++ b/drivers/fpga/xrt/include/xleaf/clkfreq.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020-2021 Xilinx, Inc.
> + *
> + * Authors:
> + *	Lizhi Hou <Lizhi.Hou@xilinx.com>
> + */
> +
> +#ifndef _XRT_CLKFREQ_H_
> +#define _XRT_CLKFREQ_H_
> +
> +#include "xleaf.h"
> +
> +/*
> + * CLKFREQ driver leaf calls.
> + */
> +enum xrt_clkfreq_leaf_cmd {
> +	XRT_CLKFREQ_READ = XRT_XLEAF_CUSTOM_BASE, /* See comments in xleaf.h */
> +};
> +
> +#endif	/* _XRT_CLKFREQ_H_ */
> diff --git a/drivers/fpga/xrt/lib/xleaf/clkfreq.c b/drivers/fpga/xrt/lib/xleaf/clkfreq.c
> new file mode 100644
> index 000000000000..49473adde3fd
> --- /dev/null
> +++ b/drivers/fpga/xrt/lib/xleaf/clkfreq.c
> @@ -0,0 +1,240 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Xilinx Alveo FPGA Clock Frequency Counter Driver
> + *
> + * Copyright (C) 2020-2021 Xilinx, Inc.
> + *
> + * Authors:
> + *      Lizhi Hou<Lizhi.Hou@xilinx.com>
> + */
> +
> +#include <linux/mod_devicetable.h>
> +#include <linux/platform_device.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/regmap.h>
> +#include <linux/io.h>
> +#include "metadata.h"
> +#include "xleaf.h"
> +#include "xleaf/clkfreq.h"
> +
> +#define CLKFREQ_ERR(clkfreq, fmt, arg...)   \
> +	xrt_err((clkfreq)->pdev, fmt "\n", ##arg)
> +#define CLKFREQ_WARN(clkfreq, fmt, arg...)  \
> +	xrt_warn((clkfreq)->pdev, fmt "\n", ##arg)
> +#define CLKFREQ_INFO(clkfreq, fmt, arg...)  \
> +	xrt_info((clkfreq)->pdev, fmt "\n", ##arg)
> +#define CLKFREQ_DBG(clkfreq, fmt, arg...)   \
> +	xrt_dbg((clkfreq)->pdev, fmt "\n", ##arg)
> +
> +#define XRT_CLKFREQ		"xrt_clkfreq"
> +
> +#define XRT_CLKFREQ_CONTROL_STATUS_MASK		0xffff
> +
> +#define XRT_CLKFREQ_CONTROL_START	0x1
> +#define XRT_CLKFREQ_CONTROL_DONE	0x2
> +#define XRT_CLKFREQ_V5_CLK0_ENABLED	0x10000
> +
> +#define XRT_CLKFREQ_CONTROL_REG		0
> +#define XRT_CLKFREQ_COUNT_REG		0x8
> +#define XRT_CLKFREQ_V5_COUNT_REG	0x10
> +
> +#define XRT_CLKFREQ_READ_RETRIES	10
> +
> +static const struct regmap_config clkfreq_regmap_config = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = 0x1000,
ok
> +};
> +
> +struct clkfreq {
> +	struct platform_device	*pdev;
> +	struct regmap		*regmap;
> +	const char		*clkfreq_ep_name;
> +	struct mutex		clkfreq_lock; /* clock counter dev lock */
> +};
> +
> +static int clkfreq_read(struct clkfreq *clkfreq, u32 *freq)
ok
> +{
> +	int times = XRT_CLKFREQ_READ_RETRIES;
ok
> +	u32 status;
> +	int ret;
> +
> +	*freq = 0;
> +	mutex_lock(&clkfreq->clkfreq_lock);
> +	ret = regmap_write(clkfreq->regmap, XRT_CLKFREQ_CONTROL_REG, XRT_CLKFREQ_CONTROL_START);
> +	if (ret) {
> +		CLKFREQ_INFO(clkfreq, "write start to control reg failed %d", ret);
> +		goto failed;
> +	}
> +	while (times != 0) {
> +		ret = regmap_read(clkfreq->regmap, XRT_CLKFREQ_CONTROL_REG, &status);
> +		if (ret) {
> +			CLKFREQ_INFO(clkfreq, "read control reg failed %d", ret);
> +			goto failed;
> +		}
> +		if ((status & XRT_CLKFREQ_CONTROL_STATUS_MASK) == XRT_CLKFREQ_CONTROL_DONE)
> +			break;
> +		mdelay(1);
> +		times--;
> +	};
> +
> +	if (!times) {
> +		ret = -ETIMEDOUT;
> +		goto failed;
> +	}
> +
> +	if (status & XRT_CLKFREQ_V5_CLK0_ENABLED)
> +		ret = regmap_read(clkfreq->regmap, XRT_CLKFREQ_V5_COUNT_REG, freq);
> +	else
> +		ret = regmap_read(clkfreq->regmap, XRT_CLKFREQ_COUNT_REG, freq);
> +	if (ret) {
> +		CLKFREQ_INFO(clkfreq, "read count failed %d", ret);
> +		goto failed;
> +	}
ok
> +
> +	mutex_unlock(&clkfreq->clkfreq_lock);
> +
> +	return 0;
> +
> +failed:
> +	mutex_unlock(&clkfreq->clkfreq_lock);
> +
> +	return ret;
> +}
> +
> +static ssize_t freq_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +	struct clkfreq *clkfreq = platform_get_drvdata(to_platform_device(dev));
> +	ssize_t count;
> +	u32 freq;
> +
> +	if (clkfreq_read(clkfreq, &freq))
> +		return -EINVAL;
ok
> +
> +	count = snprintf(buf, 64, "%u\n", freq);
ok
> +
> +	return count;
> +}
> +static DEVICE_ATTR_RO(freq);
> +
> +static struct attribute *clkfreq_attrs[] = {
> +	&dev_attr_freq.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group clkfreq_attr_group = {
> +	.attrs = clkfreq_attrs,
> +};
> +
> +static int
> +xrt_clkfreq_leaf_call(struct platform_device *pdev, u32 cmd, void *arg)
> +{
> +	struct clkfreq *clkfreq;
> +	int ret = 0;
> +
> +	clkfreq = platform_get_drvdata(pdev);
> +
> +	switch (cmd) {
> +	case XRT_XLEAF_EVENT:
> +		/* Does not handle any event. */
> +		break;
> +	case XRT_CLKFREQ_READ:
ok
> +		ret = clkfreq_read(clkfreq, arg);
ok
> +		break;
> +	default:
> +		xrt_err(pdev, "unsupported cmd %d", cmd);
> +		return -EINVAL;
> +	}
> +
> +	return ret;
> +}
> +
> +static int clkfreq_remove(struct platform_device *pdev)
> +{
> +	sysfs_remove_group(&pdev->dev.kobj, &clkfreq_attr_group);
> +
> +	return 0;
> +}
> +
> +static int clkfreq_probe(struct platform_device *pdev)
> +{
> +	struct clkfreq *clkfreq = NULL;
> +	void __iomem *base = NULL;
> +	struct resource *res;
> +	int ret;
> +
> +	clkfreq = devm_kzalloc(&pdev->dev, sizeof(*clkfreq), GFP_KERNEL);
> +	if (!clkfreq)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, clkfreq);
> +	clkfreq->pdev = pdev;
> +	mutex_init(&clkfreq->clkfreq_lock);
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		ret = -EINVAL;
> +		goto failed;
> +	}
> +	base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(base)) {
> +		ret = PTR_ERR(base);
> +		goto failed;
> +	}
> +
> +	clkfreq->regmap = devm_regmap_init_mmio(&pdev->dev, base, &clkfreq_regmap_config);
> +	if (IS_ERR(clkfreq->regmap)) {
> +		CLKFREQ_ERR(clkfreq, "regmap %pR failed", res);
> +		ret = PTR_ERR(clkfreq->regmap);
> +		goto failed;
> +	}
> +	clkfreq->clkfreq_ep_name = res->name;
> +
> +	ret = sysfs_create_group(&pdev->dev.kobj, &clkfreq_attr_group);
> +	if (ret) {
> +		CLKFREQ_ERR(clkfreq, "create clkfreq attrs failed: %d", ret);
> +		goto failed;
> +	}
> +
> +	CLKFREQ_INFO(clkfreq, "successfully initialized clkfreq subdev");
> +
> +	return 0;
> +
> +failed:
> +	return ret;
> +}
> +
> +static struct xrt_subdev_endpoints xrt_clkfreq_endpoints[] = {
> +	{
> +		.xse_names = (struct xrt_subdev_ep_names[]) {
> +			{ .regmap_name = XRT_MD_REGMAP_CLKFREQ },

ok

Looks good to me

Reviewed-by: Tom Rix <trix@redhat.com>

> +			{ NULL },
> +		},
> +		.xse_min_ep = 1,
> +	},
> +	{ 0 },
> +};
> +
> +static struct xrt_subdev_drvdata xrt_clkfreq_data = {
> +	.xsd_dev_ops = {
> +		.xsd_leaf_call = xrt_clkfreq_leaf_call,
> +	},
> +};
> +
> +static const struct platform_device_id xrt_clkfreq_table[] = {
> +	{ XRT_CLKFREQ, (kernel_ulong_t)&xrt_clkfreq_data },
> +	{ },
> +};
> +
> +static struct platform_driver xrt_clkfreq_driver = {
> +	.driver = {
> +		.name = XRT_CLKFREQ,
> +	},
> +	.probe = clkfreq_probe,
> +	.remove = clkfreq_remove,
> +	.id_table = xrt_clkfreq_table,
> +};
> +
> +XRT_LEAF_INIT_FINI_FUNC(XRT_SUBDEV_CLKFREQ, clkfreq);

