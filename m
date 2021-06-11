Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 507AC3A3B0F
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 06:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbhFKEdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 00:33:49 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:37749 "EHLO
        mail-oi1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhFKEds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 00:33:48 -0400
Received: by mail-oi1-f177.google.com with SMTP id h9so4579844oih.4
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 21:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=59yJqR82P8PjeIAo2ksw8rI9JJM4L86Q1eEwNbgSYHU=;
        b=Kl8bCREMltCr03jIPej5TOD7cT5xH4W3vfCT4q5Rjg2XBqV4blryNuJCvcaJ3gp5uD
         MhAXdPFISNS3D7e6ov8FDV2e/+Q1XrMYzGnIVPHPO2LOmqDB4CaMeuKBkc6y77fm4kah
         I69Qm/epQlBx2RvhVAsDUaU5JGkQVlJO/rSuCWZOI8Wt09RQBlWsq8vjr2guo3cb8RZq
         z6zjEKgAVhL3Lkdi5/wGxCiX2W8VdwJXudPnD1slyDkZsZWbMEhiiTlnl6PMZUUy6PC5
         JL43wqsKtT4XCoPtV1N68BWo46NvHxubsna0NuLr88BMumCzcYPAn/VPGJdj+xsGRsrk
         L6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=59yJqR82P8PjeIAo2ksw8rI9JJM4L86Q1eEwNbgSYHU=;
        b=O5PmSjRxpvywYB004B3saUKYFfhn57/9g0aewexgSFh697SSXDPd71jRIJoiIMOpPy
         Ahml2H7Ttj1Y8Wa9EIbH1nD0NGArYWtr4bgYm/wgTVJ3/jvrW3O+DqhWZ3BEWAhEB6nP
         U8rcY4spHSGAR9JA5YcF5VRyPIGSUYVPmajkQmklxyLgpzxiEPtYSDXi2No41expYQUo
         mRRmclJxx+Gs/Sb0INwy35uHhnB2jFZe+THk+BttsEzWE4HkbhFEwBmCVIX3PESy26g9
         536uJ76NmxjvB9wHYwlzA+0vViBmDLpmWSOMD1lJnmg2XX1haDqmmCQf/uKmi0KwsoE6
         x6ug==
X-Gm-Message-State: AOAM533ZlMZp5t/cbKMbQ2EnnkoeCgfR0mcAoLmXXBpdrYeeP+Fhp2xP
        BEiUXNHoZnEgDUJZTTkqG/In7Q==
X-Google-Smtp-Source: ABdhPJzK3cLUWqL5RubRCf5xmI6t1v4JrKd2FvAFggYHnop8AH0i31V1aRw8VN+eZRL5oRqpAvy4rA==
X-Received: by 2002:aca:b8c2:: with SMTP id i185mr9256904oif.172.1623385850138;
        Thu, 10 Jun 2021 21:30:50 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a24sm1063421otr.3.2021.06.10.21.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 21:30:49 -0700 (PDT)
Date:   Thu, 10 Jun 2021 23:30:47 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Shaik Sajida Bhanu <sbhanu@codeaurora.org>
Cc:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        robh+dt@kernel.org, asutoshd@codeaurora.org,
        stummala@codeaurora.org, vbadigan@codeaurora.org,
        rampraka@codeaurora.org, sayalil@codeaurora.org,
        sartgarg@codeaurora.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, sibis@codeaurora.org,
        okukatla@codeaurora.org, djakov@kernel.org, cang@codeaurora.org,
        pragalla@codeaurora.org, nitirawa@codeaurora.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        agross@kernel.org
Subject: Re: [PATCH V1] arm64: dts: qcom: sc7180: Added xo clock for eMMC and
 Sd card
Message-ID: <YMLm96edhIYOJF+E@builder.lan>
References: <1623309107-27833-1-git-send-email-sbhanu@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1623309107-27833-1-git-send-email-sbhanu@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 10 Jun 02:11 CDT 2021, Shaik Sajida Bhanu wrote:

> Added xo clock for eMMC and Sd card.

Was about to push out my branch of patches, but before I do. Can you
please describe WHY this is needed?

Regards,
Bjorn

> 
> Signed-off-by: Shaik Sajida Bhanu <sbhanu@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 295844e..5bb6bd4 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -701,8 +701,9 @@
>  			interrupt-names = "hc_irq", "pwr_irq";
>  
>  			clocks = <&gcc GCC_SDCC1_APPS_CLK>,
> -					<&gcc GCC_SDCC1_AHB_CLK>;
> -			clock-names = "core", "iface";
> +					<&gcc GCC_SDCC1_AHB_CLK>,
> +					<&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "core", "iface","xo";
>  			interconnects = <&aggre1_noc MASTER_EMMC 0 &mc_virt SLAVE_EBI1 0>,
>  					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_EMMC_CFG 0>;
>  			interconnect-names = "sdhc-ddr","cpu-sdhc";
> @@ -2666,8 +2667,9 @@
>  			interrupt-names = "hc_irq", "pwr_irq";
>  
>  			clocks = <&gcc GCC_SDCC2_APPS_CLK>,
> -					<&gcc GCC_SDCC2_AHB_CLK>;
> -			clock-names = "core", "iface";
> +					<&gcc GCC_SDCC2_AHB_CLK>,
> +					<&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "core", "iface", "xo";
>  
>  			interconnects = <&aggre1_noc MASTER_SDCC_2 0 &mc_virt SLAVE_EBI1 0>,
>  					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_2 0>;
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member 
> of Code Aurora Forum, hosted by The Linux Foundation
> 
