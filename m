Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357266DAE2D
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 15:46:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238783AbjDGNqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 09:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232102AbjDGNqd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 09:46:33 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E1A0BDD0
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 06:44:23 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id g18so8511690ejx.7
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 06:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680875007;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R2b3h4GiPHDFhw2slcKiiNf9Ehmkr7A8bDAPf1Quqak=;
        b=gHx8tEAgNzcEH5lNC9SdGsw9rCqIGRoZS1TPWEWA7vYZM41vQ7ArtIqqakPTeTcZdC
         NzFroiqxc3o5HHK4gKOFsx1XmpbulLx/cXgRQCMM5FPMSTvXJvcOPqdbC4ajC48YQx9M
         B4ThjNoeMMuSuio8YFTLGVBqpjNM0ia92Ob8N6yWXlgnEhfvfQDpTYA6MXfkN+6OWSnM
         fS6dA/BewUrgkGtpe9QfiGZAVFVoQCP/vqvZZ+lwrdv6pWH2Qmc/pSfSG4VC5F8nzyN1
         aisq3Qklgg76QzY3VXJh1mdMXac8gUBM4a98FSlslLvC5flvUa4LKdKEGvo/3YmffcQ5
         vt9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680875007;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R2b3h4GiPHDFhw2slcKiiNf9Ehmkr7A8bDAPf1Quqak=;
        b=0/0S01Ay2XhgrIY863FBtj82cvoTjKcIkxhv8pJyhdLIF24k6v6UKMA0dRT1HRJZJM
         gEPiDPAikU0jZejIUH7osFSPmF9Z4yjpLq1KNlbWMrXrc8A39dbdesN1DuoqVlubPPwY
         oWuOjNfKKFQ0bFYif8gfAOCT4uchsotgueXeJYSTWkBLWPnTpaza/hVM08Rn5vQNrSoe
         pJwGOhcTFooBGBo7Vwl0AE+plBXse4Q+WoaC8Y7Jyr9XtN7E4s5u3fWJx8MRCyMmC+4g
         vlhOYxio7PA2BYECkL+suyjr818XDlZX0CpFUuH8LaFa9NvJm3KtncZLi8Zv/kcr5l8C
         b6fg==
X-Gm-Message-State: AAQBX9ez2ApG2qrWjNF46V5rZEyfWcsbS2f/wvXGpfkb3uuXC0ds3Huu
        gOpnthMN9evwQVo9SaAmP7XfkA==
X-Google-Smtp-Source: AKy350bWQEqYGFFfA/jzXWxmC5cbQRNxpFrFa3AuODJ5taegClCN1OLv9gf9TXTklAnhGglePwMqWg==
X-Received: by 2002:a17:907:20af:b0:925:5eb8:92fd with SMTP id pw15-20020a17090720af00b009255eb892fdmr2470952ejb.14.1680875006723;
        Fri, 07 Apr 2023 06:43:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b20f:8824:c926:8299? ([2a02:810d:15c0:828:b20f:8824:c926:8299])
        by smtp.gmail.com with ESMTPSA id 24-20020a170906319800b008e9c79ff14csm2072502ejy.96.2023.04.07.06.43.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 06:43:26 -0700 (PDT)
Message-ID: <d1f0205b-f144-88aa-60f6-b14c8290fbab@linaro.org>
Date:   Fri, 7 Apr 2023 15:43:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: Add Loongson-1 watchdog
Content-Language: en-US
To:     Keguang Zhang <keguang.zhang@gmail.com>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Yang Ling <gnaygnil@gmail.com>
References: <20230407110025.516405-1-keguang.zhang@gmail.com>
 <20230407110025.516405-2-keguang.zhang@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230407110025.516405-2-keguang.zhang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2023 13:00, Keguang Zhang wrote:
> Add devicetree binding document for Loongson-1 watchdog.
> 
> Signed-off-by: Keguang Zhang <keguang.zhang@gmail.com>
> ---
>  .../bindings/watchdog/loongson,ls1x-wdt.yaml  | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml b/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> new file mode 100644
> index 000000000000..203726da14ff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/loongson,ls1x-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson-1 Watchdog Timer
> +
> +maintainers:
> +  - Keguang Zhang <keguang.zhang@gmail.com>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    const: loongson,ls1x-wdt

No wildcards in compatibles. What does "x" stand for?

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false

Instead:
unevaluatedProperties: false

Best regards,
Krzysztof

