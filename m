Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E04362967A
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 11:56:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237742AbiKOK4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 05:56:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237900AbiKOKzw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 05:55:52 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8521926AC3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:54:45 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id u24so21257694edd.13
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=STCseqBeumLrOdVh7UvgB2Ay2MTVH9P0vNgf9xHTWBw=;
        b=ntLgssdCHP4/yICRYTfHHAT/ANwhDVnvRGKKG3prnOBZw8/RXh5tmnzo0gEa3f5rt2
         rl5HPtCJ55ij3NYj4xEvZoR5k8gLO7TBrq+Qzj9O6uVlZh7Y1HkwWx1kwY9Yi1ihYG3q
         e0TLZtyZpVHTUW8X1fmAtkFO2pi705QvSSLTLeGjc1nNbn5YCRECXi78/bFbd5qLzHIk
         vhEz0n+U6NKoY2wSJ2XDPAEj7ouLDVrrPXuQXuMgHHsOxYC4EaZuNl+1xouRqpD1ylSG
         lzdJznRyZTlRYO4u8MDxh93PvUawuNpFcrsQexgXIl5DV9pNZn3jkN0JEqlpNssw904R
         qMDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=STCseqBeumLrOdVh7UvgB2Ay2MTVH9P0vNgf9xHTWBw=;
        b=8PEeBV+2wfg/82HaXQQIDhKlVqpz4iFld6QqpRjIwmZGe2liThXdhwK8cSh0i7Xf+K
         BtUzNBrWb/n88NaFVYrNzxJb687MAZ5FfVxhoiG8WP//TqCsl3MNv1cUgr5tYLwb87ye
         6RZfRg+nynGh9yiYhpfIeCBcvnD7HPbkoOETOF4mzUn8PXWSBxC0DUlZUQB/gm1NuL+A
         RokV808+D/xUi9KJAHElsZjNuLDlfa9InyaEg8jzoYv796aS4uTqPdZBxPzUbhuxncL2
         ITKn21D22J4Tf6tfAUXB8faM0ShNCEzRAiGb7gwtj4yW6djW3kRek/+d06C2R7E8NdqF
         +V6Q==
X-Gm-Message-State: ANoB5pmikX6vtgsBsbHHhlKotodVt/OYhE/jYrqpxGazT2Al6kckkHw6
        uwM1ejdhc57EuH7o/BLuvn2L0g==
X-Google-Smtp-Source: AA0mqf4NGbAsjL19QSemz5ve9dp5mGxy46cp0UW92fcY+6m9Qr8eZR0Ye3dgPsDb3LpfkHm/57L6qQ==
X-Received: by 2002:aa7:c603:0:b0:460:fab2:c31f with SMTP id h3-20020aa7c603000000b00460fab2c31fmr14873392edq.335.1668509683855;
        Tue, 15 Nov 2022 02:54:43 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id k17-20020aa7c391000000b00467cc919072sm3076443edq.17.2022.11.15.02.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 02:54:43 -0800 (PST)
Message-ID: <1329f006-9253-0db7-f88e-115187782bca@linaro.org>
Date:   Tue, 15 Nov 2022 11:54:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH] arm64: dts: qcom: trim addresses to 8 digits
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221115105046.95254-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221115105046.95254-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15/11/2022 11:50, Krzysztof Kozlowski wrote:
> Hex numbers in addresses and sizes should be rather eight digits, not
> nine.  Drop leading zeros.  No functional change (same DTB).
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 552c0da3c479..49db223a0777 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -2222,7 +2222,7 @@ compute-cb@3 {
>   
>   		cdsp: remoteproc@98900000 {
>   			compatible = "qcom,sm8350-cdsp-pas";
> -			reg = <0 0x098900000 0 0x1400000>;
> +			reg = <0 0x98900000 0 0x1400000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_LEVEL_HIGH>,
>   					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 19a0f5033cc9..f20db5456765 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2091,7 +2091,7 @@ compute-cb@3 {
>   
>   		remoteproc_adsp: remoteproc@30000000 {
>   			compatible = "qcom,sm8450-adsp-pas";
> -			reg = <0 0x030000000 0 0x100>;
> +			reg = <0 0x30000000 0 0x100>;
>   
>   			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
> @@ -2157,7 +2157,7 @@ compute-cb@5 {
>   
>   		remoteproc_cdsp: remoteproc@32300000 {
>   			compatible = "qcom,sm8450-cdsp-pas";
> -			reg = <0 0x032300000 0 0x1400000>;
> +			reg = <0 0x32300000 0 0x1400000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
