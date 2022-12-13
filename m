Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3DE564B25F
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 10:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234690AbiLMJbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 04:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiLMJbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 04:31:42 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F16DFB1A
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:31:40 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so3904079lfb.13
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eBNGkpSXOiqxD0QFw5sTJNcEwlVctRLV2sWFD35T7yM=;
        b=wgXxB7i9Myiz3fetBQR2uDgOzp8pixRPZY7JajZqv2ZHuw8Kvfs/kjuy2Bc75ziv6G
         g52YZfw4cCzgQkGCl1TJ3RNbIZsp14K9L/rv1Ztk70RnbeuzXbwESSNQ5pcRJrFPOLOa
         riEgRB/yPlM8Kc+5K9HnrO4AQdafEnkm4a2OChbhDyBnB7dENko89aPBrZ/LkDQex0YR
         ZPmip2txg/tQ1mJvow0qD6k8xHx79Ny0guy661fLdbcKB2umPv+JlY7AF1zX+tcDfJnx
         ij6jK3IinSGQpapR7FSZ7dSPJX5ynlX1dma59irSYrYmqTrhLRKUHfdsRlJwQqw2rNRY
         8uWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBNGkpSXOiqxD0QFw5sTJNcEwlVctRLV2sWFD35T7yM=;
        b=Mf53LmwCyMHUtnTo01T092XNTcfwqLbmF2WbDXn4Fjbl7C9D/XKo232njryxYglK6e
         IdcgfTSwsZKhTq5PF+ZoQEphUaWIUtRfk1iiTcDQk/LLiuyBnsLNSu8z6qqL7YpBvo3V
         f62476y0VuOXsJeKC85g/5eoVP2kiYetJ3HEdzZyjEy/1HZXmihnWo+UykZpuk4te5QR
         PkUYANE41gs9e+u2hBZV4rNtXJLDyBwNvqWo+jL1ut7RnE2gl7luqerPuuLqsJeLGu9y
         3z7ZtQHzR7uqkbVmlCnrujhfUIWeTJ8PDSHrkbbYBasYTC746yDnAi5GlA0mua5PjJnd
         YK8A==
X-Gm-Message-State: ANoB5pmW+DxT+XGU8Wy0KAt3/dnbIwVQ9QZNh2gqSSTxCO0BvbJl/mzM
        BGLsj22K/b2JA5iXWFFVu9sBLg==
X-Google-Smtp-Source: AA0mqf5FI/j9Le7pQBHJzExIQOzU6406ebgIjketJYTAuv2HASPjuYxFAMBnopyXLe0ptTyK/+cLNQ==
X-Received: by 2002:a05:6512:3092:b0:4a4:68b7:dedd with SMTP id z18-20020a056512309200b004a468b7deddmr7261189lfd.57.1670923899326;
        Tue, 13 Dec 2022 01:31:39 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id f22-20020a19dc56000000b004b4ea0f4e7fsm285654lfj.299.2022.12.13.01.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 01:31:38 -0800 (PST)
Message-ID: <48bda658-2312-809c-6dac-227b15f3ec40@linaro.org>
Date:   Tue, 13 Dec 2022 10:31:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 07/12] ARM: dts: qcom: reverse compatibles to match
 bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221212163532.142533-1-krzysztof.kozlowski@linaro.org>
 <20221212163532.142533-7-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221212163532.142533-7-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.12.2022 17:35, Krzysztof Kozlowski wrote:
> The most specific compatible should be upfront.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-apq8064.dtsi | 4 ++--
>  arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
>  arch/arm/boot/dts/qcom-ipq8064.dtsi | 4 ++--
>  arch/arm/boot/dts/qcom-msm8960.dtsi | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index 0da9623ea084..79575d6b3a81 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -375,8 +375,8 @@ intc: interrupt-controller@2000000 {
>  		};
>  
>  		timer@200a000 {
> -			compatible = "qcom,kpss-timer",
> -				     "qcom,kpss-wdt-apq8064", "qcom,msm-timer";
> +			compatible = "qcom,kpss-wdt-apq8064", "qcom,kpss-timer",
> +				     "qcom,msm-timer";
>  			interrupts = <1 1 0x301>,
>  				     <1 2 0x301>,
>  				     <1 3 0x301>;
> diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> index acb08dcf9442..a73c3a17b6a4 100644
> --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> @@ -400,7 +400,7 @@ blsp1_uart2: serial@78b0000 {
>  		};
>  
>  		watchdog: watchdog@b017000 {
> -			compatible = "qcom,kpss-wdt", "qcom,kpss-wdt-ipq4019";
> +			compatible = "qcom,kpss-wdt-ipq4019", "qcom,kpss-wdt";
>  			reg = <0xb017000 0x40>;
>  			clocks = <&sleep_clk>;
>  			timeout-sec = <10>;
> diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> index 7e784b0995da..9daafe9de02a 100644
> --- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> @@ -549,8 +549,8 @@ intc: interrupt-controller@2000000 {
>  		};
>  
>  		timer@200a000 {
> -			compatible = "qcom,kpss-timer",
> -				     "qcom,kpss-wdt-ipq8064", "qcom,msm-timer";
> +			compatible = "qcom,kpss-wdt-ipq8064", "qcom,kpss-timer",
> +				     "qcom,msm-timer";
>  			interrupts = <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(2) |
>  						 IRQ_TYPE_EDGE_RISING)>,
>  				     <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(2) |
> diff --git a/arch/arm/boot/dts/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom-msm8960.dtsi
> index 7debf9db7cb1..63c3c40fe9a2 100644
> --- a/arch/arm/boot/dts/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom-msm8960.dtsi
> @@ -103,8 +103,8 @@ intc: interrupt-controller@2000000 {
>  		};
>  
>  		timer@200a000 {
> -			compatible = "qcom,kpss-timer",
> -				     "qcom,kpss-wdt-msm8960", "qcom,msm-timer";
> +			compatible = "qcom,kpss-wdt-msm8960", "qcom,kpss-timer",
> +				     "qcom,msm-timer";
>  			interrupts = <GIC_PPI 1 0x301>,
>  				     <GIC_PPI 2 0x301>,
>  				     <GIC_PPI 3 0x301>;
