Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38093512C3F
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233734AbiD1HJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:09:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244827AbiD1HJV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:09:21 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0489B7CDE0
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:06:06 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id y3so7621949ejo.12
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iBEhvrsPsOhgEt0Y1YW/HNHhU6vNHdiEta/57GlhVhk=;
        b=dnR8dRNUs7h9j/HKxlXNIA4lIpkFD31q+HvLJ/eKuI+nhJlW+YrFiWM9rP2CyoGaMS
         XeOLKlrYTjg5fMTkMESgKXIlyvnZ3oDuvVton7kAsZGNlZPnEjl2H2SPbwkktJTx7qCk
         ekfhcJMJmLtU2lITdXGqu4rePZT0Cb9pNkCEND2Na9cbucTF4Q1DTOawQPdvbwIMquid
         c672Ay3kWiDq9TOA+IELYO/uOyte64CA9KKzHDhPvgfQ9CVgHTohrIf+dryM44EkQPnl
         pk8oTToh1A+OPyPqUxfluHpdmEQUfAnKDlFUp7pvOy5qPgL8V4y45IAj37tfJG3qJQnj
         89YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iBEhvrsPsOhgEt0Y1YW/HNHhU6vNHdiEta/57GlhVhk=;
        b=xSXeht0ZASEAMx/0EYI3yOtMlGwceBb4Wy0C+mQOlrwgjfvvLa582XihnUlNlnLQgK
         f8iaLdvJKfZujhsYbDOaJaRT5eUG/7nfGtsAjAFFmZeS+1kplHF09jgdOVFrP7D0QlRX
         9Gq5yidlSXMrn9PQ/E2+J1Wf1tEL+myY8gbmmKzgRwt6m+vrnfOBXmq5ZbhsAXy9ZcHD
         gK6hYXJVYTQo+alpQkJlyxPYQuvnuZuu4K+fgApNiAYItR6HYUBJiHrcXvbmyK1mimuu
         AySiOPcNaZK5gF+MV6+dRjRUzzUBfEwpR40UkOgaL9CKH4fNN4c8pGwV5djR2Y2TTlvF
         Hyjg==
X-Gm-Message-State: AOAM533HmdMu1a+7wLrOprZcj2NCYsfjif3lmtFYuNYyvgda4htNs57g
        w845IaN528mVIZLLIj65WH5Jxw==
X-Google-Smtp-Source: ABdhPJyEMosMEvWv2NKcCdkzSlAn1WgtjIOSc3yBPtrlslz4hSKiE5Mxs0hwDpBfDpfO4Wx0jZmH/w==
X-Received: by 2002:a17:906:2883:b0:6e8:7012:4185 with SMTP id o3-20020a170906288300b006e870124185mr30112996ejd.204.1651129564100;
        Thu, 28 Apr 2022 00:06:04 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s23-20020a056402037700b0042617ba639bsm1010973edw.37.2022.04.28.00.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:06:02 -0700 (PDT)
Message-ID: <53e4eed4-16ae-95ce-967f-ed615158584d@linaro.org>
Date:   Thu, 28 Apr 2022 09:06:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 04/11] dt-bindings: sound: add Arm PL041 AACI DT schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-5-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427112528.4097815-5-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 13:25, Andre Przywara wrote:
> The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> a peripheral that provides communication with an audio CODEC.
> 
> Add a simple DT schema binding for it, so that DTs can be validated
> automatically.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/sound/amba-pl041.yaml | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/amba-pl041.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/amba-pl041.yaml b/Documentation/devicetree/bindings/sound/amba-pl041.yaml
> new file mode 100644
> index 0000000000000..f00796d5ea473
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/amba-pl041.yaml

Filename: vendor,device, so "arm,amba-pl041" or "arm,pl041"

> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/amba-pl041.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Ltd. PrimeCell PL041 AACI sound interface
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description:
> +  The Arm PrimeCell Advanced Audio CODEC Interface (AACI) is an AMBA compliant
> +  peripheral that provides communication with an audio CODEC using the AC-link
> +  protocol.
> +
> +# We need a select here so we don't match all nodes with 'arm,primecell'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: arm,pl041
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: arm,pl041
> +      - const: arm,primecell
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: APB register access clock
> +
> +  clock-names:
> +    const: apb_pclk
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    aaci@40000 {

Would be nice to find here a generic node name, so "audio-controller"?
It's not a codec, right?

> +            compatible = "arm,pl041", "arm,primecell";
> +            reg = <0x040000 0x1000>;
> +            interrupts = <11>;
> +            clocks = <&v2m_clk24mhz>;
> +            clock-names = "apb_pclk";
> +    };
> +
> +...


Best regards,
Krzysztof
