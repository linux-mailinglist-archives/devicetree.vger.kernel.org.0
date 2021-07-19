Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BE993CE7AB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 19:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349327AbhGSQak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 12:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346391AbhGSQ1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 12:27:00 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D00C078820
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 09:30:19 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so18848012otl.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 09:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Cy4iVbzufWhZCm436CcvP6lCnhJGscRGC54iYRVwmoo=;
        b=hbfbYh82IVBorFGJBYfFg7s0s+R2hWKPmXttDt6CVLsSLfZLF98PDtcbYYMSjlJK0a
         gqigxBkXyLt3nKL1xZPicYQCjsfXE2aJEZ5l/5l7ebEhwztVHrioy3Z0dCjOKg6ndmRi
         RfLRUiiv7DVzYXo6+g+QebRL3FUtMp56mvCPfBFSe9MO/cmIA/+ofQWc8TVNLYsypRkJ
         FJBxI13oAjee1XI4mTNhCILdJDaasWVZuEcRm51TNcK0j8reeH7H+AfZyJI2vNNBoln3
         BQSLKEL+MliU+4Yj2aZZPc2eZt9XScS3PEYYXKcWqlPLX42iHpfQ+fY/koifIviBpqDt
         D6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Cy4iVbzufWhZCm436CcvP6lCnhJGscRGC54iYRVwmoo=;
        b=t4qCVvVd5FTaoCM4ngbDuN0Vex6D3ncPFEUSvt8SRZbr7Hez0W6Ff3RhlYu4w3++cF
         RaTH4gjhd1s0ivhqCqn3+TUsbjdCvTlOP5ZyV+DGMjhQMM1898DqkWFS8+VLxXmpCPIx
         YY2igUTG89npWb1glI13ChyXiX+A1U4JusZQfsqlO50VTCIvFbY6+aZYSBue2ne/KfIY
         5csxK85S4V/8+T3a/cfCSl4m42QNDLmtKZqWdC8Udg/LvrItyrpp8tVnJnGc8OBd8S1s
         2LakktzStnzANgCkqrM22XrbSqBEMnxd3ZXLc+mF/IUOR2jfJ1K7YEqW0tUJJvQJ7G5K
         6J0A==
X-Gm-Message-State: AOAM5334x1wRcevmS6zO22YsbKXbpG1n8u6Q1K+/UV44EAypcr1Th/Xu
        wsWBYAE42Q456ZVBi21PxopgRQ==
X-Google-Smtp-Source: ABdhPJx3sDQ0mQzT1Ak+Tz9xwpnqNz8n4Z/jQM063iCfZPKDAyZDLp9h62NqEIDf5Wftb1H8RWUQ+w==
X-Received: by 2002:a9d:1ec:: with SMTP id e99mr13761129ote.367.1626713522660;
        Mon, 19 Jul 2021 09:52:02 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j22sm3728031otl.46.2021.07.19.09.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 09:52:02 -0700 (PDT)
Date:   Mon, 19 Jul 2021 11:52:00 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: Use correct naming for dwc3 usb
 nodes in dts files
Message-ID: <YPWtsPbxTLsInOGv@yoga>
References: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
 <20210627114616.717101-2-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210627114616.717101-2-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 27 Jun 06:46 CDT 2021, Bhupesh Sharma wrote:

> The dwc3 usb nodes in several arm64 qcom dts are currently named
> differently, somewhere as 'usb@<addr>' and somewhere as 'dwc3@<addr>',
> leading to some confusion when one sees the entries in sysfs or
> dmesg:
> [    1.943482] dwc3 a600000.usb: Adding to iommu group 1
> [    2.266127] dwc3 a800000.dwc3: Adding to iommu group 2
> 
> Name the usb nodes as 'usb@<addr>' for consistency, which is
> the correct convention as per the 'snps,dwc3' dt-binding as
> well (see [1]).
> 
> [1]. Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> 

I thought we had more of the platforms sorted out already, thanks for
fixing this Bhupesh.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8994.dtsi | 2 +-
>  arch/arm64/boot/dts/qcom/sm8150.dtsi  | 2 +-
>  arch/arm64/boot/dts/qcom/sm8250.dtsi  | 4 ++--
>  arch/arm64/boot/dts/qcom/sm8350.dtsi  | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> index f9f0b5aa6a26..662f2f246b9b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> @@ -430,7 +430,7 @@ usb3: usb@f92f8800 {
>  			power-domains = <&gcc USB30_GDSC>;
>  			qcom,select-utmi-as-pipe-clk;
>  
> -			dwc3@f9200000 {
> +			usb@f9200000 {
>  				compatible = "snps,dwc3";
>  				reg = <0xf9200000 0xcc00>;
>  				interrupts = <0 131 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 612dda0fef43..9c931beeb614 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -2389,7 +2389,7 @@ usb_2: usb@a8f8800 {
>  
>  			resets = <&gcc GCC_USB30_SEC_BCR>;
>  
> -			usb_2_dwc3: dwc3@a800000 {
> +			usb_2_dwc3: usb@a800000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a800000 0 0xcd00>;
>  				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 4798368b02ef..9c1462cc9dad 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2321,7 +2321,7 @@ usb_1: usb@a6f8800 {
>  
>  			resets = <&gcc GCC_USB30_PRIM_BCR>;
>  
> -			usb_1_dwc3: dwc3@a600000 {
> +			usb_1_dwc3: usb@a600000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a600000 0 0xcd00>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> @@ -2372,7 +2372,7 @@ usb_2: usb@a8f8800 {
>  
>  			resets = <&gcc GCC_USB30_SEC_BCR>;
>  
> -			usb_2_dwc3: dwc3@a800000 {
> +			usb_2_dwc3: usb@a800000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a800000 0 0xcd00>;
>  				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 0d16392bb976..a631d58166b1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -1273,7 +1273,7 @@ usb_1: usb@a6f8800 {
>  
>  			resets = <&gcc GCC_USB30_PRIM_BCR>;
>  
> -			usb_1_dwc3: dwc3@a600000 {
> +			usb_1_dwc3: usb@a600000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a600000 0 0xcd00>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1317,7 +1317,7 @@ usb_2: usb@a8f8800 {
>  
>  			resets = <&gcc GCC_USB30_SEC_BCR>;
>  
> -			usb_2_dwc3: dwc3@a800000 {
> +			usb_2_dwc3: usb@a800000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a800000 0 0xcd00>;
>  				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.31.1
> 
