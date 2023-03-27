Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BDBA6CAC29
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 19:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232202AbjC0RsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 13:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232159AbjC0RsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 13:48:09 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A376E30E0
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:48:05 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id c29so12530129lfv.3
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679939284;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bv0wD40+aVa6VSlTrbt6mn44i+Oaj4TK6/Tv/6oXWIk=;
        b=YWIGTJBSRnezeA2k/P/AtWxO6tR3OwcaJ5+9PDZfzRYnMrVlA1//WKJjPricF6BncN
         zFU1EYQywnxn6YyhXj9nCF+HatG2ZhmCPVHNma6sWdTJ6bY4KfaCs1zN/HJoJ3xN43sl
         Wlq0B5Ug8sFJGq86QFHTP3oJbP2swXAZo4XXbrBPRELh3ulV1CNJFPXbGcr1Br7ET8nB
         tqI/QmYOyKhoM8suvw32Jvfh5skbNDbTkrVcERUxGStkHwVIitHB0PClg3/zQ0jAQNtF
         p4m6TVK4bJQq+baw6SjI8k2BT3IGlh833XMrRk3yGayTIWBUblP9y1TGcqx2yKtCqbwy
         R5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679939284;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bv0wD40+aVa6VSlTrbt6mn44i+Oaj4TK6/Tv/6oXWIk=;
        b=QpNP2V/B7AKO/FGN0Ak7ESkA3qE7abth6axfewKik6jI+dct7aMFzf11PsPsT2UKFJ
         ixUqCnip+fCKXoRccE8I8lw9Ll/jglJYuuczl52y/pftuN+g9iUQqIOjvQlSKQRF5Aam
         35fOtPuB/ukMzdT75Jc+aHC7/Twebs2yAtumpj2Fc6nG9VZ4DCDlgTZEx8AJY3HoPPvc
         PLfnWwTI9wk4etli5Lb7IGt9QLKMzOeA/FHA7KRV6lwXWkT6NdAHOvwuXxn+V7piXQB/
         chUi0err7G9Frwtf9hPcaTKeqaUtcgOUaw0UIBzSLZgFz63WzYf9u6Lts+rA/qKNwuMH
         DpuA==
X-Gm-Message-State: AAQBX9cEkb344+LKRvoGikOoDZ0ZPRCO9Hi2JXaX1kc3RFtHShurokn7
        ikHxxgEi9puGUc52prlG/QNYFQ==
X-Google-Smtp-Source: AKy350ZssKPDJuGQ85FB71rGe3YVHtaG6xa9NZLpivLD2gQJVBU8hIXcUk3XfsoaXzadIXkQUIvDFw==
X-Received: by 2002:ac2:5083:0:b0:4eb:7d1:862d with SMTP id f3-20020ac25083000000b004eb07d1862dmr2368123lfm.38.1679939283849;
        Mon, 27 Mar 2023 10:48:03 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id n7-20020ac242c7000000b004db2978e330sm4753264lfl.258.2023.03.27.10.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 10:48:03 -0700 (PDT)
Message-ID: <3e130983-62ab-10c1-4914-5f9e1edc4b8b@linaro.org>
Date:   Mon, 27 Mar 2023 19:48:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm630: move DSI opp-table out of
 soc node
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326091605.18908-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230326091605.18908-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26.03.2023 11:16, Krzysztof Kozlowski wrote:
> The soc node is supposed to have only device nodes with MMIO addresses,
> so move the DSI OPP out of it (it is used also by second DSI1 on
> SDM660):
> 
>   sda660-inforce-ifc6560.dtb: soc: opp-table-dsi: {'compatible': ['operating-points-v2'], ... should not be valid under {'type': 'object'}
>     From schema: dtschema/schemas/simple-bus.yaml
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> 
> Changes since v1:
> 1. Move the node out of soc. Don't add Konrad's review tag.
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 38 ++++++++++++++--------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 72d9a12b5e9c..b91e423a3cfc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -328,6 +328,25 @@ memory@80000000 {
>  		reg = <0x0 0x80000000 0x0 0x0>;
>  	};
>  
> +	dsi_opp_table: opp-table-dsi {
> +		compatible = "operating-points-v2";
> +
> +		opp-131250000 {
> +			opp-hz = /bits/ 64 <131250000>;
> +			required-opps = <&rpmpd_opp_svs>;
> +		};
> +
> +		opp-210000000 {
> +			opp-hz = /bits/ 64 <210000000>;
> +			required-opps = <&rpmpd_opp_svs_plus>;
> +		};
> +
> +		opp-262500000 {
> +			opp-hz = /bits/ 64 <262500000>;
> +			required-opps = <&rpmpd_opp_nom>;
> +		};
> +	};
> +
>  	pmu {
>  		compatible = "arm,armv8-pmuv3";
>  		interrupts = <GIC_PPI 6 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1450,25 +1469,6 @@ mmcc: clock-controller@c8c0000 {
>  					<0>;
>  		};
>  
> -		dsi_opp_table: opp-table-dsi {
> -			compatible = "operating-points-v2";
> -
> -			opp-131250000 {
> -				opp-hz = /bits/ 64 <131250000>;
> -				required-opps = <&rpmpd_opp_svs>;
> -			};
> -
> -			opp-210000000 {
> -				opp-hz = /bits/ 64 <210000000>;
> -				required-opps = <&rpmpd_opp_svs_plus>;
> -			};
> -
> -			opp-262500000 {
> -				opp-hz = /bits/ 64 <262500000>;
> -				required-opps = <&rpmpd_opp_nom>;
> -			};
> -		};
> -
>  		mdss: display-subsystem@c900000 {
>  			compatible = "qcom,mdss";
>  			reg = <0x0c900000 0x1000>,
