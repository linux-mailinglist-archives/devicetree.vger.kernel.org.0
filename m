Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA9270D1E0
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 04:57:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234019AbjEWC5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 22:57:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbjEWC5R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 22:57:17 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3C2CD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 19:57:16 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0564D847CC;
        Tue, 23 May 2023 04:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684810635;
        bh=Zbqm9TSETTyPER81To7NhiuFGmNPzlkqiSndObUmGxk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SEOglEDsL8gW3vFtT7hzpsMIYXypyxxXe1ZxpFRVaknpHLwsmvlhISuiSF+WZHC65
         NjUzHdp1TVeiJIMBSYG94qItqVje+Oy/bOy1hhDS6hHtxzbf4uzh+v8rbqKPQpP9Sj
         cV0AT3TWx+WP0DoWjgmksh0KAsgh1fHhlVHBx3oAs/kOtlGk2uLsFwtfHrMheZCCB8
         7sOVPtLQriVEMKpapeexqNJfFUdXTZCoX1tWzVhm7NREJDSS5FWZZp4DDcVW1IU+Ba
         g32+LPdKCAQUTbrZyKD6QHxaYt0R5R9TkOJo0WAsWBExNKDOt6H0UC7rXDPN7VUaUy
         8Jb00XM9Tkt9Q==
Message-ID: <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de>
Date:   Tue, 23 May 2023 04:30:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, bhelgaas@google.com,
        Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-5-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522201404.660242-5-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 22:14, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The motivation for this imx6sx-gpr driver is to allow describing
> the LVDS LDB bridge as a GPR subnode.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v5:
> - None.
> 
>   drivers/soc/imx/Makefile     |  1 +
>   drivers/soc/imx/imx6sx-gpr.c | 29 +++++++++++++++++++++++++++++
>   2 files changed, 30 insertions(+)
>   create mode 100644 drivers/soc/imx/imx6sx-gpr.c
> 
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index a28c44a1f16a..9840d4c41015 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_ARCH_MXC) += soc-imx.o
>   endif
>   obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>   obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> +obj-$(CONFIG_SOC_IMX6SX) += imx6sx-gpr.o
>   obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
>   obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8m-blk-ctrl.o
>   obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
> diff --git a/drivers/soc/imx/imx6sx-gpr.c b/drivers/soc/imx/imx6sx-gpr.c
> new file mode 100644
> index 000000000000..7684acbe43ff
> --- /dev/null
> +++ b/drivers/soc/imx/imx6sx-gpr.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +
> +static int imx6sx_gpr_probe(struct platform_device *pdev)
> +{
> +	return devm_of_platform_populate(&pdev->dev);
> +}
> +
> +static const struct of_device_id imx6sx_gpr_ids[] = {
> +	{ .compatible = "fsl,imx6sx-iomuxc-gpr" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, imx6sx_gpr_ids);
> +
> +static struct platform_driver imx6sx_gpr_driver = {
> +	.driver = {
> +		.name	= "imx6sx_gpr",
> +		.of_match_table = imx6sx_gpr_ids,
> +	},
> +	.probe = imx6sx_gpr_probe,
> +};
> +module_platform_driver(imx6sx_gpr_driver);

I feel inclined to ask -- do you think this could be something which 
could be added to core code ? It seems very generic.

Thoughts ?
