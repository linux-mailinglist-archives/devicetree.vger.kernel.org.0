Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3B246B0390
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 10:59:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbjCHJ70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 04:59:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbjCHJ7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 04:59:21 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC4D4C6DF
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 01:59:02 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id y14so15999594ljq.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 01:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678269541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9SJyFENsAsCi1Yr3vrmyIwD65UPfZ2N2/Nuaj7hGEU=;
        b=te488DiEoB+P4KfiK4TarLKo0DtMvR84IAC9lSt2TUMbThgVt0ghz9a6tUYtjrVNXH
         XPvpo8MABubgRPwvlSO5ORPpbROMN81Xjyl37q54iJkS/M6C0K4std45CukltNWGo1p9
         kce+5RN16cn8QFOZEKM4OKHMqQRdFqH2GML+PUGW1rEN5Yv8HvudTzG6rlGR1Ux+KWQC
         3bkGoCDx07DGYYSsfn4EJI+jBsAnr9VJYeKQEPUmXF6H2t8nelZbUguwo8vDmoXFHY7x
         w3Zddcc+OV71LsleM97dwkOjVBYGaQMarzRkpXbW4W4+igTM2HXUysjEB/XzfV2CLYYb
         jhxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678269541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9SJyFENsAsCi1Yr3vrmyIwD65UPfZ2N2/Nuaj7hGEU=;
        b=382YdimagwyaIbe1kjogKCCDy0AMrAq2lDHKN1S2RZxb8PPBnfoqcdxgfAx/o8EdGv
         T8ieSXcN0gr1j3kapRJLnbkmgGkZkDHVizm367x13EVysyCvvppWXPKJ/INCww5iou5R
         wEaTYQdamN7KXHsRZQmZeyjZju4qdEbUZfiazaBN+n4kY5fIbrj/RXY7UsQfeFfN0/ch
         NrA/iL5TdopxnN3BkUYNVrFn99RL/fXZz2YYMYi/PUfhkzbNbranU4Fhj6StUTJUDPOF
         YRKAyujtZ1h/X2hmrcpHftX1BG4GMg61bD9jUkRQaxwdqlkHJUqA0u63FU9adgYllVUI
         w2GQ==
X-Gm-Message-State: AO0yUKXtuw9Hc0OVI+4aEEgQaKQfpHZu/gga4phidYCSUTyi8+JjhtJr
        q5ziAIi0bwObbx8hAvET3HAKkA==
X-Google-Smtp-Source: AK7set8Gk93EUw4vhliHoCb3kXAO6qGZflQozDr3ymapQtV8hSInJewQqvHJrwYR9lV9yAiXX0hLaw==
X-Received: by 2002:a2e:87c4:0:b0:293:1b3e:985f with SMTP id v4-20020a2e87c4000000b002931b3e985fmr5027960ljj.24.1678269541040;
        Wed, 08 Mar 2023 01:59:01 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id z4-20020a2eb524000000b002934e1407desm2514956ljm.43.2023.03.08.01.58.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 01:59:00 -0800 (PST)
Message-ID: <8e0f39e8-0671-3f54-f083-d09169fc903b@linaro.org>
Date:   Wed, 8 Mar 2023 10:58:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: misc style fixes
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230308-topic-sm8550-upstream-dt-fixups-v1-0-595b02067672@linaro.org>
 <20230308-topic-sm8550-upstream-dt-fixups-v1-3-595b02067672@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230308-topic-sm8550-upstream-dt-fixups-v1-3-595b02067672@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.03.2023 09:32, Neil Armstrong wrote:
> Miscellaneous DT fixes to remove spurious blank line and enhance readability.
> 
> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> Fixes: d7da51db5b81 ("arm64: dts: qcom: sm8550: add display hardware devices")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index c25c68257412..6208a6196090 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -412,7 +412,6 @@ xbl_sc_mem: xbl-sc-region@d8100000 {
>  			no-map;
>  		};
>  
> -
>  		hyp_tags_reserved_mem: hyp-tags-reserved-region@811d0000 {
>  			reg = <0 0x811d0000 0 0x30000>;
>  			no-map;
> @@ -2210,7 +2209,8 @@ mdss_dsi0: dsi@ae94000 {
>  
>  				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
>  						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
> -				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
> +				assigned-clock-parents = <&mdss_dsi0_phy 0>,
> +							 <&mdss_dsi0_phy 1>;
>  
>  				operating-points-v2 = <&mdss_dsi_opp_table>;
>  
> @@ -2302,8 +2302,10 @@ mdss_dsi1: dsi@ae96000 {
>  
>  				power-domains = <&rpmhpd SM8550_MMCX>;
>  
> -				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
> -				assigned-clock-parents = <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>;
> +				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
> +				assigned-clock-parents = <&mdss_dsi1_phy 0>,
> +							 <&mdss_dsi1_phy 1>;
>  
>  				operating-points-v2 = <&mdss_dsi_opp_table>;
>  
> @@ -3171,7 +3173,7 @@ apps_smmu: iommu@15000000 {
>  
>  		intc: interrupt-controller@17100000 {
>  			compatible = "arm,gic-v3";
> -			reg = <0 0x17100000 0 0x10000>,	/* GICD */
> +			reg = <0 0x17100000 0 0x10000>,		/* GICD */
>  			      <0 0x17180000 0 0x200000>;	/* GICR * 8 */
>  			ranges;
>  			#interrupt-cells = <3>;
> 
