Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F3BA27BEB4
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727634AbgI2ICS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:02:18 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:41393 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727617AbgI2ICS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 04:02:18 -0400
Received: by mail-ed1-f68.google.com with SMTP id l24so267670edj.8
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mMIS0X3LNYzV0bYX/+jZoiNbf6H8wTzeHRN8LvijP+I=;
        b=M+AZ1iGZZn1XS0kBd+6ORW4hRTL1IfFTNy5XUYDa33AQ/8R6S3gICY6J+doXC3v0Uy
         IKFhUM0Goxq/eOVFU+c091IWYGUP9qQ41e0L4c6mh4UXW1wWuSZlhJfYcdpYqz/0jtKX
         acQi5iC3Y+yYRbT9SUHa1WNCXAryPvsQtRVijXr70emrQJ1wqjm9EzP02DbyxvyQQF5+
         6VXlnwGpguCqwuHFzL02Y4kzzzVYtWY/ravBS5aYMQA4vceQv/LQIsbZTIaKh3Zth9/g
         R0rky2nUuWDtlcrYO4dcxnaS4FA5/sLFrmYlDWVtsOKtLTCoFUMCOuNAC3trCwIbv81E
         tTxw==
X-Gm-Message-State: AOAM5313kNCOShSeiySEgMWDwo3yCDVAOo+epRkBLNeDXOd2x5Gu9mAs
        5bjnUr2I8GLpCNcIfv8NYQQ=
X-Google-Smtp-Source: ABdhPJwN89wkb+OWNCeeJ5ncHXcRo2ZwlGUt4n+raCs0zn/lLe51di1YcPF8WA4C7/MmEBlGUkfBjQ==
X-Received: by 2002:a05:6402:1fb:: with SMTP id i27mr1929567edy.379.1601366536246;
        Tue, 29 Sep 2020 01:02:16 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id bk13sm1939778ejb.58.2020.09.29.01.02.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 01:02:15 -0700 (PDT)
Date:   Tue, 29 Sep 2020 10:02:13 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Message-ID: <20200929080213.GD7139@kozik-lap>
References: <20200927094742.2714535-1-ping.bai@nxp.com>
 <20200927094742.2714535-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200927094742.2714535-2-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 27, 2020 at 05:47:42PM +0800, Jacky Bai wrote:
> Add PMU node to enable pmu support on imx8mn.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 746faf1cf2fb..589835d78727 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -186,6 +186,14 @@ clk_ext4: clock-ext4 {
>  		clock-output-names = "clk_ext4";
>  	};
>  
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7
> +			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;

The same as in 1/2 - unusual value for GIC_CPU_MASK_SIMPLE. There are
four cores on Nano.

Best regards,
Krzysztof
