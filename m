Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB3067E32A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 12:26:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233215AbjA0L0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 06:26:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233795AbjA0LZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 06:25:49 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EB7E7B426
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:24:45 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id k4so7359917eje.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7heKd9EjBqKzM0OjrTI09MZjF1NV/jNQiApeAUMnqA4=;
        b=YGne83kSnzwuluBBOff20b6asIlitKF3s9cmlJ1IjYPaTokwgToz/j795tX+PPB0Pa
         zoviW1n6NKkcoVI/RgAjFf4CS03xBDJ9vRpkFvV8EEIaRa4SqPRkbRlt1cqGZoq2TSGr
         z6BVeXn5GNxDB1UG+jXKbelqLlc+B4gP/ZtuxEPxMBEEElB1QILeUTtek8s+aGwXSpT5
         mTU6uYIgz2jQsBwR7AxpGvA18Hohf9WwoMlcgQmrRu97uXRmYBcQRvnuHOuYGmbYZ+jt
         p88e6RVUYzM9J6nLzmdp4vnfZybcd7Fc0LR5kKrDIisxDORj69Wjcd2XTtiFrml3Q+eD
         RK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7heKd9EjBqKzM0OjrTI09MZjF1NV/jNQiApeAUMnqA4=;
        b=dUpt+oyKGBSok+A+gByAkti3qtfARVsukvsUw8yuqXGBp/Gd2dlz6UsfPZDKofaBcm
         UlXgQnMSgZw67Qt7Osx4frGbmoL0nkhWHtOG1eTiNQPZbhJoFgAQTeJjo/+xf1mN5M1v
         22dnqLL7xH1zzBW+kQfAOjsGERtDLn+EZg3qxLSwIsEEzKBgDMBrh4yzJJz9sSJmuBAr
         L0iEbgMaG4ilTdtGr/1Ecc//fWSgrcByloPR79WJrOMJBHU5tH5PN4eFnSCPQxZ1vEPD
         c92h2dGELKOeb0mIqfWNGJnQWMLPRIFICsbHj9oWOnXlCZYf4PHQiPeDPuHJvjaZ3zXy
         IK2g==
X-Gm-Message-State: AFqh2koe6NZqT70z7tJNtmtWsd+bmkA+BknR7TFpZYgwjvjEX9lIwEv9
        xQy9D2wkwGG5c/Q25IDc6oRVcQ==
X-Google-Smtp-Source: AMrXdXti/bQbgpABa5dgDPiwgo6D/MwZxd1Qx7ebExUk9pAhWzpfLSKUJSxlxHrwoppVbmtqbpYsRQ==
X-Received: by 2002:a17:907:76b0:b0:7c0:d609:6f9b with SMTP id jw16-20020a17090776b000b007c0d6096f9bmr31511604ejc.27.1674818625323;
        Fri, 27 Jan 2023 03:23:45 -0800 (PST)
Received: from [192.168.1.101] (abyl20.neoplus.adsl.tpnet.pl. [83.9.31.20])
        by smtp.gmail.com with ESMTPSA id m21-20020a1709062b9500b0086621d9d9b0sm2081387ejg.81.2023.01.27.03.23.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 03:23:44 -0800 (PST)
Message-ID: <af566178-59c4-b183-33f7-deefe1ad827d@linaro.org>
Date:   Fri, 27 Jan 2023 12:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] arm64: dts: qcom: sm8550-mtp: drop incorrect
 vdd-l6-l16-supply
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230127111913.117036-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230127111913.117036-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.01.2023 12:19, Krzysztof Kozlowski wrote:
> There is no vdd-l6-l16 supply in qcom,pm8550-rpmh-regulators.
> 
> Fixes: 71342fb91eae ("arm64: dts: qcom: Add base SM8550 MTP dts")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
@Abel, shouldn't this be l5-l16? Such combination would be
valid as per the driver, but please recheck with schematics.

Konrad
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index 725d3bc3ee72..d6ae80414654 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -47,7 +47,6 @@ regulators-0 {
>  		vdd-bob2-supply = <&vph_pwr>;
>  		vdd-l2-l13-l14-supply = <&vreg_bob1>;
>  		vdd-l3-supply = <&vreg_s4g_1p3>;
> -		vdd-l6-l16-supply = <&vreg_bob1>;
>  		vdd-l6-l7-supply = <&vreg_bob1>;
>  		vdd-l8-l9-supply = <&vreg_bob1>;
>  		vdd-l11-supply = <&vreg_s4g_1p3>;
