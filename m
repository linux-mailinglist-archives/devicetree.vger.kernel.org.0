Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 080FE6F6557
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 08:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbjEDGzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 02:55:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjEDGzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 02:55:10 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60B282728
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 23:54:57 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so14045240a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 23:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683183296; x=1685775296;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J5+Q+OdYAMSACigiNubfdFv7NYmkqIBZgeNNPwu92V8=;
        b=SOt5NGlxsv3scAoWnC1OpOF48Xr2BCzHiIwuhNKW9juwi1ncsC98fKzqjMRZ7qNnye
         ZScDIqlKPjN3t66uO4TIzmaCfD4Z3iV8O30fOtPOdrjFBG/l2/ys2KIzas+TmHHzEvid
         xHtta2oPJ153AR8DfztQlsHvy7FdeNjUEW7JPFY46uzRmj2hRWcZI3EEGg8h1MVOaMwd
         ayvDrbc9TbtbNSH0IYPqafRnLbCYmqodjQdEUqo0HUjzXCJUmoWV5nnQruoKuRTl80X1
         iZjib6Rq0kGgZeOIniY5mQUqCYsNugrxL53Hfwm0ac+k8E5xoX1IaLxPP9fRnfyuk0m2
         aecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683183296; x=1685775296;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J5+Q+OdYAMSACigiNubfdFv7NYmkqIBZgeNNPwu92V8=;
        b=kyZpX/AyNp4A414CWVTq540wtqxojEeyXxrK/RhreF+Hri0S4Mif7P0/42pnp9kLng
         P4a4/FN+5tib5a/Rbf4esbFQv8A27COl4w43Ecmr3yrpuRtutYTBxjVY1zjl+PMmXJV8
         1//kkMT+KFx3EK2TbpnVO+dBMyq0uq8GWUlgeVddwFPl7+TMUNck+MnkiRHXWcLtO/iP
         Fluw0rGp54smzEtBgWVk8uD6jM1O8OJ0k23nDCMdhSlMcq3+4f69Fq+OSv8WeH7m3KsK
         YQLJYdu6ngaOTf+jqiwMPNQULfR1vvELZ3XozYJeOwox1GPJbKK0MiRLWfHvOPDKDoiC
         Me2g==
X-Gm-Message-State: AC+VfDyjlctje5AGuAHikDiQrDRAnnJaG2B4p77L4qARDVdy1H0l9uQ4
        YBWP+MxjEQEn0PjHZClp3by7bcgL3NwWwOS6FO+d0iGZ
X-Google-Smtp-Source: ACHHUZ5Qirw2entWZsB7xdHxGKaEYFXn5/Fr6P5GvbmQpYZy8ZIdF7GRT5/16G7cdvguSJhYDhN0Ww==
X-Received: by 2002:a17:907:3d92:b0:953:87bf:3caa with SMTP id he18-20020a1709073d9200b0095387bf3caamr4126644ejc.22.1683183295895;
        Wed, 03 May 2023 23:54:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id gx13-20020a1709068a4d00b009658264076asm1089576ejc.45.2023.05.03.23.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 23:54:55 -0700 (PDT)
Message-ID: <9911bb17-e8f7-b552-7056-a26b3194c416@linaro.org>
Date:   Thu, 4 May 2023 08:54:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2 v5] dt-bindings: watchdog: marvell GTI system watchdog
 driver
Content-Language: en-US
To:     Bharat Bhushan <bbhushan2@marvell.com>, wim@linux-watchdog.org,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org
References: <linux-kernel@vger.kernel.org, sgoutham@marvell.com>
 <20230503121016.6093-1-bbhushan2@marvell.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230503121016.6093-1-bbhushan2@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 14:10, Bharat Bhushan wrote:
> Add binding documentation for the Marvell GTI system
> watchdog driver.
> 
> Signed-off-by: Bharat Bhushan <bbhushan2@marvell.com>
> ---
> v5:
>  - Added wdt-timer-index property

I did not ask for it...

>  - Get clock frequency from clocks/clock-name device tree property

Where? It's not possible in current code. I don't think you tested this
at all.

> 
>  .../bindings/watchdog/marvell,gti-wdt.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/marvell,gti-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/marvell,gti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/marvell,gti-wdt.yaml
> new file mode 100644
> index 000000000000..e3315653f961
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/marvell,gti-wdt.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/marvell,gti-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Global Timer (GTI) system watchdog
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +maintainers:
> +  - Bharat Bhushan <bbhushan2@marvell.com>
> +
> +properties:
> +  compatible:
> +    const: marvell,gti-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  wdt-timer-index:

missing vendor prefix

missing type

> +    maxItems: 1

???

> +    description:
> +      This contains the timer number out of total 64 timers supported
> +      by GTI hardware block.

Why do you need it? What does it represent?

We do not keep indices of devices other than something in reg, so please
justify why exception must be made here.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - wdt-timer-index
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        watchdog@802000040000 {
> +            compatible = "marvell,gti-wdt";
> +            reg = <0x00008020 0x00040000 0x00000000 0x00020000>;
> +            interrupts = <0 38 IRQ_TYPE_EDGE_RISING>;

Use defines for flags.

> +            wdt-timer-index = <63>;


Best regards,
Krzysztof

