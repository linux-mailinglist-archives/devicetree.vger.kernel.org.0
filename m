Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15C9A59E499
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237443AbiHWNnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:43:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240921AbiHWNlQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:41:16 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAAE1F3F0B
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:45:57 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z6so19095810lfu.9
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=8HP34AyNYe/j7dFIL+3WKkvgCr06Jg9c/Un+6T6F0jk=;
        b=wQwWnZ9k1393yB7VB9rbCQ26CPuiOtrOJu4XhIY12J7q0aNEfe5n4E4F4jdGFHvfkS
         mz1u7pTeyLvtQXkCLc34UFF63tqsQ8tljVzMic/li5v7oy0KRj5HG9ktiRJb9I3qdLe+
         CuLTEPIKQzj1RUTGOpbg3hZUNxPSPT3+B0pUQP/ZVJ8LsfbCeA3176p41scq1wOeF1R7
         86qnJ+2RieUGWZTbDaT4jBMh4EhStWEPwS46gOve4FBMac04/nSq49OhgSuWk2tzoXhp
         CHo/LU+k+A31QCex8CCHt/c42FvrXSMkgBL44K+ZtltvZI4A2RXkJowkRMl2D6/fQOHe
         fWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=8HP34AyNYe/j7dFIL+3WKkvgCr06Jg9c/Un+6T6F0jk=;
        b=Hw/uVLWhKHxdLyUIK4T3B4IwlUM07Go4jXsAFvYA+mC08nbv6WKw7FYzim/c2DD25o
         WsxF5PNvC4rrBbDS5MAt9QxaZ5cW+pzy59CwPE5VJqiemr0hs+5TC5a5up8QBRNnW56d
         xL7j9uLio/ZF4fiiRcPlrBXuBTHPY1GeZJ1fcaEy65+eUcbQOpY4ihK6Kgp5xIV0YKCX
         1Bt+8dAH5cleGwE3saELpjx/xadOOKR2S9GCZN0bc++nvav8U5yWUhifZZ/6Or1bN+92
         mywernUq5131xTTXXOkesEDUfqbWT/l7a3FNhfWe/XK/hUhhJCZ7hZsxeGk4dqHuGP6R
         yZtg==
X-Gm-Message-State: ACgBeo0fdXlDLMQXAkQxUTMkgYAe8Z9D/0Ckf5GpXZNmH2XrBRLKrFYp
        0jqlGsS/xssZunZauHC2R0WvAA==
X-Google-Smtp-Source: AA6agR4rxXhTjG7SiYhxHuWSPspv2TOFhsEws3bbk7/t4rVlK4kC/2dE/cQNj9NXAAnAUP9xnujcjA==
X-Received: by 2002:a05:6512:ad4:b0:492:c013:2359 with SMTP id n20-20020a0565120ad400b00492c0132359mr8721085lfu.376.1661251469099;
        Tue, 23 Aug 2022 03:44:29 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id p18-20020a2eb7d2000000b00261ba22d1f2sm2096208ljo.139.2022.08.23.03.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 03:44:28 -0700 (PDT)
Message-ID: <cf10e888-7fe2-7cf8-091a-40207eeb78b5@linaro.org>
Date:   Tue, 23 Aug 2022 13:44:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 2/6] dt-bindings: net: dsa: mediatek,mt7530: fix reset
 lines
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        Sander Vanheule <sander@svanheule.net>,
        =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
        Daniel Golle <daniel@makrotopia.org>, erkin.bozoglu@xeront.com,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220820080758.9829-1-arinc.unal@arinc9.com>
 <20220820080758.9829-3-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220820080758.9829-3-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 11:07, Arınç ÜNAL wrote:
> - Fix description of mediatek,mcm. mediatek,mcm is not used on MT7623NI.

Separate commit. You are still doing here few things at a time.

> - Add description for reset-gpios.
> - Invalidate reset-gpios if mediatek,mcm is used. We cannot use multiple
> reset lines at the same time.
> - Invalidate mediatek,mcm if the compatible device is mediatek,mt7531.
> There is no multi-chip module version of mediatek,mt7531.
> - Require mediatek,mcm for mediatek,mt7621 as the compatible string is only
> used for the multi-chip module version of MT7530.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>  .../bindings/net/dsa/mediatek,mt7530.yaml     | 31 +++++++++++++++++--
>  1 file changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
> index edf48e917173..4c99266ce82a 100644
> --- a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
> @@ -110,11 +110,15 @@ properties:
>    mediatek,mcm:
>      type: boolean
>      description:
> -      if defined, indicates that either MT7530 is the part on multi-chip
> -      module belong to MT7623A has or the remotely standalone chip as the
> -      function MT7623N reference board provided for.
> +      Used for MT7621AT, MT7621DAT, MT7621ST and MT7623AI SoCs which the MT7530
> +      switch is a part of the multi-chip module.
>  
>    reset-gpios:
> +    description:
> +      GPIO to reset the switch. Use this if mediatek,mcm is not used.
> +      This property is optional because some boards share the reset line with
> +      other components which makes it impossible to probe the switch if the
> +      reset line is used.
>      maxItems: 1
>  
>    reset-names:
> @@ -165,6 +169,9 @@ allOf:
>        required:
>          - mediatek,mcm
>      then:
> +      properties:
> +        reset-gpios: false
> +
>        required:
>          - resets
>          - reset-names
> @@ -182,6 +189,24 @@ allOf:
>          - core-supply
>          - io-supply
>  
> +  - if:
> +      properties:
> +        compatible:
> +          items:

Again, not items. This can be just const or enum.

> +            - const: mediatek,mt7531
> +    then:
> +      properties:
> +        mediatek,mcm: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          items:

Ditto.

> +            - const: mediatek,mt7621
> +    then:
> +      required:
> +        - mediatek,mcm
> +
>  unevaluatedProperties: false
>  
>  examples:


Best regards,
Krzysztof
