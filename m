Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE1ED4028F4
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 14:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344322AbhIGMiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 08:38:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34274
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344335AbhIGMhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 08:37:55 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D3E854077A
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 12:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631018208;
        bh=kUQBNqvLjn5SJ3y1jqXZ48A4UtyVFge6gK8Eh6dxOP4=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=LhFyW1orG9sUBsUlQqQLgCXncSVeCFKbW+wEOo8VX5C2JmflRsPqA0KzPgruoU17M
         8C+mWgLS2kbBCeIDCSSR5hw7p7s2c31XVG5gQsNhXxar3UMHi61IAyHxwz1AkQ90h+
         HGF+VRVOSGv2beVFwTdGJdnp/VqhCyQ7fWUZsqlhzXME80ykKKQy05GkDOU7fJGOv/
         e+2N8pJMXNZjxa9JkfvDH7cYtvwaRECwU0hJiW2vKvx6r6Wz3tVzOaI6VJq8DtMAEA
         eSNE7Ekh/9qbzms/cunJt8j/+r4RjacBGxnM5jrqXfAfpd1UsXftTWHtT5dW8ZwH11
         6JgMHOGFNaz6g==
Received: by mail-wr1-f71.google.com with SMTP id u2-20020adfdd42000000b001579f5d6779so2057388wrm.8
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 05:36:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kUQBNqvLjn5SJ3y1jqXZ48A4UtyVFge6gK8Eh6dxOP4=;
        b=hCshjAsw+nUn4yzHjMgT5qoaf2aSXZ2b+q5gixRmT1Fj3/TPrcyL1AoF2KA9BlSHZ+
         cZWaWDVuuepOpc9/tp0xSzKzAwMd0lvLx16NdNrU9JxXH7Vi1GMUKxGAu/0qI783qfN8
         m1Xrlz8vChKr/HlZ+pnK+dYQY5tcW+NDTlQFvaBXzHwsWg8sBdh0OGrouDJ8vkMXScFz
         FvRzDIjrHBdmAVmXUKY+omlgWL3R42yAfjCq+/H6R734JJEj4FvRlnnfHTmwi/zmwYWO
         cayENoC1ICW29rRvRfqrLGVnkrrzlhYymPKpIYrNEU+Gto/jKobDo0s0CMvouzIbxt/m
         JUMg==
X-Gm-Message-State: AOAM53119krlPAdCmrqJnZ1KdttFVNarbzaXuFwdifPgZtlPKbdixP01
        fhiQ/ARZFM3afxH0UA1txPHx0pSqcbY6WyQ7Sekg1em5FsyPQ9hjDKhbpp04nbKjchf1AOkEvMm
        SV9DTupYcbGaO2jsUi+trYN/16doZMjbfFTcvrw4=
X-Received: by 2002:a05:6000:18a:: with SMTP id p10mr17958049wrx.40.1631018208533;
        Tue, 07 Sep 2021 05:36:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyinpXYU71XtwrZ3JCIxVV95srjFG3YvDI9n19gDYcDpDB5gs1mVCHI2a/OvPBFynEGh2zVEg==
X-Received: by 2002:a05:6000:18a:: with SMTP id p10mr17958032wrx.40.1631018208383;
        Tue, 07 Sep 2021 05:36:48 -0700 (PDT)
Received: from [192.168.3.211] ([79.98.113.233])
        by smtp.gmail.com with ESMTPSA id i9sm753657wmi.44.2021.09.07.05.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 05:36:47 -0700 (PDT)
Subject: Re: [PATCH v3 8/8] memory: gpmc-omap: "gpmc,device-width" DT property
 is optional
To:     Roger Quadros <rogerq@kernel.org>, tony@atomide.com
Cc:     robh+dt@kernel.org, grygorii.strashko@ti.com, nm@ti.com,
        lokeshvutla@ti.com, nsekhar@ti.com, miquel.raynal@bootlin.com,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210907113226.31876-1-rogerq@kernel.org>
 <20210907113226.31876-9-rogerq@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <aa465bd9-b3d5-8d75-3e59-e86c2cd093cd@canonical.com>
