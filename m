Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E7E1703261
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 18:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242622AbjEOQK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 12:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242605AbjEOQKz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 12:10:55 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017E7E58
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:10:35 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50bc37e1525so24120587a12.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684167032; x=1686759032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f5u9vDehDmYuDw7sZnsIeSRZIwkHStHgFkydaXN+v5o=;
        b=YCa8T8lnx/Yl/WK1Sl0I2bPrxrqOKduRQx0hc9FYzW7PZ/u3q8/FJE3fO6U9Dv+Q7c
         TFglYIqVXWhLmPPr9HctX33pBldxbpeZ+7LjbpSCIM9f+l6dFpIg70EMcbRVD8xgWON8
         Uut/nJPGb82ErKtaXI7ZndAJopZWNriV0fU9ZMaaK+0DsM8qfeivbvCV0cxl/FENLuaT
         SYNoqSAAC4GTFLFAl3/Rrls77mLeo0CYe9fkC76Bii3MS176EbN+6S+D7dW21d0ZbBg+
         MOv2FiDAxbE6ofcwuVi0iSipmy5qN/6AOjgfGBTMJt8XQ0iqd5d66Bw+ww7q8WQlle0v
         /Z/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684167032; x=1686759032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f5u9vDehDmYuDw7sZnsIeSRZIwkHStHgFkydaXN+v5o=;
        b=FkHg1jjVezrY9FVxWbwTPYBrjegrESFwHYP4rB6v/FqKM8WfQPOjMu6C1KxR4LrsO+
         p/tXQE/xqdCso4Q1yJNhyp4+gBEpTeprzaSzjJSo6+lXA03+MF/fZ9qzTC0QgF2q1Mbz
         Vqm5UEN/ge5woYrHPTk3/u4ymoutX8dFWEZMHwLbe6sMst9wZAk/kMQ55cTxhdDtXjE5
         qDJnbb3d/jIQ+hYFW5sGcYMRStz621sjy5u8uG1mlXaY2kEQMW2zpqJGoQU22aJN1oPI
         1Lr0g2zSAkFRqmvrVJGg9Jz7jCEF0iS4Lh7tKhyVwu/sB3PYE+J1pDDk4Pme/lS2f/2A
         llAQ==
X-Gm-Message-State: AC+VfDwXUiZ7fq8PoT+xReIAEdXO+WrnnxVl13phB7/MNlNM8uKOq73v
        SaLxDfsUjOMH37+eKmkCyJ3Hug==
X-Google-Smtp-Source: ACHHUZ6wmG3zZT4QW9j4vulIfUnt73ppJGW1AERIlJ4c1BTxoeEj665kuGd249dK9rIgRStBx4hPGQ==
X-Received: by 2002:aa7:c919:0:b0:510:487d:c0a7 with SMTP id b25-20020aa7c919000000b00510487dc0a7mr4454291edt.5.1684167031930;
        Mon, 15 May 2023 09:10:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id bf18-20020a0564021a5200b004bd6e3ed196sm7290137edb.86.2023.05.15.09.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 09:10:31 -0700 (PDT)
Message-ID: <b7e749ff-f4f0-0e61-9aae-876db4278fbc@linaro.org>
Date:   Mon, 15 May 2023 18:10:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 2/4] dt-bindings: thermal: tsens: Add ipq9574
 compatible
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, amitk@kernel.org,
        thara.gopinath@gmail.com, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Praveenkumar I <quic_ipkumar@quicinc.com>
References: <cover.1684140883.git.quic_varada@quicinc.com>
 <37adcf5d8d545a076e8ed971a4fb6c6c2833ef3c.1684140883.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <37adcf5d8d545a076e8ed971a4fb6c6c2833ef3c.1684140883.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 12:13, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Qualcomm IPQ9574 has tsens v2.3.1 block, which is similar to IPQ8074 tsens.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> [v3]:
> 	Fix dt_binding_check & dtbs_check errors (Used
> 	Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> 	as reference/example)
> 
> 	Drop 'Acked-by: Rob Herring' as suggested in review
> 
> [v2]:
> 	Thanks to Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 	for the tip to make qcom,ipq8074-tsens as fallback.
> ---
>  Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index d9aa54c..57e3908 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -19,6 +19,11 @@ description: |
>  properties:
>    compatible:
>      oneOf:
> +      - const: qcom,tsens-v0_1
> +      - const: qcom,tsens-v1
> +      - const: qcom,tsens-v2

Nope, these are not correct.

> +      - const: qcom,ipq8074-tsens

Also nope, this is already there.

> +
>        - description: msm8960 TSENS based
>          items:
>            - enum:
> @@ -66,8 +71,10 @@ properties:
>            - const: qcom,tsens-v2
>  
>        - description: v2 of TSENS with combined interrupt
> -        enum:
> -          - qcom,ipq8074-tsens

Why?

> +        items:
> +          - enum:
> +              - qcom,ipq9574-tsens
> +          - const: qcom,ipq8074-tsens
>  
>    reg:
>      items:
> @@ -279,6 +286,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,ipq8074-tsens
> +              - qcom,ipq9574-tsens

Not needed, drop.

>      then:
>        properties:
>          interrupts:
> @@ -294,6 +302,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,ipq8074-tsens
> +              - qcom,ipq9574-tsens

Ditto.


Best regards,
Krzysztof

