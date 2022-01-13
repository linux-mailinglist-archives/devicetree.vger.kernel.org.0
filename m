Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4C5C48D833
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 13:50:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234724AbiAMMuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 07:50:00 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54286
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234722AbiAMMt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 07:49:59 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E08F74000F
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 12:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642078198;
        bh=tnCA4HRIcZvjskoSMkqJWo8kfiQaZS4+GQyiSop+DyI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=CXfiudj+eJVcR+gQkp0iax+6K19L7GZB7dijrwhCuGH1EdxPcZUUwSyJg4YdbQS79
         3jwhot9z7+ZiitaSn9zkcNJ8W0SKbBOM/65JP65ivpsDIdc3347t1UFzsOzmZtaFkk
         jynNmdvf3cdx+3HyOz6Y5qSJK0G/YbMS3FCmzdSgp1ujNTBMLOYkJetuG74obvloxM
         MFb5BpMzSMAWjdycjLRexgoy5EnK8zREV+Atq1UXjtdMBjTb+gIxNUx1QoHwb2M39I
         YG1UP6JD/ts0mgSumiyUsWrRrIxhOSY9aLAmbctpbnQYc/dGMP1ouyQLaYb3CZxxKR
         G195xv4+/yqGw==
Received: by mail-ed1-f70.google.com with SMTP id g11-20020a056402090b00b003f8fd1ac475so5276811edz.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 04:49:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tnCA4HRIcZvjskoSMkqJWo8kfiQaZS4+GQyiSop+DyI=;
        b=Mkqp/ijeMwqBtHX9JtcPkqdZXzuldmxSyDeKKSNw+m02TBoi3xCwU3wt/xoTj07qTs
         0BNLZzVOrlF+mEfRSCO3vQl4c7fh3VrilSynorU50JfJkQSE05B28IDWeT+XQrqCUks6
         Nr55ckTmdq9PtoveeAap7+0jmmLRTMCIS6bkrtUFbheS7qOY4zj6pLMy7tzDeLWpSjI+
         th9CSCOp3TEG6sMTUzTS+A26Cz99K36FmpU/NAQbeSfxnXa31cFrt2DpGIvJGvas1BCY
         tzPA7d34xnmKhEawaWNzvXPtH/+sOONCvXXhmtnbJ+OcJWYsGiIKvlCmQRKL4GX/R8Xr
         Cpbw==
X-Gm-Message-State: AOAM532O0XNdvqUyARiw0/a0ShRuz4pFYxrGkOcVRhv+mb7spcpaVLV2
        80nct4ltFx+XfvMUb/VoXcvxG5LAF82U4tG/Nx6fOaV63gQ1B/Gzp3gXvD3PBqhM7JoM2YLpDyS
        mr0Hi2ywlJ+qQnWNJ+wPkZgCyeLOgYi7sJWlOA4I=
X-Received: by 2002:a17:906:4317:: with SMTP id j23mr3386186ejm.748.1642078198630;
        Thu, 13 Jan 2022 04:49:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxnkCV8uVHvDvXo+BCsjQfovQrpVX/2Vi4aZsv65zQFi8pZnKx+YHr+3j+KDUCy3wNPScYbjQ==
X-Received: by 2002:a17:906:4317:: with SMTP id j23mr3386170ejm.748.1642078198466;
        Thu, 13 Jan 2022 04:49:58 -0800 (PST)
Received: from [192.168.0.29] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id hq35sm849073ejc.54.2022.01.13.04.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 04:49:58 -0800 (PST)
Message-ID: <b9fac286-9227-b26b-221b-7f54b63e6b0b@canonical.com>
Date:   Thu, 13 Jan 2022 13:49:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 03/23] clk: samsung: fsd: Add initial clock support
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Jayati Sahu <jayati.sahu@samsung.com>,
        Ajay Kumar <ajaykumar.rs@samsung.com>
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122324epcas5p105c53b448b5801813a02a88c6107a2f3@epcas5p1.samsung.com>
 <20220113121143.22280-4-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220113121143.22280-4-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 13:11, Alim Akhtar wrote:
> Add initial clock support for FSD (Full Self-Driving) SoC
> which is required to bring-up platforms based on this SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Jayati Sahu <jayati.sahu@samsung.com>
> Signed-off-by: Ajay Kumar <ajaykumar.rs@samsung.com>
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/clk/samsung/Makefile  |   1 +
>  drivers/clk/samsung/clk-fsd.c | 308 ++++++++++++++++++++++++++++++++++
>  drivers/clk/samsung/clk-pll.c |   1 +
>  drivers/clk/samsung/clk-pll.h |   1 +
>  4 files changed, 311 insertions(+)
>  create mode 100644 drivers/clk/samsung/clk-fsd.c
> 
> diff --git a/drivers/clk/samsung/Makefile b/drivers/clk/samsung/Makefile
> index c46cf11e4d0b..d66b2ede004c 100644
> --- a/drivers/clk/samsung/Makefile
> +++ b/drivers/clk/samsung/Makefile
> @@ -18,6 +18,7 @@ obj-$(CONFIG_EXYNOS_AUDSS_CLK_CON) += clk-exynos-audss.o
>  obj-$(CONFIG_EXYNOS_CLKOUT)	+= clk-exynos-clkout.o
>  obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos7.o
>  obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos850.o
> +obj-$(CONFIG_ARCH_TESLA_FSD)         += clk-fsd.o

It should be rather it's own CONFIG_TESLA_FSD_CLK option, just like
other Exynos designs. This keeps unified approach with existing Samsung
clock Kconfig.

>  obj-$(CONFIG_S3C2410_COMMON_CLK)+= clk-s3c2410.o
>  obj-$(CONFIG_S3C2410_COMMON_DCLK)+= clk-s3c2410-dclk.o
>  obj-$(CONFIG_S3C2412_COMMON_CLK)+= clk-s3c2412.o
> diff --git a/drivers/clk/samsung/clk-fsd.c b/drivers/clk/samsung/clk-fsd.c
> new file mode 100644
> index 000000000000..e47523106d9e
> --- /dev/null
> +++ b/drivers/clk/samsung/clk-fsd.c
> @@ -0,0 +1,308 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Common Clock Framework support for FSD SoC.
> + *
> + * Copyright (c) 2017-2022 Samsung Electronics Co., Ltd.
> + *             https://www.samsung.com
> + * Copyright (c) 2017-2022 Tesla, Inc.
> + *             https://www.tesla.com
> + *

Drop the line break with empty * comment.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/of.h>
> +
> +#include "clk.h"
> +#include <dt-bindings/clock/fsd-clk.h>

dt-bindings headers before local clk.h.

> +
> +/* Register Offset definitions for CMU_CMU (0x11c10000) */



Best regards,
Krzysztof
