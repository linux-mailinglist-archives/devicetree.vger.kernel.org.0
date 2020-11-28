Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74F2F2C74D8
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388455AbgK1Vti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732375AbgK1TAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 14:00:08 -0500
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F0C1C09426D
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:31:43 -0800 (PST)
Received: by mail-pg1-x544.google.com with SMTP id w16so6028530pga.9
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZnxKHrct1cvxNtNqNcl6uCXJBiv2C9CvIc5DUO6nA0I=;
        b=i1rtn+mcaF7kkwH3qlZfzxUllj9ZlZibQvsjMw2wgYuZ9DHIsKUG3IRerfc1nzIjDG
         /PZhUuOYtmmJ7qxCoP+85IDg6dycqqDaYuGrY1scw34/SpKsRp+E0GDRMiXXPxaTRgm2
         W/IgWUpq5c/dX/mavlWt17RDGr6VKxb8jvNK2zCbnuLBVmcSeScUs780rafWTSAlEeDb
         p44nAbOD1PwiLpTDZrCCna219Liz7/K3xYal3yRkdhDufjOY6j4dKan9HuLRuHINWLFJ
         TN1qaziXWoCUlfFBUu9e6/5fIbkuNEQbuZlNy/hWvWEbGYZlH9cajIx9hUCTXISBXoE5
         OxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZnxKHrct1cvxNtNqNcl6uCXJBiv2C9CvIc5DUO6nA0I=;
        b=bET9DZjINjUQi8PtySSp/5mykjOya/86yBrtDe7scTOZDEC99sIrGSjoQhvdhOtz2C
         xFL/65nMzWLCl+ZuRNxCI3BdsrhVp8IryhOaWUbH3vuqVbUzp98j0NFvJQApXum0e5Sm
         NlmvNuN7dfbGsEjoYN9bYr2DzrkauU8rUAqCUTzSQ6D3eyISzKR67H+ZbHW4IYcdmiEX
         3crI9b65yw7tXDo8NV4x/W+tuDptoEtUK4i4u2EM5SxYskVKx3JTMAoJhA6cOwLgK7nk
         DnHjvBp3D1DxCZEDG62PhB+Yb33abG9aMrF9U6OFb+BxpaGmvPlNpRKC2QXSil8hq1jd
         r2WQ==
X-Gm-Message-State: AOAM533KZTD+Dhuyp8LPpLWcUzCz9H4uxm555jELG0dN3nLurZ8usx5l
        PD4NIJsgCV2285JhKMcgN6kn
X-Google-Smtp-Source: ABdhPJx1BNlR0UDn+00ASz2EXwou3WLBK0ieiGY2VCQLyhXFuUl4w8LWp7KbcZfFA+/WNob66zOb6w==
X-Received: by 2002:a17:90b:4b87:: with SMTP id lr7mr14379315pjb.40.1606548702794;
        Fri, 27 Nov 2020 23:31:42 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id fu5sm13564487pjb.11.2020.11.27.23.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:31:42 -0800 (PST)
Date:   Sat, 28 Nov 2020 13:01:34 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dan Williams <dan.j.williams@intel.com>,
        devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/18] arm: dts: owl-s500: Add DMA controller
Message-ID: <20201128073134.GV3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <543eadc1e3005ecdca780266ef148518b5091377.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <543eadc1e3005ecdca780266ef148518b5091377.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:56:00AM +0200, Cristian Ciocaltea wrote:
> Add DMA controller node for Actions Semi S500 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/boot/dts/owl-s500.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
> index a57ce7d6d745..449e9807c4ec 100644
> --- a/arch/arm/boot/dts/owl-s500.dtsi
> +++ b/arch/arm/boot/dts/owl-s500.dtsi
> @@ -207,5 +207,19 @@ sps: power-controller@b01b0100 {
>  			reg = <0xb01b0100 0x100>;
>  			#power-domain-cells = <1>;
>  		};
> +
> +		dma: dma-controller@b0260000 {
> +			compatible = "actions,s500-dma";
> +			reg = <0xb0260000 0xd00>;
> +			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			dma-channels = <12>;
> +			dma-requests = <46>;
> +			clocks = <&cmu CLK_DMAC>;
> +			power-domains = <&sps S500_PD_DMA>;
> +		};
>  	};
>  };
> -- 
> 2.29.2
> 
