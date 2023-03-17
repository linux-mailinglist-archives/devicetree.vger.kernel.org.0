Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AAF86BE53E
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:15:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbjCQJPu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbjCQJPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:15:49 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 134262196E
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:15:32 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id eg48so17626557edb.13
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679044530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v6QNLYN6v+cz4iJbg9YX2tRAUuQhFeHJWixxz+hRgBY=;
        b=gga4wpZZRY1gF9+gfGkH2UezsoSaFnkAGf6+C2+AE2mLxIUDT+PTuHqe2k6Dc+cWCO
         qaRLpSCAF5YaxhuMwAJtS5iMyBnNzH/KlN4YjD1CiqdW+EZYNE3JjE9pdVW/hEGDFO9T
         EtJztPzw7on2r1vj1nA7vj6hCeGVkZw/jn3UZ7UxPsybemnbE3bkabP2qRmmIAo3QK/O
         RkTROOrvCKfhfDV+bW24pfldTJdVEel08Gc8YBzq2SDlnSpwfMo9hVj/fWssCHj0b70S
         Qh04VQKXkEcnf647C4HKNZM1GO37ikQNtuedFyNh7bABimEdjF1MSfcf4PcghJHntCy/
         hWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679044530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v6QNLYN6v+cz4iJbg9YX2tRAUuQhFeHJWixxz+hRgBY=;
        b=lmxSEuDLdQTVErla96sMQjlAdzq7iKC85gQe8mGHYQ5X9rQ2/fVSwc5EJ/mLbieA9V
         I7U8MDjzpSm4780sfs0C0NL8cG8J/UsYxDJ/eJTS+ZQPneObZ2FGV9eOtwAVIDVgDDHc
         fiwqZ9vaOx6yJcetZd23WmJdPgH6WbhK81t1oZJGuY/ckBrsiWZIRItxbRJa0IFWlbWp
         NiMDIBHHTXMAN1BAaHAN5wcK3i/bm7BiOccdxdWAc2KSEh/wqLJL0yimNX61sqO8kZCM
         i3ZtgwoLzU/JIZGCvW97bj+EvaFUp6tfGeXOjxQ1KLEw69KPKWrsef9axv/tQGSTLBnv
         SZkg==
X-Gm-Message-State: AO0yUKUOwu1iTyPHuaelPRlbs+d1guJt/2E91CR8vAAmahkD5U0/5smC
        U2J+p67Wqt3J6Cj/AdOhCIcMoA==
X-Google-Smtp-Source: AK7set9endwX7b0dcM/eWh0ffKOFqvDR8OcZUfu3eZbAwrmTE3O8LAbFydjs30kjlz9joBFXec9BRQ==
X-Received: by 2002:a05:6402:b1a:b0:4fa:ac78:7f2a with SMTP id bm26-20020a0564020b1a00b004faac787f2amr1898514edb.41.1679044530514;
        Fri, 17 Mar 2023 02:15:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id w29-20020a50d79d000000b004bf5981ef3dsm429064edi.94.2023.03.17.02.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:15:30 -0700 (PDT)
Message-ID: <a736c6db-466a-12e4-8e22-c8dc900978d4@linaro.org>
Date:   Fri, 17 Mar 2023 10:15:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: add loongson spi
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230317082950.12738-1-zhuyinbo@loongson.cn>
 <20230317082950.12738-2-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317082950.12738-2-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 09:29, Yinbo Zhu wrote:
> Add the Loongson platform spi binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
>  .../bindings/spi/loongson,ls-spi.yaml         | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
> new file mode 100644
> index 000000000000..936b8dc82ce8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

Drop blank line above.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/loongson,ls-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
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
> +    enum:
> +      - loongson,ls2k-spi
> +      - loongson,ls7a-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1

I don't understand why did you change it. I did not ask for it.

Best regards,
Krzysztof

