Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 397AB3343AA
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 17:50:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbhCJQuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 11:50:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230488AbhCJQuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 11:50:00 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01C6C061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 08:49:52 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id d16so10493918oic.0
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 08:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Z/DYckm5AO4Of80/fuBtgsikptSb+jDkP3yKf0ms0iQ=;
        b=DaWTxt5/3qdNzADPXYLnqtnX2amtuyxvMDgnMiVGFcyPjEKNJfbD4N+8e8hpVLjwJM
         UGv9riw8E9WNz9pQWbFz5dl0cF8dSaWn16k93wUpigsQrGAqaMNTi4JfK7OJ6Bv2xhTN
         Odh458hzvhoxZgMcCUmu/HtZBrq7XpsVzPSPdazHMZ+rLVQeuIqFN8pyWg+opd1EnQTD
         VbqBjeMl0QM7ovU73hsa9gp3VW0r3ehqkT1fgh7ecjd3EUpd7KT5DJ4M4tplrnTQcD5q
         8ZqX0+5J67MhSGX5opmnXMsx8dssiPCkcJYSCCLhE+BmePPyIf1xgf5gVsvYgMn1KB2L
         NVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Z/DYckm5AO4Of80/fuBtgsikptSb+jDkP3yKf0ms0iQ=;
        b=cnoGmFF5KOZKccW6AchA66+3emLhqHaLKxlivLKMF+DB4MHra9hSUgcG9vaeNOaniC
         oqE/5CouC6bGkzs6q/DzAUE594kGcsoj7MKwWUNchT3D1o4kHZShyCQVknlBPrJrcdbF
         2VeO4n/t1gpYmWpZk4k2UvnAPFETOPWaY42z17bB6MF4FU9dnPwRvq5M4aW1H/ea8mV0
         pp4H8/RS3DHzghyaxnIpfK3tQRJO58Rhogbg6EFe5XMN3Qhg+O9+Tv2ttl2Cct1ZKQX6
         Zt3365+tQ3ZgYHPf2H08rgrfHmFs0oDB4x2A3rI0QF9e0yPIp5Qjxw4+9GoAXXotk8Zh
         v7DQ==
X-Gm-Message-State: AOAM530T/fLk7bD+2yuZc1cSFnUzw6AlABjEtfYiz++NArdOfPcGtoUI
        Q2XT8u0U04VCcfKUaKHloU8erg==
X-Google-Smtp-Source: ABdhPJx44wtpcXY49u+vSpj+s3jxO6CX63sa6iUMPfMt3faya84cR50IshGuCFEzc5DOsx9EndMHow==
X-Received: by 2002:aca:4e55:: with SMTP id c82mr2959809oib.43.1615394991194;
        Wed, 10 Mar 2021 08:49:51 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j72sm2575320oih.46.2021.03.10.08.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 08:49:50 -0800 (PST)
Date:   Wed, 10 Mar 2021 10:49:49 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rakesh Pillai <pillair@codeaurora.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, sibis@codeaurora.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add WPSS remoteproc node
Message-ID: <YEj4rZXGlaO+a4kg@builder.lan>
References: <1615361829-22370-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1615361829-22370-1-git-send-email-pillair@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 10 Mar 01:37 CST 2021, Rakesh Pillai wrote:

> Add the WPSS remoteproc node in dts for
> PIL loading.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> - This change is dependent on the below patch series
> 1) https://lore.kernel.org/patchwork/project/lkml/list/?series=487403
> 2) https://lore.kernel.org/patchwork/project/lkml/list/?series=488365
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts |  4 +++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi    | 47 +++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 950ecb2..603f56b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -26,6 +26,10 @@
>  	status = "okay";
>  };
>  
> +&remoteproc_wpss {
> +	status = "okay";
> +};
> +
>  &uart5 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 8af6d77..26dd466 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -53,6 +53,16 @@
>  			no-map;
>  			reg = <0x0 0x80b00000 0x0 0x100000>;
>  		};
> +
> +		wlan_fw_mem: memory@80c00000 {
> +			no-map;
> +			reg = <0x0 0x80c00000 0x0 0xc00000>;
> +		};
> +
> +		wpss_mem: memory@9ae00000 {
> +			no-map;
> +			reg = <0x0 0x9ae00000 0x0 0x1900000>;
> +		};
>  	};
>  
>  	cpus {
> @@ -305,6 +315,43 @@
>  			};
>  		};
>  
> +		remoteproc_wpss: remoteproc@8a00000 {
> +			compatible = "qcom,sc7280-wpss-pil";
> +			reg = <0 0x08a00000 0 0x10000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 587 IRQ_TYPE_EDGE_RISING>,
> +					      <&wpss_smp2p_in 0 0>,

IRQ_TYPE_NONE?

Apart from that this looks good.

Regards,
Bjorn

> +					      <&wpss_smp2p_in 1 0>,
> +					      <&wpss_smp2p_in 2 0>,
> +					      <&wpss_smp2p_in 3 0>,
> +					      <&wpss_smp2p_in 7 0>;
> +			interrupt-names = "wdog", "fatal", "ready", "handover",
> +					  "stop-ack", "shutdown-ack";
> +
> +			memory-region = <&wpss_mem>;
> +
> +			qcom,smem-states = <&wpss_smp2p_out 0>;
> +			qcom,smem-state-names = "stop";
> +
> +			resets = <&aoss_reset AOSS_CC_WCSS_RESTART>;
> +			reset-names = "restart";
> +
> +			qcom,halt-regs = <&tcsr_mutex_regs 0x37000>;
> +
> +			status = "disabled";
> +
> +			glink-edge {
> +				interrupts-extended = <&ipcc IPCC_CLIENT_WPSS
> +							     IPCC_MPROC_SIGNAL_GLINK_QMP
> +							     IRQ_TYPE_EDGE_RISING>;
> +				mboxes = <&ipcc IPCC_CLIENT_WPSS
> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
> +
> +				label = "wpss";
> +				qcom,remote-pid = <13>;
> +			};
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sc7280-pdc", "qcom,pdc";
>  			reg = <0 0x0b220000 0 0x30000>;
> -- 
> 2.7.4
> 
