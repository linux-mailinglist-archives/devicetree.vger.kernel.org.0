Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFE2F48D8D9
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 14:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235145AbiAMN2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 08:28:52 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:52748
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235140AbiAMN2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 08:28:51 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 428ED3F1C9
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 13:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642080530;
        bh=hznGQk19CD8NoR3VWNyd9c/wYFGozPUj+0yuhJLbQPM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=CjvjK6NmiJwGYzK5EyP6h4SwsSejH/UGRIXxYgl27aCTtJO1oE/bfF9W1+XlTwzmZ
         iYaB24sNjP/dCupmKjXL4EDyyN4YAAXugcoeFjenXree1I3vGhy/kshJ8fPk0AalTE
         awQNTgWx0L8ggvVZz8HiAaldnE6lotL07EMcRbhrmEMVHbYJvW+sCJJe85lguTw4bw
         ZdIdGGLc/VJTRCNPKQEATX0x+RUlGgPtdeLL9PbRRW14M2/KTGg/7btvC8fBqVtcQn
         mnt6Y+NX+tXKgR3+NPZmnveo2q4JUmgDhdhtBfQbQY8DGwoG6SzkVwDMcG6awdL9sL
         3mO7IMJI4CRrQ==
Received: by mail-ed1-f71.google.com with SMTP id x19-20020a05640226d300b003f8b80f5729so5293392edd.13
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 05:28:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hznGQk19CD8NoR3VWNyd9c/wYFGozPUj+0yuhJLbQPM=;
        b=igQaLJG3nBNC24rn4WvQJGl+KX1rHVXoZ7CAu1ZFJRRVk/Rz5SUz3jbPSVK1p/r6Z2
         PdC4Hfwz0kZZyEKZ1tr0cyJ9QxDArIDcsbz71EVYR9lCxgb5nULB2lg35wJk69PqabNa
         qcQu427vyXVbj5dx2nVvb19AYumez4pwEcJRjPN+BVhv1XasDuye/Ay8IT8M9N26MH3g
         2cveHUgwgrKwf3hfSZBRz5ow38mjj1/jA8w830fHsvu4VmApgEtVLnblwreUSVWRWQsy
         /4fmi9E/GLYTjgdiWZ4LIZ1H58spr9xLnK5mg/Uz1q50fZl23zxxia6Dty24YzzTbl1y
         o5qQ==
X-Gm-Message-State: AOAM532bZZmCZuYafMgkSxYNIbDFnUXJ6bOqVcQKN2b1r7YfHeE1GCki
        eRIF8AKQm2MnL1qwR8G0l9pL9JDSGoFxpHXMaA3d8d+ky2ju4PSi57RMm4UwNT5L/Hg91qlA3Ji
        JUea0ZlNAcjnDcAevqO2FrpNDLxqaLmmkGm6VH9s=
X-Received: by 2002:a17:906:a15a:: with SMTP id bu26mr3467342ejb.335.1642080529631;
        Thu, 13 Jan 2022 05:28:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxvQFVh8OpoiHGF8vNUoAdSJ/5cDZxtFhJSX77E0+B6EEgX3ZPEv8tzxTe5uuJkZotkBoW/eQ==
X-Received: by 2002:a17:906:a15a:: with SMTP id bu26mr3467336ejb.335.1642080529487;
        Thu, 13 Jan 2022 05:28:49 -0800 (PST)
Received: from [192.168.0.30] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c19sm1178698ede.47.2022.01.13.05.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 05:28:48 -0800 (PST)
Message-ID: <dc400642-418b-6bc3-f4f8-0770c0ed4671@canonical.com>
Date:   Thu, 13 Jan 2022 14:28:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 18/23] spi: s3c64xx: Add spi port configuration for Tesla
 FSD SoC
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, broonie@kernel.org, linux-spi@vger.kernel.org,
        Aswani Reddy <aswani.reddy@samsung.com>
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122435epcas5p18e6a2699f193b9e1287588278a570235@epcas5p1.samsung.com>
 <20220113121143.22280-19-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220113121143.22280-19-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 13:11, Alim Akhtar wrote:
> This patch adds compatible and port configuration for
> spi controller for Tesla Full Self-Driving SoC.
> 
> Cc: linux-fsd@tesla.com
> Cc: broonie@kernel.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Aswani Reddy <aswani.reddy@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/spi/spi-s3c64xx.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 8755cd85e83c..8d0c1f03ab7a 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1442,6 +1442,16 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
>  	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
>  };
>  
> +static struct s3c64xx_spi_port_config fsd_spi_port_config = {
> +	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},
> +	.rx_lvl_offset	= 15,
> +	.tx_st_done	= 25,
> +	.high_speed	= true,
> +	.clk_from_cmu	= true,
> +	.clk_ioclk	= false,
> +	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
> +};
> +
>  static const struct platform_device_id s3c64xx_spi_driver_ids[] = {
>  	{
>  		.name		= "s3c2443-spi",
> @@ -1472,6 +1482,9 @@ static const struct of_device_id s3c64xx_spi_dt_match[] = {
>  	{ .compatible = "samsung,exynos5433-spi",
>  			.data = (void *)&exynos5433_spi_port_config,
>  	},
> +	{ .compatible = "tesla,fsd-spi",
> +			.data = (void *)&fsd_spi_port_config,
> +	},

Looks good, except the discussion about too generic compatible.


Best regards,
Krzysztof
