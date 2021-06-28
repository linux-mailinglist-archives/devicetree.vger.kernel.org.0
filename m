Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D0523B689B
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 20:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235036AbhF1SmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 14:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232542AbhF1SmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 14:42:08 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C3BDC061767
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 11:39:43 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id c8so14925871pfp.5
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 11:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qsamiBCHyvEmHaDTxXf3wLttUCqTscUsLcRpgRRmhCY=;
        b=U+4is7iVnO931is078RjreXA4/3P8nFvrDoD6PuqF5APHST1zNL23ZaA006rsU3/5V
         MECEKe7yYyA3JzxjYGrJhi55ARUgjxfGGrHpdJtj4KHndJ8R7QTtYXiefx0/DgTM3hjU
         gT7ckoG0oHLwtMQW1lyeeOfrcK2I9gD2HDElc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qsamiBCHyvEmHaDTxXf3wLttUCqTscUsLcRpgRRmhCY=;
        b=W/04W+e4mOyw6SIskukpUU/8Siu9Mch4VJiUsG7s9ulhv6bFxMHXcN+0JFHHFHko/8
         eWlh5mkWp5qXNTO1gFicNKenFEyPdPACmF34bcuBE5MtpMiN/nX8VvmNAvXdJpPSFXy4
         9L25LGgbisKGrm3ovpasCJLAAc7OADgfDbe6sSXJpIlnhDn5Hc237rZcrdMJOX1+FD7J
         HmUTZFlM6+zjTpNL/XGucIMfq5RE6xU167FS6/ykrsGybD5iUVA3TesP0mWoVaFv63e4
         nj9tD2UjeBSUKRYOshLjLONDEGw8kUFlxrGtZkTRVV/4/oK5T5goA96hpX78ZZTR5NHx
         8pUQ==
X-Gm-Message-State: AOAM533uf8olkKVFCMlKfWY3myq7v4xQpAUxV7tGtSIStFN21E9K+g1O
        9yNkQEZwAUKO8PxT7APLwyzTvw==
X-Google-Smtp-Source: ABdhPJxidrmJ2y9xcd587npxeG0RZiAuJc45lrhCV01aDQRRT5zJIpxtjJVMLjHOMqP61JEnhvCIXA==
X-Received: by 2002:a65:434c:: with SMTP id k12mr24255147pgq.17.1624905582543;
        Mon, 28 Jun 2021 11:39:42 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:df70:d2d8:b384:35cf])
        by smtp.gmail.com with UTF8SMTPSA id c18sm14773193pfo.143.2021.06.28.11.39.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 11:39:42 -0700 (PDT)
Date:   Mon, 28 Jun 2021 11:39:40 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, robh+dt@kernel.org, will@kernel.org,
        saiprakash.ranjan@codeaurora.org, ohad@wizery.com,
        agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org, swboyd@chromium.org
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sc7280: Add Q6V5 MSS node
Message-ID: <YNoXbOIbN/P42ubO@google.com>
References: <1624564058-24095-1-git-send-email-sibis@codeaurora.org>
 <1624564058-24095-9-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1624564058-24095-9-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 01:17:37AM +0530, Sibi Sankar wrote:
> This patch adds Q6V5 MSS PAS remoteproc node for SC7280 SoCs.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
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

looks like this patch/series depends on "Enable miscellaneous hardware
blocks to boot WPSS" (https://patchwork.kernel.org/project/linux-arm-msm/list/?series=475089)
which is not mentioned.

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

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
