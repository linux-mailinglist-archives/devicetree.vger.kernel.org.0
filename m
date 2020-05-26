Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D778D1E0C81
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 13:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390071AbgEYLIN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 May 2020 07:08:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390069AbgEYLIJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 May 2020 07:08:09 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7E00C061A0E
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 04:08:08 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id y5so2986394wmi.5
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 04:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lQKQDzeVK4Uf3YS6MYrDsg7Y/owjPxYU/XltSmblwvw=;
        b=vr2Gr68IKZOePnRH+JwTxvfjJw1QyyouKk1/zx+aPK2wkF44mQ2yS4xfQOkTqzjS8d
         HbCLeCVZ2eg/OD9jp0ttXs2SdyrkRuQhWYb940sDiSlrfJMDPslZn8rS7TzPlBfWSnR4
         So6x/vwQbujFsjO9x6GXTv9zCQ6ImvrfCLbkRUW7ii/vYovyq+X/FAdklWj4F5aSf45M
         I237KjxQhoZeF1zPOzFQSbBnfvey4A6aKytsUtNAEuEl3qxERx+WCF6DzHoZZ72AWXha
         j3amNUooVpvkT08oOppXeU+j0bI/gbIu8r+gppg6r16buLUCtBJcK77nzEzY6VD/agx8
         6+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lQKQDzeVK4Uf3YS6MYrDsg7Y/owjPxYU/XltSmblwvw=;
        b=rlgDOy6xhRlIkff7phgh7Powh4ucqC4YehHVuZrqDdtBnF7rHi1usOk4Q1LwRikyYf
         RUs9rdmzXdou/1onwlV7VRhoD9/NBwSZ/Rn3c52HGXTSrjtFJW040DkASmcKCS4cMkas
         RjZPqQq8p0tUHTtxHYcZJQBoQGKwBwZO6Yh1pyvkgj2cg/Iyok36DN1XNdccFYOS/T9Q
         oq4aIhALLuE0t9IB3pVV2ATYlARx44NXPtdbdqZoWzkAa6BgcYd/75egf0Oa6qhW0HZz
         whCVxr6aTVYDSSiwUj7SMKlYkQ0sRXRRDquPDhaZTely7UFQxnGkMr4ifegyE9hcRkb5
         nehA==
X-Gm-Message-State: AOAM533xwQEN0HT+wtgohjPBad7VwFoj4inmXq8Wut7syeU4deOSpWK/
        1pjAYOFdVSs86QF1ahm+eBp1dOknJGM=
X-Google-Smtp-Source: ABdhPJzplrooTMofH5YFdtdecp/U7nYLCb5HbCk36w+9QdWdZmeknbEFpXjnChpyI8OlDim1kRmqIw==
X-Received: by 2002:a1c:bb05:: with SMTP id l5mr10962772wmf.141.1590404887419;
        Mon, 25 May 2020 04:08:07 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd? ([2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd])
        by smtp.googlemail.com with ESMTPSA id q1sm3445092wmj.9.2020.05.25.04.08.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 04:08:06 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: ls1028a: add one more thermal zone support
To:     Yuantian Tang <andy.tang@nxp.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
        will.deacon@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20200525073827.13272-1-andy.tang@nxp.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <bdfd7018-aed8-ddbe-8bd2-2fa834013218@linaro.org>
Date:   Mon, 25 May 2020 13:08:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525073827.13272-1-andy.tang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2020 09:38, Yuantian Tang wrote:
> There are 2 thermal zones in ls1028a soc. Current dts only
> includes one. This patch adds the other thermal zone node
> in dts to enable it.

For my personal information, is there a cooling device for the DDR?

> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 055f114cf848..bc6f0c0f85da 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -129,11 +129,31 @@
>  	};
>  
>  	thermal-zones {
> -		core-cluster {
> +		ddr-controller {
>  			polling-delay-passive = <1000>;
>  			polling-delay = <5000>;
>  			thermal-sensors = <&tmu 0>;
>  
> +			trips {
> +				ddr-ctrler-alert {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				ddr-ctrler-crit {
> +					temperature = <95000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		core-cluster {
> +			polling-delay-passive = <1000>;
> +			polling-delay = <5000>;
> +			thermal-sensors = <&tmu 1>;
> +
>  			trips {
>  				core_cluster_alert: core-cluster-alert {
>  					temperature = <85000>;
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
