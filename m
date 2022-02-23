Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B77B94C0DF7
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 09:02:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238943AbiBWICs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 03:02:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238938AbiBWICr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 03:02:47 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F815329AF
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:02:19 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 212793FC9F
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 08:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645603338;
        bh=F9L5hLNqBFC/G3cYjeWZqj5d6f79Ia9tSMyyGBS1M1k=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=h6ChC/ZEQ6w5pvD+aVSqQWwaK6Rwj8cBM7K8bMvCfdrn6K/tZlrGvHlxwKgoMct8/
         TXNuYz3mkTP/PDf1Y5bKmAzyPU8J8CGzbtGG/bCsiGzqSghsjJL6la9azLLspAkz3q
         MlqTfIDRWtfqxHQQeYQZxeS+ixDrR81RGlnys5K57gJgoslT6R43Xdgn3fi1YIr12E
         SMu6r0IHNujsj+51sdYUs0uNJno6kyB+gn63WgoGIII1UAzT3l9LinXGnIW7ECgsi4
         5DLRd+scahl6wwFsVsdGVpuuEaFs4hZgbzKW2bb/RWToC37boG+ohkv8NtSFhVqzGB
         pfaCIm58HI8/Q==
Received: by mail-ej1-f69.google.com with SMTP id i20-20020a17090671d400b006d0ed9c68c1so3488693ejk.14
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:02:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=F9L5hLNqBFC/G3cYjeWZqj5d6f79Ia9tSMyyGBS1M1k=;
        b=B94N6DFfUNxPRnfspPecO/ZspGnekFq+Cmk54437QYu6rBFOTv6nYtRHcG3TF77LJt
         V/r0g2EqwhuExsftcbu3wKfQDUr6SXNlZ1kV+aTPePcy804/gS9ZgC57xXAh1Ycg/fAJ
         m/Axogy5G0opCk8Vvf+3Yz6YS9qz24YQGQd9iWSXJmCgBX+CItBNKqlWXSdGPj+MIku+
         vPx0bHrkuqt01lCba3tBuDDhR+GZpnkF3qoC4fEFrXx5UpsT7ARiNIZqSQgaFkzSxZmC
         ip6M+SjuZAtezLvkpk1QhNk9NoFgjlK4PNPpHSjHE8jFv4Us8uKuHC0BhNhy0Om4KZTj
         m2Og==
X-Gm-Message-State: AOAM533SQDO7tep7qHGiMN5fqrP7dBaQ/z97u4AJtNqJrx9l49b3fZ88
        D0ND/3z7lAFQNe8Ulq1cOQu9mXJsNnu0zU4HlwD9K6mcIEgRH+6hDSYK++3ZBky/1ox87v2Hyjr
        Fmx1OpdGcGZE2b2s3zkbJGnfKjjXsfWchTYJ1Zjw=
X-Received: by 2002:a17:906:264d:b0:6b1:13e0:9981 with SMTP id i13-20020a170906264d00b006b113e09981mr21312806ejc.611.1645603337785;
        Wed, 23 Feb 2022 00:02:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwb79s+yZlz4qu+PKRA8PiTD34CcHHW78p/lh72TMgvG0k6gMdEgEFK2Xo4Q69VI8lr7ixkRQ==
X-Received: by 2002:a17:906:264d:b0:6b1:13e0:9981 with SMTP id i13-20020a170906264d00b006b113e09981mr21312791ejc.611.1645603337540;
        Wed, 23 Feb 2022 00:02:17 -0800 (PST)
Received: from [192.168.0.124] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id v23sm7198330ejy.178.2022.02.23.00.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 00:02:16 -0800 (PST)
Message-ID: <d49c5648-44d2-5630-fae2-52d182eb74e2@canonical.com>
Date:   Wed, 23 Feb 2022 09:02:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: arm: qcom: Document sa8540p, sc8180x and
 sc8280xp
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220223034613.3725242-1-bjorn.andersson@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220223034613.3725242-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 04:46, Bjorn Andersson wrote:
> Add compatibles for the sa8540p automotive, as well as sc8180x and
> sc8280xp compute platforms. Also add compatibles for the ADP devboard,
> the Lenovo Flex 5G, Microsoft Surface Pro X and the sc8280xp QRD.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../devicetree/bindings/arm/qcom.yaml         | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index e8b1606bc849..1042f71300af 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -39,8 +39,11 @@ description: |
>          msm8994
>          msm8996
>          sa8155p
> +        sa8540p
>          sc7180
>          sc7280
> +        sc8180x
> +        sc8280xp
>          sdm630
>          sdm660
>          sdm845
> @@ -224,6 +227,18 @@ properties:
>                - google,senor
>            - const: qcom,sc7280
>  
> +      - items:
> +          - enum:
> +              - qcom,sc8180x-primus
> +              - lenovo,flex-5g
> +              - microsoft,surface-prox

How about ordering this enum alphabetically? I think most of other
places in this file is ordered.

> +          - const: qcom,sc8180x
> +
> +      - items:
> +          - enum:
> +              - qcom,sc8280xp-qrd
> +          - const: qcom,sc8280xp
> +
>        - items:
>            - enum:
>                - xiaomi,lavender
> @@ -252,6 +267,11 @@ properties:
>                - qcom,sa8155p-adp
>            - const: qcom,sa8155p
>  
> +      - items:
> +          - enum:
> +              - qcom,sa8540p-adp
> +          - const: qcom,sa8540p
> +
>        - items:
>            - enum:
>                - fairphone,fp4


Best regards,
Krzysztof
