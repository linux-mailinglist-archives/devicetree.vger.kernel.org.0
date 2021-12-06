Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEAB846914D
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 09:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239062AbhLFISS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 03:18:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:39816
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239045AbhLFISS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 03:18:18 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 134A53F1F0
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 08:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638778489;
        bh=pebEk52luhXLxxTpaPgvP+uRufHrkPklQ9wpre0mi+M=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bPZqvKSDzsk1tD9ApxxnGfwiF32V5iJf+NKZU9VGAhyejNhHJ7I98DFj2H5TdosXe
         9zFd1I0VGO5jxYoAGmGsa76IArmlC/W2wrSH8BLTpvE9Hu45CBEiHCelRoMVNk149z
         nrC4+xaLrBriaaikpnT2jq0LOG+p49+H29xu7GBJXJoSqN0Zxvw8pABSo4FWsqUgGb
         CTGapaQBW+sEhvqClgj17Qhdyzne6XOrf3EGQTcPn8QyphOk6PZdnI9ZXtojZkzkOx
         6oTrskbkQOsryipyNRZpNG23IxpWMPNA02+yhK+R6LJppZkGhDDOe93H6lSydiIzQ4
         CISIWtwR8GLQg==
Received: by mail-lf1-f71.google.com with SMTP id bi30-20020a0565120e9e00b00415d0e471e0so3526996lfb.19
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 00:14:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pebEk52luhXLxxTpaPgvP+uRufHrkPklQ9wpre0mi+M=;
        b=Z4YRaQowpYC9ik0jscCtZW6Rcg6HRyJhMV89w8P+HUUqTTMHyAeVnvKFYgibHnaudm
         Oz0pCrwDGVA203m42rH9/MouSlymoAMRqJCYJBIWA81VZeqAzq0fcYHIUbSQJabETPK4
         QCn31uPikZjxQA27JgWmvDCM5IuP2ouTWOz31w7yweJHcfdN3oLkLs9UEqsPDVukuF2Q
         gUYW+n2Z0/AFX9IpQhx8KkWJ9+hF6r4oasTk2i03FlpdAV7xgpqFahSAblPcVmJuVK0l
         LU36Bs4mSEnK6QY7K97VQOGc2gvOwtX8go8VqNhIoJ6bSTsabXqc6D25LogADJ6eIpfZ
         Vy/A==
X-Gm-Message-State: AOAM5332hZA14B9UHQ1uKwcXH9OvvsZl+tDx3Sj/BOjmXfiBc/L2U92r
        TigsC73L5OJNKRE6UyduV4ASxQxoSXw8wUQgQE7/UZ4BOjTwAfoSse8kt6HMy1qG6wlzzLco8sv
        lJ8P+oRuRmYfoosr2EtTfvOCQmgrDSKXgT5tGvVY=
X-Received: by 2002:a2e:a588:: with SMTP id m8mr35295100ljp.23.1638778487778;
        Mon, 06 Dec 2021 00:14:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxkjdsS8wT/1ZgOCaXlM/8RKnbGXhyADVHCYLU0NDvaCjZdFze4Gc4WES2nff3DeILprgXWeg==
X-Received: by 2002:a2e:a588:: with SMTP id m8mr35295075ljp.23.1638778487585;
        Mon, 06 Dec 2021 00:14:47 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bd28sm1253823ljb.134.2021.12.06.00.14.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 00:14:47 -0800 (PST)
Message-ID: <c7d6f119-55b5-cda7-13dc-f6f61a7fdb59@canonical.com>
Date:   Mon, 6 Dec 2021 09:14:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v3 6/7] clk: samsung: Add initial Exynos7885 clock driver
Content-Language: en-US
To:     David Virag <virag.david003@gmail.com>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211205230804.202292-1-virag.david003@gmail.com>
 <20211205230804.202292-7-virag.david003@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211205230804.202292-7-virag.david003@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/12/2021 00:08, David Virag wrote:
> This is an initial implementation adding basic clocks, such as UART,
> USI, I2C, WDT, ect. and their parent clocks. It is heavily based on the
> Exynos850 clock driver at 'drivers/clk/samsung/clk-exynos850.c' which
> was made by Sam Protsenko, thus the copyright and author lines were
> kept.
> 
> Bus clocks are enabled by default as well to avoid hangs while trying to
> access CMU registers.
> 
> Only the parts of CMU_TOP needed for CMU_CORE and CMU_PERI, a bit of
> CMU_CORE, and most of CMU_PERI is implemented as of now.
> 
> Signed-off-by: David Virag <virag.david003@gmail.com>
> ---
> Changes in v2:
>   - Use shared code between Exynos850 and 7885 clock drivers
>   - As the code that was from the Exynos850 clock driver was moved to
>     clk-exynos-arm64.c and what remains is mostly SoC specific data,
>     move the Linaro copyright and Sam Protsenko author lines there.
> 
> Changes in v3:
>   - Nothing
> 
>  drivers/clk/samsung/Makefile         |   1 +
>  drivers/clk/samsung/clk-exynos7885.c | 593 +++++++++++++++++++++++++++
>  2 files changed, 594 insertions(+)
>  create mode 100644 drivers/clk/samsung/clk-exynos7885.c
> 
> diff --git a/drivers/clk/samsung/Makefile b/drivers/clk/samsung/Makefile
> index 901e6333c5f0..0df74916a895 100644
> --- a/drivers/clk/samsung/Makefile
> +++ b/drivers/clk/samsung/Makefile
> @@ -18,6 +18,7 @@ obj-$(CONFIG_EXYNOS_AUDSS_CLK_CON) += clk-exynos-audss.o
>  obj-$(CONFIG_EXYNOS_CLKOUT)	+= clk-exynos-clkout.o
>  obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos-arm64.o
>  obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos7.o
> +obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos7885.o
>  obj-$(CONFIG_EXYNOS_ARM64_COMMON_CLK)	+= clk-exynos850.o
>  obj-$(CONFIG_S3C2410_COMMON_CLK)+= clk-s3c2410.o
>  obj-$(CONFIG_S3C2410_COMMON_DCLK)+= clk-s3c2410-dclk.o
> diff --git a/drivers/clk/samsung/clk-exynos7885.c b/drivers/clk/samsung/clk-exynos7885.c
> new file mode 100644
> index 000000000000..0b3a28800e76
> --- /dev/null
> +++ b/drivers/clk/samsung/clk-exynos7885.c
> @@ -0,0 +1,591 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2021 Dávid Virág <virag.david003@gmail.com>
> + * Author: Dávid Virág <virag.david003@gmail.com>
> + *
> + * Common Clock Framework support for Exynos7885 SoC.
> + */
> +
> +#include <linux/of_device.h>
> +#include <dt-bindings/clock/exynos7885.h>
> +
> +#include "clk-exynos-arm64.h"

Similarly to your previous patch - you need headers for every explicitly
used symbol/function etc.

Best regards,
Krzysztof
