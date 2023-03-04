Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C106A6AA9A4
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 13:57:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbjCDM5g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 07:57:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbjCDM5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 07:57:33 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9AB71F5E2
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 04:57:18 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id m6so6972881lfq.5
        for <devicetree@vger.kernel.org>; Sat, 04 Mar 2023 04:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677934638;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wPOGNGSxpOef32KPTSDLqHKntHHLrommHkmw5uSDC/E=;
        b=k7tvPZ687F128O/rQJ4psXWcIFMe8NHLj3KdsFr+bI/mghUihG2LLUqcfp6JCnTQQT
         vxP3DSggtaucYyIsL1S9AQzVoxMpLAWWRpVSmpFQdC7AuLALdYeMyTG+V75VQkJ3J5Gq
         pT0+xNji5kfZHt1hQW54tlh/JlOjUFC1pFrNycBSukoVrtkGbkr+nDEaVwBHkovtw2Bz
         QSMEQxcqwqk5sMpceFQVEThjhC8ZhXv/dJLEsTezguZWEQMkSvqeFb2Yy+PpnQToNzsQ
         f4ffMxgz11qF8aoOFAx6zMgkV8YjRT8JM5tQwXkReZBlMw6nGiyteuKmS63VEYtu+e4E
         J4/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677934638;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wPOGNGSxpOef32KPTSDLqHKntHHLrommHkmw5uSDC/E=;
        b=7kPcapx4NFlx8nghYgRrSX0b7mrjGXYNswcew+S0Azgr14gLMvUJrGE32GLEPjPjsJ
         cDF8aHR4PzwOSUGO4dtibO6F+494/91ZtD2MLfmUgxksNrv/l7+3vM86crO3xmEvYr2c
         BLXMnkkljj0N5PZ/xnlCJ4sQfP1iWsHJ28JXWw6lW4bBCaorY7XTBuGgLFy23j92weh5
         QBmoHXN7uy0hiNpgAHX5xWLkZK4C1ZFi3u0pdal8KWaYjUJjBm76CLRyYF3UTTdaQtg8
         I4AxjKKMH+l85a2ApmcQ7JqYykb60g38FoPfVGapjNaSvwAr0QmEhgYFsBG8dE5lcEXj
         fS0Q==
X-Gm-Message-State: AO0yUKUpxDXYSsgrWlYKlVcFBj/7anbPQOCdoBjJBbITI4ypEi8zEjmI
        NEifCWjokhBj1Rq/zj8/rduXw72im4Xg25BgSRs=
X-Google-Smtp-Source: AK7set+4g0DYlqNzzn80AXk3mqjncOuKBfkRtvxXYv9ZFP4AzTBbeGE/Kn255t0kcxoIO+h+JTaQ2Q==
X-Received: by 2002:ac2:5210:0:b0:4dd:aefe:c647 with SMTP id a16-20020ac25210000000b004ddaefec647mr1558460lfl.22.1677934638322;
        Sat, 04 Mar 2023 04:57:18 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id q10-20020a19a40a000000b004d58e782886sm822031lfc.303.2023.03.04.04.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Mar 2023 04:57:18 -0800 (PST)
Message-ID: <8184ca39-6cdf-8ac2-aafb-0ab4741da8dc@linaro.org>
Date:   Sat, 4 Mar 2023 13:57:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/8] arm64: dts: qcom: sc7280-idp: correct GPIO keys
 wakeup
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230304123358.34274-1-krzysztof.kozlowski@linaro.org>
 <20230304123358.34274-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230304123358.34274-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 4.03.2023 13:33, Krzysztof Kozlowski wrote:
> gpio-keys,wakeup is a deprecated property:
> 
>   sc7280-idp.dtb: gpio-keys: key-volume-up: Unevaluated properties are not allowed ('gpio-key,wakeup' was unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index cff0e0d31c15..b4b9d5e5cbd6 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -70,7 +70,7 @@ key-volume-up {
>  			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
>  			linux,input-type = <1>;
>  			linux,code = <KEY_VOLUMEUP>;
> -			gpio-key,wakeup;
> +			wakeup-source;
>  			debounce-interval = <15>;
>  			linux,can-disable;
>  		};
