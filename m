Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 722775680F8
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 10:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231391AbiGFITf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 04:19:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231314AbiGFITf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 04:19:35 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089581F2D2
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 01:19:34 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id j21so24657867lfe.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 01:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gDjr8ks/zcETV46JsfKPfwR3f8/Qj094umNODYQnwfE=;
        b=vwpgEGu7gSpWjT7U08K4pkeu5xPCo1IsIY62sZGORbH1QlOSm5lkuAZeVggYLzb5xT
         sxFvZS/0Ujs5GjnRRq3RuihiwzDjFRlaTtZhKwAKBH1eLm1Obtmj4iapO++RvjY9lmMa
         ytGvxzXbGaZVV9qI2kIk3LPtTztVOqiCc+FnPxTwMnH1VXQm+JF4GsL98N4+hlJLLVmA
         WznOu0PVvLJuX8/ivOuhRVsqrH3OhzlAQ+/sjP46CLUjwbPc0pSIHaqSOtMK+m28C7IK
         ljLY93XtF7PWrfnqdvOjq/TLj5HZ2W/bRTj6Py8955zK96vadQD9q3aUT73ykjdeVs8h
         1TXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gDjr8ks/zcETV46JsfKPfwR3f8/Qj094umNODYQnwfE=;
        b=2W2Ivn800zkRqnwBdkzZbhsVwy91tjV3zGtYONAZN2TQ4O2auHbP6T/7SjXGEql8dg
         OtyLtfAMbvfWK6BfJo4LU6YTotu8fOo6gZ7SLT9tnnRhJHIL27hNEFPJSGrrpEwYhxbq
         akwQNPeBBFu/UZ4vQqoBPKPQMqlyRSulw/U9T4lXHROMnpZ/PL0v4dW+wVoUVLLfSJyO
         dKgJx7t/6HU+RVTsDL2sz+1p3pEVQQb8Jnh5UrsL1ULgnIvbmd3Kq/LDklGV4ULm7oaQ
         Dufn2G9XZAQOmm7pcB055QBhl8rhnn5bw4SI0wINI9ShSRx5+vgmuPIzSWJoc7lJxCJ/
         9BxA==
X-Gm-Message-State: AJIora8XWxFt5E7o/lD91Ga+xcelFln0s/XxGWjRXNmwzFhAx36FT5ma
        YsMyLNi2eGGjfyebGkRFXbMHPg==
X-Google-Smtp-Source: AGRyM1sfqlcGekXlCPdHZ5+96hLd7k3jpzjFHgymZWad0IcOB6L5vuOsGawv+8fZnVsOqoIRkpWdRg==
X-Received: by 2002:a05:6512:3c3:b0:47d:ab07:50e7 with SMTP id w3-20020a05651203c300b0047dab0750e7mr23215123lfp.261.1657095572340;
        Wed, 06 Jul 2022 01:19:32 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id a1-20020a056512200100b004846548df9bsm610460lfb.267.2022.07.06.01.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 01:19:31 -0700 (PDT)
Message-ID: <189a226c-1664-9a07-cd0d-6ab8242d5443@linaro.org>
Date:   Wed, 6 Jul 2022 10:19:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 2/5] dt-bindings: display: bridge: cdns,dsi: Add
 compatible for dsi on j721e
Content-Language: en-US
To:     Rahul T R <r-ravikumar@ti.com>, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, jonas@kwiboo.se, jernej.skrabec@gmail.com,
        airlied@linux.ie, daniel@ffwll.ch, p.zabel@pengutronix.de,
        tomi.valkeinen@ideasonboard.com, laurent.pinchart@ideasonboard.com,
        linux-kernel@vger.kernel.org, jpawar@cadence.com,
        sjakhade@cadence.com, mparab@cadence.com, a-bhatia1@ti.com,
        devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org
References: <20220705121116.24121-1-r-ravikumar@ti.com>
 <20220705121116.24121-3-r-ravikumar@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705121116.24121-3-r-ravikumar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 14:11, Rahul T R wrote:
> Add compatible to support dsi bridge on j721e
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> ---
>  .../bindings/display/bridge/cdns,dsi.yaml     | 24 +++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
> index ccedc73d8c18..33a88b39cf09 100644
> --- a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
> @@ -14,13 +14,17 @@ description: |
>  
>  properties:
>    compatible:
> -    items:
> -      - const: cdns,dsi
> +    enum:
> +      - cdns,dsi
> +      - ti,j721e-dsi
>  
>    reg:
> +    minItems: 1
>      items:
>        - description:
>            Register block for controller's registers.
> +      - description:
> +          Register block for wrapper settings registers in case of TI J7 SoCs.
>  
>    clocks:
>      items:
> @@ -74,6 +78,22 @@ properties:
>  allOf:
>    - $ref: ../dsi-controller.yaml#
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,j721e-dsi
> +    then:
> +      properties:
> +        reg:
> +          minItems: 2
> +          maxItems: 2
> +    else:
> +      properties:
> +        reg:
> +          minItems: 1

minItems are not needed here.

> +          maxItems: 1
> +
>  required:
>    - compatible
>    - reg


Best regards,
Krzysztof
