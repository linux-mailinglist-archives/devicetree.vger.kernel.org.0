Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 713A151BAA2
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232576AbiEEIla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbiEEIl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:41:29 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33E20496B1
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:37:48 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso4634560wme.5
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=9EomTWkj5HWC9HSFz6GdVw86QRTFm3rQMXGeFndUEdo=;
        b=DUptQS/O9Q9UJj2AG3SWh55ruJHnywPhx/EXPb+RdE3NWXQmZIx59cIEnjfZs/nr9a
         0YfhyYJnC8KD40HohtTDj8tAVeC1HxqJsBLxwcD1TNVDivMXJ6Tz0EJaCgroMQoqLO6I
         +TNKnxiLtOJmgPFcI0dPUhHbtnABXshfU7Cj3mSgGhtnKVYSMdVm0sxd1WuzPXmcxYLx
         pD+10fA+N6xPCBVCtsr3etbuoWEUUSrM4lwc+aXPZTtLMhwUriSxnnsguENZpdMOmBO1
         CcDiIpBKdd5SWaITnfa5Cj07T3/a5oCoHh9dxSFz13iquxp4nY3lOD/uoJki5IfLMhwK
         56Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9EomTWkj5HWC9HSFz6GdVw86QRTFm3rQMXGeFndUEdo=;
        b=Wf9pQ/4DuA+lQVSN1ZBMzrGPc/nA5siR9tS89yqeX9zsPkGtlBizD9LmcNSTIxIKVr
         yqiKW1Ebl+2+ygpXavROHK+xHkwQPN1ChaChzg71578vVstWLVkJuwbPLQIhR3gyQ3or
         x67CBOnHqKuuTBU7dkw3KHHI1kp5Kz5znGM2XUuSxcLVsL+59NCYpktqkoQtXHTbpDcQ
         NjgopD4rvIG93rHoJQj9CHlJjl9ssYK8BSvqPDXEhQEK7qx2sV6Sa1m5IedgBTytelbC
         J6QobLAfhADOhaaVvboxrFxPIFk3n1vjnkidzAe/IjASzuInXHlggMRxnBJqL4gT3Ucc
         GQxw==
X-Gm-Message-State: AOAM533zBpixq+PG0XlJHKeLJGO6NMEAeGR97Vtf7Vg3rFfg2VnpgVjk
        JJXcYuDbOUHwoNh56B9HIDx1yw==
X-Google-Smtp-Source: ABdhPJzpvOP08C0LQGFGRn3if9YYgSMu9dpR5z5GqutXqQm2XV6HiPCKizP8Z9CqOapQ59H/GpJYZw==
X-Received: by 2002:a05:600c:4f55:b0:393:f140:d386 with SMTP id m21-20020a05600c4f5500b00393f140d386mr3456815wmq.80.1651739866814;
        Thu, 05 May 2022 01:37:46 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ba28-20020a0560001c1c00b0020c5253d8c8sm688756wrb.20.2022.05.05.01.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:37:46 -0700 (PDT)
Message-ID: <7316927c-3068-90b6-3500-bf759bb46493@linaro.org>
Date:   Thu, 5 May 2022 10:37:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 5/6] dt-bindings: mailbox: qcom: set correct
 #clock-cells
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        dmitry.baryshkov@linaro.org
References: <20220503195605.4015616-1-robimarko@gmail.com>
 <20220503195605.4015616-5-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503195605.4015616-5-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 21:56, Robert Marko wrote:
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> index 3b5ba7ecc19d..1f803925867e 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> @@ -50,7 +50,7 @@ properties:
>      const: 1
>  
>    '#clock-cells':
> -    const: 0
> +    enum: [0, 1]
>  
>    clock-names:
>      minItems: 2
> @@ -96,6 +96,22 @@ allOf:
>        properties:
>          clocks:
>            maxItems: 3
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,ipq6018-apcs-apps-global
> +            - qcom,ipq8074-apcs-apps-global
> +    then:
> +      properties:
> +        '#clock-cells':
> +          const: 1
> +

If there is a respin, please drop this blank line.

> +    else:
> +      properties:
> +        '#clock-cells':
> +          const: 0
> +
>  examples:
>  
>    # Example apcs with msm8996


Best regards,
Krzysztof
