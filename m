Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2E8425C32
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 05:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728313AbfEVDbe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 23:31:34 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40722 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728210AbfEVDbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 23:31:34 -0400
Received: by mail-pf1-f196.google.com with SMTP id u17so542875pfn.7
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 20:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=70DJ6xEYXdyE5ONMBui8fhHROrLWF1i2GATP34gSzBE=;
        b=pbcHDo3xPViuCzHm2rSbJYkI9lDRRhEKtkcVN/h8NeSGBWVbhQOz47Yj2hT+Tc06FV
         xtASp0+1WdTHgsegau+V0DqUpx2Yr87Li75jrWQjs23pxqIsDWBWbPuPqy+EkOEPtzoj
         mC5MlchKkNL00s3TyGX+HgATuaVkur5SydLyEft/6oiYTbp4hWvh3ygzYJ6nQkYee+bi
         HRdtBzcJHBMQbw+MhhPbMPch2UGxBkFUbgpoTwsBDn3102BwxVYIwwHQYzrmAfpQACbo
         ONKWAk6/fgbBFygsgPf5u3+/OEqcqzR3WxblPf4zWjXQ2OMAEL4nQ6UgKJuOkYXuvaAT
         g+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=70DJ6xEYXdyE5ONMBui8fhHROrLWF1i2GATP34gSzBE=;
        b=D8d+/ICTuCVidWX9AiWxaZrXa9nuoRFjQeP3jnmo+FyZPSJ2vm0o4jKLPh8BjkfZDa
         y7pmLa/9eFOQaOp4mzZ+vEBtsR5BNIGmjUXio+MS6FAFbKp5v7At9DdPBvRp/K05y34B
         cOKXR4AGSrQWcLepMucAhRX9ms2m225vXv1mXkBoZu3igCVckuNXmGIYBpaGm7sKpYnF
         svrVZUs/s6uk+gWZW64+9koQIx/Qi+ZQvnEJGDPTDs9TKsFoImrw3SoqlHgMJGMyazhZ
         doddDbo8WdJos0Kdalks3hb+nJ5C4HwiOrVkHRkD3t68wg6FzErFWXTHBZxrbkpbR+6O
         UyHA==
X-Gm-Message-State: APjAAAVzEp/89I9rdogPo+DcVdY+9K6gzCAVwOvXD/3Iop+5fRJaBWl8
        7bGGkbsJM0nJoKot4SQv5SRgowoBP/k=
X-Google-Smtp-Source: APXvYqx/zst8wDzIb6P89YyExTovp2xI3XT920F4myuEeSrUm2I9hhhxwU5SxZOdntWJE79iRgVyXg==
X-Received: by 2002:a62:5306:: with SMTP id h6mr35072808pfb.29.1558495893384;
        Tue, 21 May 2019 20:31:33 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id w66sm45540879pfb.47.2019.05.21.20.31.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 20:31:32 -0700 (PDT)
Date:   Tue, 21 May 2019 20:31:30 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Amit Kucheria <amit.kucheria@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        agross@kernel.org, niklas.cassel@linaro.org,
        marc.w.gonzalez@free.fr, sibis@codeaurora.org,
        daniel.lezcano@linaro.org, Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/9] arm64: dts: qcom: qcs404: Add PSCI cpuidle low
 power states
Message-ID: <20190522033130.GL3137@builder>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
 <cddc5957a510eef61284656fd1d739d4112a2daa.1558430617.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cddc5957a510eef61284656fd1d739d4112a2daa.1558430617.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 21 May 02:35 PDT 2019, Amit Kucheria wrote:

> From: Niklas Cassel <niklas.cassel@linaro.org>
> 
> Add device bindings for cpuidle states for cpu devices.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> [rename the idle-states to more generic names and fixups]
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---

Applied

Regards,
Bjorn

>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index e8fd26633d57..0a9b29af64c2 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -30,6 +30,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x100>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -38,6 +39,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x101>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -46,6 +48,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x102>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -54,6 +57,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x103>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -61,6 +65,20 @@
>  			compatible = "cache";
>  			cache-level = <2>;
>  		};
> +
> +		idle-states {
> +			entry-method = "psci";
> +
> +			CPU_SLEEP_0: cpu-sleep-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "standalone-power-collapse";
> +				arm,psci-suspend-param = <0x40000003>;
> +				entry-latency-us = <125>;
> +				exit-latency-us = <180>;
> +				min-residency-us = <595>;
> +				local-timer-stop;
> +			};
> +		};
>  	};
>  
>  	firmware {
> -- 
> 2.17.1
> 
