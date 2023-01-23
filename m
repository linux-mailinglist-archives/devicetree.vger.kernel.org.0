Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4585B678159
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:27:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231899AbjAWQ1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:27:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231855AbjAWQ1w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:27:52 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C082868A
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:27:51 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id z11so15265617ede.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TGuYaOel0khSlsV73mjsk+bMlDYH0IBIlccCQCNfK1E=;
        b=Ubi1O/Kasayv1ha8O0YCjJcm6Y0ZVcgOh1rT/N7mz1JKTIo7vdWf8/NVllfkq95TMW
         t3eyRIRN5cHZ+DP685pu1KtCtaTGICyCv44L56g8avat8TpCYp5LSDN9AB+JWncX4AOl
         Z/4hKr4MkLnJpS0OQlsvjTMBxRkE7rEg3hxFT/W9CZqr1coUhMl1/IEqDDWfxza3v3Bg
         gJrSbZdHaYqkimetnjenR2jlynhKVn3tOikswFh67Z+koXUubvKxUTE/1KNqJzZtxgAQ
         88nMwkH0n6kpsvMsGVGu9Dbo5wgK203ryb55mFmSU/WjOi3yeMsHCHOYDjOE2G55Gxo5
         QmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TGuYaOel0khSlsV73mjsk+bMlDYH0IBIlccCQCNfK1E=;
        b=60d3CnrVRc2GtQu4krpYyITIIchWZSI1F4P2pPf7BQk6i1WF8O56U2HGHKcG7hDgiR
         ATRpe+iYqUkctpJVR8LG7lwV8arKJytbwt5cHkqlhiReYyDUMw8K9pUA5rRhoRE7uiDG
         emrvIDlbz51jbX2X68CSp5Ohxvnw33Ayb+WxRYcEN9udAwJYULRXIQ1Zt3JZX/idh8Kv
         qb7DpBrLji7YMVJGG52E0bf81I4rPhYIDDWCmNom+s0qmbQGFFPb6s5kiJQZTAaoKPVD
         qyx7wlG6G1mUxs0zVN3+w9hQvBEdTftoZngrIkr6y7SxUnbd/wpmMtk9Gh6nB2v7zi2g
         YqUQ==
X-Gm-Message-State: AFqh2koyJaQcZMd2P8gwAkB0gslfd4hVYWYXB9r0tcxBvGMIqzAVhLmw
        JAHv4SNKjlswOG1G+K9p3EKejA==
X-Google-Smtp-Source: AMrXdXsJxFhmQ2v5F8J6vrg0ggGVqPFNwrKtuWx+Q3okt+eHUaYwph1+T1gQrUiO/f0NRxcyRkLAHA==
X-Received: by 2002:a50:fe87:0:b0:49b:7416:e3f9 with SMTP id d7-20020a50fe87000000b0049b7416e3f9mr27213592edt.35.1674491269871;
        Mon, 23 Jan 2023 08:27:49 -0800 (PST)
Received: from [192.168.1.101] (abxi24.neoplus.adsl.tpnet.pl. [83.9.2.24])
        by smtp.gmail.com with ESMTPSA id d7-20020a50fb07000000b0049cbd334b13sm13842962edq.29.2023.01.23.08.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 08:27:49 -0800 (PST)
Message-ID: <16e9609b-0ac7-60e2-d759-0312822ddb30@linaro.org>
Date:   Mon, 23 Jan 2023 17:27:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: use generic node name for
 Bluetooth
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230123125612.154840-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230123125612.154840-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23.01.2023 13:56, Krzysztof Kozlowski wrote:
> Node names should be generic (as Devicetree spec mandates), so use
> "bluetooth" for BT node.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> 
> Changes since v1:
> 1. Fix also msm8996-xiaomi-common
> ---
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts             | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi          | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> index 5b47b8de69da..2acfed28e3cb 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> @@ -229,7 +229,7 @@ &blsp1_uart2 {
>  	status = "okay";
>  	label = "QCA_UART";
>  
> -	bluetooth: qca6174a {
> +	bluetooth: bluetooth {
>  		compatible = "qcom,qca6174-bt";
>  
>  		enable-gpios = <&pm8994_gpios 19 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 774f9d45f051..6ea8dd7d3e01 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -430,7 +430,7 @@ &uart3 {
>  	pinctrl-names = "default", "sleep";
>  	pinctrl-1 = <&qup_uart3_sleep>;
>  
> -	bluetooth: wcn3990-bt {
> +	bluetooth: bluetooth {
>  		compatible = "qcom,wcn3990-bt";
>  		vddio-supply = <&vreg_l10a_1p8>;
>  		vddxo-supply = <&vreg_l1c_1p8>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> index a78075155310..e19178c1ec44 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> @@ -862,7 +862,7 @@ &uart6 {
>  
>  	pinctrl-0 = <&qup_uart6_4pin>;
>  
> -	bluetooth: wcn3990-bt {
> +	bluetooth: bluetooth {
>  		compatible = "qcom,wcn3990-bt";
>  		vddio-supply = <&src_pp1800_s4a>;
>  		vddxo-supply = <&pp1800_l7a_wcn3990>;
