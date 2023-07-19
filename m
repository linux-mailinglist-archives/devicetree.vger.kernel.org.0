Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0C87592E0
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 12:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbjGSKZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 06:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbjGSKY6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 06:24:58 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F351FFA
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:24:31 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fba1288bbdso10998800e87.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689762263; x=1692354263;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNIJhMzmxxBXN5ArPOashQWkLNWVWDg/qYJKuyb0nNQ=;
        b=vk9cdWjzrp3hj0LBUXT5ZfmBiPnkjaSYfQr+qib+jR2Crpj+WwVsF4pvQsBXDosA5O
         AA4oAnObB9MWfYt5CHhtPsTN3flGSvlZGU0wG6qUJv1PWG6k4sEa8HGWUhzTencS7UBT
         +dQPGDYROA0rBFc8HcV6oJ9xng7pgI3u9Z9Gtlyzo10mGpL0Z7oVTG2d7Tr3f4Tux0cM
         m1BWRd+oDmmThwnn6mkIdlRHKY6sWSdg048k9DGzgYTCmQNG2EM8TL/I7jl7rY9dFFBL
         mZx+bmuVuTpYDVCiPOfx/qLwht1ZaQjNUUfPDIxbYyOVh3KzT18D1Nab+zm+a96KDb82
         /0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689762263; x=1692354263;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pNIJhMzmxxBXN5ArPOashQWkLNWVWDg/qYJKuyb0nNQ=;
        b=j+2ef2TmfliuyykU6/ttEEa4ttTpQro6C0ApFTwMjo0ueBL0SxPFbfsiOR0CagSZLE
         8pqKgJ0IXWP0rBI9JRrBT11ytzZSTp9Y2NkHCMPhJ+TmrPY6+9wxVkjEpuwR53BZVtsD
         LTROJH5o0Na5QMDyWgxgk6sTc+qzOxThXgGqnnz9oNRIq3SYZELCwAglJnpty9TaTm7p
         ncU5AVWxDoIFkHhga0lSPm181a6ecczYcvGECwgzYEbeDi9tiyUOToOfdaY795WgiQSg
         l32TeqYH6S6++e9ijfZ/VEbKDii2brxOBwHYiuSFEnI67QWT39rfdpyoyysWck44LQdu
         APWg==
X-Gm-Message-State: ABy/qLYuFifrhU0Na/VgCAsu4/6wzAu+nLtg7zz9iTFMfHPc2VcIzA0O
        68q6UQ6y9o0P4pYrBXiqerW99w==
X-Google-Smtp-Source: APBJJlHGQlC0ewnTRDYY+l855TWfq0boXSlDOuJUX8gOb2ZskptGYi4Tp8UcYomgG/ui0h92jERFkw==
X-Received: by 2002:a05:6512:208c:b0:4fb:8bab:48b6 with SMTP id t12-20020a056512208c00b004fb8bab48b6mr14132879lfr.52.1689762263021;
        Wed, 19 Jul 2023 03:24:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l23-20020a056402125700b0051d9ee1c9d3sm2498130edw.84.2023.07.19.03.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 03:24:22 -0700 (PDT)
Message-ID: <c2c9d335-ed84-2ed7-6b3c-2a3af93fd081@linaro.org>
Date:   Wed, 19 Jul 2023 12:24:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 4/5] dt-bindings: arm: qcom: Document SM4450 SoC and
 boards
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230719100135.21325-1-quic_tengfan@quicinc.com>
 <20230719100135.21325-5-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719100135.21325-5-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 12:01, Tengfei Fan wrote:
> Document the SM8450 SoC binding and also the boards using it.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 450f616774e0..691e66612872 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -83,6 +83,7 @@ description: |
>          sm8350
>          sm8450
>          sm8550
> +        sm4450
>  
>    The 'board' element must be one of the following strings:
>  
> @@ -976,6 +977,11 @@ properties:
>                - qcom,sm8550-qrd
>            - const: qcom,sm8550
>  
> +      - items:
> +          - enum:
> +              - qcom,sm4450-qrd
> +          - const: qcom,sm4450

No, really...

Best regards,
Krzysztof

