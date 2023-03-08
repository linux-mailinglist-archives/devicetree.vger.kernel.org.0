Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15E676B072F
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:35:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbjCHMfF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:35:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbjCHMfD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:35:03 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443A75F22E
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:34:59 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id m6so21135459lfq.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678278897;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bm/wFhbM4wm/xhFq134yVQd8tiMNGqmrnN+0G9WMMBo=;
        b=jezxfYXi0ZzQdUXQiclKaruTD3zvxoLksYnruQsiQqBwDKaH8n36RCyM0npUBwOV6B
         IVB3hwX529vMxqRUMOV0nhehAYbEXB8hfbTzA3qSk73gbtbwKKqA53GdPCmfT3T7y0fS
         hFj5UQfd+b7fcCBDZfTMr8xiTIFr2Pzs994o4QMmE3c8HMzhLwYvq3/G/7Qxk6QTmr8I
         qlf7Be6eyMUYYZp64djVLq6oIVjeDNfLyyOEN157cMVX0Wk4NF6w+AhiqC0al66fVeCb
         ztz3wVSQ84P1wU0tYnnrFTrhc05EIcPWriUd8J8Q6NyVGUZ0HtZfRYKkM/iPut5uLggo
         8EMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678278897;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bm/wFhbM4wm/xhFq134yVQd8tiMNGqmrnN+0G9WMMBo=;
        b=ySM9FeWUVWVG3ZcnKwXHU18ihDdihWO7OWIrPUkZV/YCFkYXIYgDrrrpOBTtpZ5Iu/
         pkczDFxo3vkIjWVZRjNF+BD31pDglJga2ZicAFubYWaQYN5B5JBMNg85kwG27UPaaznj
         vRhNqjCvSNchs/gExEWXo8OAOm1sCuQaBHK53cxxqNXJuprCLeqgmnU/Alvlp07Mmqd+
         eHWAs46OPuI55hoiuOASa/g7PCoYfIAlpWUpd3GlNyQus+BQQKLOp60irEFwYDegVdhN
         ZKnZP1tE+mo0EPqmoLZsKLohMBWAqWHu93jsUInWVKUnYemQyZVxf8XcGcSI45cS5mxb
         fX5g==
X-Gm-Message-State: AO0yUKX/6vPLPh3yxyPlG9/cik0EppxaU+BCX0ZWy9njHY2PCDgIPR7P
        Ca6NAbxcxaibHNqQis8gKn24tA==
X-Google-Smtp-Source: AK7set9Fwpz4ucWoyfrUg0MFawQVc4nuIyYWmuOSFKkGSlG8En1qe8k2LLAB82bku8RZnPRIt+xXgQ==
X-Received: by 2002:ac2:5613:0:b0:4cb:13d7:77e2 with SMTP id v19-20020ac25613000000b004cb13d777e2mr5109380lfd.26.1678278897568;
        Wed, 08 Mar 2023 04:34:57 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id d2-20020a2e96c2000000b00295a2d07558sm2569871ljj.112.2023.03.08.04.34.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 04:34:57 -0800 (PST)
Message-ID: <2fbf7a1c-fa1a-8834-63b0-0796b2993293@linaro.org>
Date:   Wed, 8 Mar 2023 13:34:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: correct WSA2 assigned clocks
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230308123129.232642-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230308123129.232642-1-krzysztof.kozlowski@linaro.org>
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



On 8.03.2023 13:31, Krzysztof Kozlowski wrote:
> The WSA2 assigned-clocks were copied from WSA, but the WSA2 uses its
> own.
> 
> Fixes: 14341e76dbc7 ("arm64: dts: qcom: sm8450: add Soundwire and LPASS")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 42833188a257..a315c0a61c5f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2142,8 +2142,8 @@ wsa2macro: codec@31e0000 {
>  				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>  				 <&vamacro>;
>  			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> -					  <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +					  <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
>  			assigned-clock-rates = <19200000>, <19200000>;
>  
>  			#clock-cells = <0>;
