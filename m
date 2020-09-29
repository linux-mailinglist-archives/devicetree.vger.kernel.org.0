Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE4327BEB1
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:00:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgI2IAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:00:44 -0400
Received: from mail-ej1-f67.google.com ([209.85.218.67]:37433 "EHLO
        mail-ej1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgI2IAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 04:00:44 -0400
Received: by mail-ej1-f67.google.com with SMTP id nw23so13691658ejb.4
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HKgZE9BzcCZtJAa+9x3WUux57s80SbH2mXwDnzuejGs=;
        b=l2uHsd1ICb1h+RI0KK2X4kcTYRYeR7HXsDH581iM+2bj3Mlo5QWIKq+UYIENIOPUVr
         zbgnIDU73qiyive+ffTQGhErU0bbQUhwJXopjNMAIxh8UYknZlw+ZzL/UzO6RsCaOVBz
         QkBVKMw1ftYfqc2YabIpsoKMnMr5ZcIFC36qHpBn6+flmX45SVsV20PEraZXItEEWAqU
         9DMpSCrmeab/f20o3rfZVk9FohTllsFxxaWEs7kMOZIXbf0vxZSUAyl/W4L/ZmKjXYcQ
         obF+myG9bPkuPG3thnXpcJqIfDH+GtJuS5/17oRW2x7rCYAhX19Hel9x6EhS0eVr+oes
         aqRw==
X-Gm-Message-State: AOAM531OxesyWpu6872phbTuye0KO/bqr7x6POIVd5aXDcX7DhtfTJRK
        W47G1FubAl4oKJTlMOxtU0g=
X-Google-Smtp-Source: ABdhPJyiBycVmdGrU8tRUhcjIWA6vezcDUvl9nzsgxDArhcLsnp0pvCAmTA2FhJLNxySiOG39wxxXQ==
X-Received: by 2002:a17:906:7fcc:: with SMTP id r12mr2691728ejs.360.1601366442159;
        Tue, 29 Sep 2020 01:00:42 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id p25sm5154529edm.60.2020.09.29.01.00.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 01:00:41 -0700 (PDT)
Date:   Tue, 29 Sep 2020 10:00:39 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: freescale: Add pmu support on imx8mp
Message-ID: <20200929080039.GC7139@kozik-lap>
References: <20200927094742.2714535-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200927094742.2714535-1-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 27, 2020 at 05:47:41PM +0800, Jacky Bai wrote:
> Add PMU node to enable pmu support on imx8mp.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 6038f66aefc1..8b07a70545f6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -133,6 +133,13 @@ clk_ext4: clock-ext4 {
>  		clock-output-names = "clk_ext4";
>  	};
>  
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7
> +			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;

How many cores do you have there? 4 or 6?

Best regards,
Krzysztof
