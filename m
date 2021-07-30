Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0E913DBE0B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 20:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230204AbhG3SBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 14:01:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbhG3SBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 14:01:36 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006A5C061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 11:01:28 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id a5-20020a05683012c5b029036edcf8f9a6so10423653otq.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 11:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Evxari8pyz24e9FIUREJeCKN2EWIhSQAii1TFXJzCCY=;
        b=pWmzybgP2uH6Xct/bn8VKXPNUZiel+66+a10yMo9Yn/cJ8M0EQS7jwwnAuhvGX2G9X
         ggGe847SFyPYasmJjqKZix0adboS+6nuToqhqGcvC14+ewLIIpQUNuPdeScqX0Xy84yi
         6GRQbGoC6lIPpYPJZjNUTUSd9plIKZgoUVnPDSLLh6k9HFCPbYraqFY3fIsdlMbZw1zQ
         HmOQgqQX8faAM6L/wj+BfpvqDZtOE8qKWWMxJk3oyLeAGMEORlCnc2+wnAhi3Eak0SWr
         KOJKRniimkig2YGVO2tFLkhUYKfQzQC+a27Xr79FyQpzyodqCoqoKDCxB3//ISBu+OV/
         bDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Evxari8pyz24e9FIUREJeCKN2EWIhSQAii1TFXJzCCY=;
        b=aFeNp9XyUHTIsvlBF2qZuA5td/YbXE2FghLBlYXY6DP6f9d2UaPd3OD++qfA21ZN5g
         lKDFeFc2YnX1XnP1/AA3FSLlobLGekCNcJ+wAoNDiamHG5KAh3++wm3ZQI1XeKT8if3C
         V8ZEjYmThiR2yZBebvAaLmSLtCS1DJT55LQY12k1jM3LvRygIa9Uv5XeAroQ92ihNUjH
         6Ch+5niOmiGNuRWxTYGXgGofK9X9pFeloXfxQCQtCnzbbYhULBjbeW2tFM4+73D6Zon3
         jq4HzNXb4ImSWPHWQReh4CmsrAr6SbV2MwbUj8NcgySu9aN+zSi1lmJFtLxqL2UW7Jo2
         Wtww==
X-Gm-Message-State: AOAM530tA/5qQD++hQErbqt2nljD0ZeEtSKZAu4tq/W9gw/DMUaILQ9I
        TLI8VoO9Pl8eI4YwLYoDeAO3IQ==
X-Google-Smtp-Source: ABdhPJyM20sXYUTWFCFT41x2cBXeSIY5u5HP5ptz2I1dplE37EBEWz2jsC/Tk56mQfPv4HM9TdjBpg==
X-Received: by 2002:a9d:67c8:: with SMTP id c8mr2937898otn.80.1627668088370;
        Fri, 30 Jul 2021 11:01:28 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b21sm343431oov.26.2021.07.30.11.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 11:01:27 -0700 (PDT)
Date:   Fri, 30 Jul 2021 13:01:25 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     robh+dt@kernel.org, will@kernel.org,
        saiprakash.ranjan@codeaurora.org, ohad@wizery.com,
        agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org, swboyd@chromium.org
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sc7280: Add Q6V5 MSS node
Message-ID: <YQQ+dV08CBERVTEK@builder.lan>
References: <1624564058-24095-1-git-send-email-sibis@codeaurora.org>
 <1624564058-24095-9-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1624564058-24095-9-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 24 Jun 14:47 CDT 2021, Sibi Sankar wrote:

> This patch adds Q6V5 MSS PAS remoteproc node for SC7280 SoCs.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 40 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3fb6a6ef39f8..56ea172f641f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -584,6 +584,46 @@
>  			#power-domain-cells = <1>;
>  		};
>  
> +		remoteproc_mpss: remoteproc@4080000 {
> +			compatible = "qcom,sc7280-mpss-pas";
> +			reg = <0 0x04080000 0 0x10000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
> +					      <&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +					      <&modem_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
> +					      <&modem_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
> +					      <&modem_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
> +					      <&modem_smp2p_in 7 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "wdog", "fatal", "ready", "handover",
> +					  "stop-ack", "shutdown-ack";
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "xo";
> +
> +			power-domains = <&rpmhpd SC7280_CX>,
> +					<&rpmhpd SC7280_MSS>;
> +			power-domain-names = "cx", "mss";
> +
> +			memory-region = <&mpss_mem>;
> +
> +			qcom,qmp = <&aoss_qmp>;
> +
> +			qcom,smem-states = <&modem_smp2p_out 0>;
> +			qcom,smem-state-names = "stop";
> +
> +			status = "disabled";
> +
> +			glink-edge {
> +				interrupts-extended = <&ipcc IPCC_CLIENT_MPSS
> +							     IPCC_MPROC_SIGNAL_GLINK_QMP
> +							     IRQ_TYPE_EDGE_RISING>;
> +				mboxes = <&ipcc IPCC_CLIENT_MPSS
> +						IPCC_MPROC_SIGNAL_GLINK_QMP>;
> +				label = "modem";
> +				qcom,remote-pid = <1>;
> +			};
> +		};
> +
>  		stm@6002000 {
>  			compatible = "arm,coresight-stm", "arm,primecell";
>  			reg = <0 0x06002000 0 0x1000>,
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
