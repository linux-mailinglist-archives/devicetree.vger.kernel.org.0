Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 908334FE00C
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:30:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349847AbiDLMa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352422AbiDLMa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:30:27 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 612F724F36
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:48:13 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id v4so8507127edl.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EaDGYaeGaLhpoOVhpp5l1eF05NJNsCcLRrjBOHZ0w+o=;
        b=kWSrl58wDoO7wxSbiiSCs7Vv0luYQWyRMir2U713mI6rxdbwXTDaLDwfvXve1OsJ2r
         WRCgYG1NxxlNP2vJ46byNoj4UW06ZHKXgO1GgWQecPlP5YcjI0NznzzNQXlgs99vOiog
         w8cp/xXzJnt+MPn28tiGAFkJJZ6As9m1f9IDsGC3aQYIPzYqjqEuRQ+SRoAz+8Qqzl/I
         8Eg1IewCZ+AbjLjGAAAJu7xicwmR/BfcXvyMG4b/IqHWOdH4y2q6RGC8UeuUdUrL9/pG
         UAThltsPYFFCsDWw/kPVQi/nPShiWjihlUPfYqclQqfgsbRIhr+hCNEFU4YziUBJe77J
         sYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EaDGYaeGaLhpoOVhpp5l1eF05NJNsCcLRrjBOHZ0w+o=;
        b=Gq9rhSYs1zKqfv4uRnCbmOuF40Ca57OcM30PdwPP5NgU15CDXC6zQcJsGL7S2BnYy8
         d3/39/lRr3CUsHCovOQTStoOOpjQGVW58Q4gADCfJHIlJTuVp686X9gbwUkocH4Uyn/e
         DA5lZQsm6SSd54ijOEIV7fHms4VU4S8ltqv3jpYRjNBdvqPZFxs3ctSQhZl04rCLNcQ0
         akoThXB7NqlA/tgfY1uzbWVw5za1pnQSp1/ZdfSNEvhpNSiaVVtB5w6mQfizV22EEZSV
         hk+lUnVRk4++RJQXtdphgK1OpPr9I8ro6NPPftRfmqgMx7Ig7gLvr2mZTIMoCg+Je6qu
         RqmQ==
X-Gm-Message-State: AOAM533RrZ7b73qDVJNcHmls1ra6wVj/IRdG4jN8PaUfybATRYF6UBsW
        nopNDGA2pJWXhYBvqoQ3T3iVog==
X-Google-Smtp-Source: ABdhPJwfRz1f8LSnRV6Lfys4BKUrPrrU8ATvdjdv/Tp7F5aQqNX1yIvKg9ltC4IUI04C9yxIoU1jRw==
X-Received: by 2002:a05:6402:1d55:b0:419:992b:9286 with SMTP id dz21-20020a0564021d5500b00419992b9286mr38339082edb.235.1649764091921;
        Tue, 12 Apr 2022 04:48:11 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id hr35-20020a1709073fa300b006e8b9907b38sm439028ejc.177.2022.04.12.04.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 04:48:11 -0700 (PDT)
Message-ID: <e202a170-5d94-7484-897a-51718c97eb35@linaro.org>
Date:   Tue, 12 Apr 2022 13:48:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 6/9] dt-bindings: rtc: add refclk to mpfs-rtc
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>, mturquette@baylibre.com,
        sboyd@kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@rivosinc.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     daire.mcnamara@microchip.com, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220411085916.941433-1-conor.dooley@microchip.com>
 <20220411085916.941433-7-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411085916.941433-7-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 10:59, Conor Dooley wrote:
> The rtc on PolarFire SoC does not use the AHB clock as its reference
> frequency, but rather a 1 MHz refclk that it shares with MTIMER. Add
> this second clock to the binding as a required property.
> 
> Fixes: 4cbcc0d7b397 ("dt-bindings: rtc: add bindings for microchip mpfs rtc")
> Reviewed-by: Daire McNamara <daire.mcnamara@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/rtc/microchip,mfps-rtc.yaml           | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml b/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
> index a2e984ea3553..1ffd97dbe6b9 100644
> --- a/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml
> @@ -31,11 +31,18 @@ properties:
>            to that of the RTC's count register.
>  
>    clocks:
> -    maxItems: 1
> +    items:
> +      - description: |
> +          AHB clock
> +      - description: |
> +          Reference clock: divided by the prescaler to create a time-based strobe (typically 1 Hz)
> +          for the calendar counter. By default, the rtc on the PolarFire SoC shares it's reference
> +          with MTIMER so this will be a 1 MHz clock.

Please wrap it at 80-column, it is still preferred coding style. The
same in your patch 4/9.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