Date:   Tue, 7 Sep 2021 14:36:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210907113226.31876-9-rogerq@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2021 13:32, Roger Quadros wrote:
> Check for valid gpmc,device-width, nand-bus-width and bank-width
> at one place. Default to 8-bit width if none present.

I don't understand the message in the context of the patch. The title
says one property is optional - that's it. The message says you
consolidate checks. How is this related to the title?

The patch itself moves around checking of properties and reads
nand-bus-width *always*. It does not "check at one place" but rather
"check always". In the same time, the patch does not remove
gpmc,device-width check in other place.

All three elements - the title, message and patch - do different things.
What did you want to achieve here? Can you help in clarifying it?


Best regards,
Krzysztof


> 
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  drivers/memory/omap-gpmc.c | 41 ++++++++++++++++++++++++--------------
>  1 file changed, 26 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/memory/omap-gpmc.c b/drivers/memory/omap-gpmc.c
> index f80c2ea39ca4..32d7c665f33c 100644
> --- a/drivers/memory/omap-gpmc.c
> +++ b/drivers/memory/omap-gpmc.c
> @@ -2171,10 +2171,8 @@ static int gpmc_probe_generic_child(struct platform_device *pdev,
>  		}
>  	}
>  
> -	if (of_device_is_compatible(child, "ti,omap2-nand")) {
> -		/* NAND specific setup */
> -		val = 8;
> -		of_property_read_u32(child, "nand-bus-width", &val);
> +	/* DT node can have "nand-bus-width" or "bank-width" or "gpmc,device-width" */
> +	if (!of_property_read_u32(child, "nand-bus-width", &val)) {
>  		switch (val) {
>  		case 8:
>  			gpmc_s.device_width = GPMC_DEVWIDTH_8BIT;
> @@ -2183,24 +2181,37 @@ static int gpmc_probe_generic_child(struct platform_device *pdev,
>  			gpmc_s.device_width = GPMC_DEVWIDTH_16BIT;
>  			break;
>  		default:
> -			dev_err(&pdev->dev, "%pOFn: invalid 'nand-bus-width'\n",
> -				child);
> +			dev_err(&pdev->dev,
> +				"%pOFn: invalid 'nand-bus-width':%d\n", child, val);
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +	} else if (!of_property_read_u32(child, "bank-width", &val)) {
> +		if (val != 1 && val != 2) {
> +			dev_err(&pdev->dev,
> +				"%pOFn: invalid 'bank-width':%d\n", child, val);
>  			ret = -EINVAL;
>  			goto err;
>  		}
> +		gpmc_s.device_width = val;
> +	} else if (!of_property_read_u32(child, "gpmc,device-width", &val)) {
> +		if (val != 1 && val != 2) {
> +			dev_err(&pdev->dev,
> +				"%pOFn: invalid 'gpmc,device-width':%d\n", child, val);
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +		gpmc_s.device_width = val;
> +	} else {
> +		/* default to 8-bit */
> +		gpmc_s.device_width = GPMC_DEVWIDTH_8BIT;
> +	}
>  
> +	if (of_device_is_compatible(child, "ti,omap2-nand")) {
> +		/* NAND specific setup */
>  		/* disable write protect */
>  		gpmc_configure(GPMC_CONFIG_WP, 0);
>  		gpmc_s.device_nand = true;
> -	} else {
> -		ret = of_property_read_u32(child, "bank-width",
> -					   &gpmc_s.device_width);
> -		if (ret < 0 && !gpmc_s.device_width) {
> -			dev_err(&pdev->dev,
> -				"%pOF has no 'gpmc,device-width' property\n",
> -				child);
> -			goto err;
> -		}
>  	}
>  
>  	/* Reserve wait pin if it is required and valid */
> 


