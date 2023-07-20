Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C16975A9D0
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 10:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbjGTI5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 04:57:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230170AbjGTImK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 04:42:10 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E906126B1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 01:42:08 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fbc63c2e84so4272605e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 01:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689842527; x=1692434527;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w56BQhQzaxN/XG0zRLCl075YiyglW8KCGAxGsOzOjgA=;
        b=FKWXp6cVBbmz288iMI8xZcbCfRorrdpoz5aVp/zkxK4DbZQdAMGzYPesBiu8shNVy3
         Pcz1kYaszFaB+Ye/0BpCeh6pKnToCZmARKwLS92Umtxu7UEcDjSk3Dwy5gsK/ySMaz8/
         vtnWCiwDvqTkH9z3goBIuDPzsAgIJOjZk7HDJj0dpAQav6x+x170YGQQ1BwUV34VXbtk
         HI7Lqv3TwOjnBdutuv62LJ2iEVrakAtQkhtIab+IL6QU6RyJ4lQsMfQb8vqVEMUZHyWn
         JnfB5Bn4B+CgAha1FphXOQgHx+SQxrSZESLsC8EtW/G99B8dRsC5uveHjrQ5j13JXd8V
         CByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689842527; x=1692434527;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w56BQhQzaxN/XG0zRLCl075YiyglW8KCGAxGsOzOjgA=;
        b=aZIMlZLWFm5BlkTc2fwOErgo4lPfWFyzWtKwziBUZ16nGtSMof9smpE7CxjorgPkIf
         6flihjb5/WEPHJ1Dn/Oj5nO5IShMgZaFcOfP67JgTF+MWBn+73LniuD0oQLrWjydndHw
         p7OPNlrGmZ8wPf4CIP8evrpSMBkmlqZQiFxamycB4CQKFkUwWRLi+qFZZhJcE8feGqeZ
         JZ9AkpFzyw5X2cZIybGstYVuMeZ76UsxJvRv1ADXFGYvbddOclpMiaJHNZy3xAHSncjW
         8GtPKyqbr3gEN0n6dnmGBvcuwofncdhxmk0wAXjScnjhuDtZV0I3iP9oWtPTVM0AQX3v
         2xrw==
X-Gm-Message-State: ABy/qLZ2bYq33LiK33OKYDJOim0bJCEapYM+8ZH5pyM9QNGEZYthqjz0
        fu2lQKv9iSZCqAsy+6xPeBcvSA==
X-Google-Smtp-Source: APBJJlGuj9pgHZ2yL0ZGHChEmRrT6bndJFW+PapMNzJAvFPU8kjclpH44Qm1ZlYwCZFOYKKPmqnc/Q==
X-Received: by 2002:a05:600c:2150:b0:3fa:8fb1:50fe with SMTP id v16-20020a05600c215000b003fa8fb150femr4046139wml.15.1689842527374;
        Thu, 20 Jul 2023 01:42:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f18-20020a7bc8d2000000b003fc01189b0dsm613621wml.42.2023.07.20.01.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 01:42:06 -0700 (PDT)
Message-ID: <9283b320-5d77-350c-5312-90d56dfb922f@linaro.org>
Date:   Thu, 20 Jul 2023 10:42:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Update the compatible
Content-Language: en-US
To:     Hariharan K <quic_harihk@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com
References: <20230720072938.31546-1-quic_harihk@quicinc.com>
 <20230720072938.31546-2-quic_harihk@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230720072938.31546-2-quic_harihk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2023 09:29, Hariharan K wrote:
> Update the compatible in device tree binding to
> use model names instead of rdp numbers for IPQ5018
> platform.
> 
> Signed-off-by: Hariharan K <quic_harihk@quicinc.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index e94ce1e26fbf..922feb912594 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -97,6 +97,7 @@ description: |
>          ap-mi01.3
>          ap-mi01.6
>          ap-mi01.9
> +        ap-mp03.5-c2
>          cdp
>          cp01-c1
>          dragonboard
> @@ -105,7 +106,6 @@ description: |
>          hk10-c2
>          idp
>          liquid
> -        rdp432-c2
>          mtp
>          qrd
>          rb2
> @@ -343,7 +343,7 @@ properties:
>  
>        - items:
>            - enum:
> -              - qcom,ipq5018-rdp432-c2


There is no such compatible. Don't send patches with wrong names and
before they got merged send a follow up.

Fix the original submission.

Best regards,
Krzysztof

