Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D49726B05FB
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 12:30:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbjCHLa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 06:30:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjCHLa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 06:30:28 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F285D94393
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 03:30:26 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id o12so64348801edb.9
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 03:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678275025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8KH8jGCskjaNO6GyEN+UrKrvr+UwiHKuZCM0jBvEJmU=;
        b=Hn8D2tuSDeLvUpJemAU3Y2rDaUEXrNGwojqaIuc0E3mH++EWRYxQAUMFjiSGWo8LoP
         HvWZcWovZEYEo23tpdd2n6XNyDT34/jA2NsrHi+EWA5y23d78SRtJOM8YeQeDFlc1M5b
         IH8M1ItC+GUhNQxB+WHnB9ORVR+2AxAmPEYyIDvCFm1O6i10aZhEa5qan99tNEToYsXC
         4IRxNTmiunc7RMQA798/w56C+54/TXkY1GMG28Evly8psChxm8v5YAyuGFDa2VuhHd+F
         hzjOei/kiE553pjO/bC/EWtVRhmF4l+1gMCTSvlQoqUssy9fyHxUkAHMvKs3IpaWPzQ+
         +4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678275025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8KH8jGCskjaNO6GyEN+UrKrvr+UwiHKuZCM0jBvEJmU=;
        b=riSb34iF44SXf4/PQ+YKmVjv/Tnd+LnBeBxjmXxvESTPWQSEbY/k1koghRTVJRwC7s
         tc1tAuL6fMKEgWT3QIMUzvi0c8Ij7NdWxXUi0EeSUIwn1UTflGv/9qFKGml9+6nSZvJ6
         yC03UZhsCXhJK5qkadKprdtx+LUj1igU8AoefjWoubYR7j+OXdwF7ZAZzBexRG8A3elv
         kUkNiTqr9p48fMxyT7K2NuXj+DOWkbwrJnWfSKqLjK7gqMClt3sn5hCV2XBNdEJj2Tlq
         nmSmLjlIHvjAPt8tOnZi4Dzz1T4uvIS9aRJ5QuSsxYJ0s9mzIu4gDCk+FridGgbsCh4d
         7i/w==
X-Gm-Message-State: AO0yUKVzBFyqiZ7GE5QLRZxn/4VKihr1XgkRVudQZIVpt9PNMqBUm1rb
        bM/Og+tm5S2aoxTaNpEb4qbsOQ==
X-Google-Smtp-Source: AK7set+JDKS84dLj+XNBBSsiuysoWkOblH/R/IWBfCaEcIAnjtKriFx9dlfVOudbggyySIqODUtewg==
X-Received: by 2002:a17:906:1846:b0:8b8:c06e:52d8 with SMTP id w6-20020a170906184600b008b8c06e52d8mr16504253eje.36.1678275025487;
        Wed, 08 Mar 2023 03:30:25 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id y4-20020a170906524400b008d71e08c78dsm7273070ejm.81.2023.03.08.03.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:30:24 -0800 (PST)
Message-ID: <8d20dcfb-480b-3f1a-02b0-294a05a566f7@linaro.org>
Date:   Wed, 8 Mar 2023 12:30:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/2] dt-bindings: spi: add loongson spi
To:     Yinbo Zhu <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230308025908.21491-1-zhuyinbo@loongson.cn>
 <20230308025908.21491-2-zhuyinbo@loongson.cn>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308025908.21491-2-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 03:59, Yinbo Zhu wrote:
> Add the Loongson platform spi binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
>  .../bindings/spi/loongson,ls-spi.yaml         | 47 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml

Filename matching the compatible.

> 
> diff --git a/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
> new file mode 100644
> index 000000000000..8a13a96b3818
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/spi/loongson,ls-spi.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop the quotes. What was the base of your code here?

> +
> +title: Loongson SPI controller
> +
> +maintainers:
> +  - Yinbo Zhu <zhuyinbo@loongson.cn>
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: loongson,ls2k-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: boot

Drop clock-names, not needed for single entry.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false


Best regards,
Krzysztof

