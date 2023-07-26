Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05E8E763C8F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 18:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231314AbjGZQdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 12:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231354AbjGZQdO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 12:33:14 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A9726AE
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 09:33:12 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5221cf2bb8cso6856240a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 09:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690389190; x=1690993990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cd6m0zvmyOqP7EWDic5k2R+RpP5jPlweNd1w6rynyUo=;
        b=CpCaZKvwgLa6C42nwkcVPITwosYh27rjpvegCGk6j3BfVf/jx7sMu/acak8DDsb8ij
         B5zoR1Vgn59ztkl3pTwTuFLbemf2uukY7hCunEI3om3zYVMG8xG/hI+rv6brkXc5NvYd
         xyEtVVG0u8FoTmlDzsvMkc1ViEiV0YlbBnh5CuWWCqPvVmAw+xT7GVct9/8N6gz0l48M
         Q0x69k1K44236DF5YNYZW9/eOHYE3K3FkjX/z2Se9NbhztCipzvThfnsLEdhnhh/3Ug9
         sa/TeNROkMrH9augEXqCZSpNPzWSTJElwgetHL9fCxb5rZvzDIarDAnXZSKZCIMMolAw
         4Ocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690389190; x=1690993990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cd6m0zvmyOqP7EWDic5k2R+RpP5jPlweNd1w6rynyUo=;
        b=U93Q3Hm/fgcj7W9r+WMjD9llXlRakPZ4s9hMlSJ5ZXGXMmECUz/UbKND1457/M+kfj
         FzOGb9JRLMf+/1nhgZr+K/GbhKIb7DFz8K47Tkr24f5TaKCU8CpLYrL0m+ZJoDsXUbns
         JS8IpMkyZfprpjas0UTu48zVgARzjcXbz1gByHDu2TyTzKimSfmnZkCCEPGkw2ExgzYF
         TE9E0k+hHwSpvjGpnKV1UdO2kWxJPrmkpVxsXy2ENbIsloJU4oAsDmGs0ZtEXAG7L6x6
         X+t5w1DbWfzzxLO1FKVdESKaGDQxdkWFDq/fE4/kRVUh4GyegLDJ3xe92lwGVVhoVZc7
         7NnQ==
X-Gm-Message-State: ABy/qLbfHCuElID8UWB7RsIjfMEtq1CiR7AmUm22a/vU/pIejlqqyMPi
        misLbkPZDemi5Zyv8WhX8cng5Q==
X-Google-Smtp-Source: APBJJlEHXWRBqhdbOOlxQ84CIcPANQDUd8v8/7MSJsHOzfyyb3Xyjt6sp7ho11ZBjqC2KJeq851+lQ==
X-Received: by 2002:aa7:d5c7:0:b0:521:d23b:f2c5 with SMTP id d7-20020aa7d5c7000000b00521d23bf2c5mr1891281eds.14.1690389190663;
        Wed, 26 Jul 2023 09:33:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id a11-20020aa7d90b000000b005222a38c7b2sm4812918edr.48.2023.07.26.09.33.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 09:33:10 -0700 (PDT)
Message-ID: <b6bddd59-ac78-3f75-828e-cff54766fc72@linaro.org>
Date:   Wed, 26 Jul 2023 18:33:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: media: Add bindings for Imagination E5010
 JPEG Encoder driver
Content-Language: en-US
To:     Devarsh Thakkar <devarsht@ti.com>, mchehab@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     praneeth@ti.com, nm@ti.com, vigneshr@ti.com, a-bhatia1@ti.com,
        j-luthra@ti.com, b-brnich@ti.com, detheridge@ti.com,
        p-mantena@ti.com, vijayp@ti.com
References: <20230726162615.1270075-1-devarsht@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726162615.1270075-1-devarsht@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 18:26, Devarsh Thakkar wrote:
> Add dt-bindings for Imagination E5010 JPEG Encoder driver which is
> implemented as stateful V4L2 M2M driver.
> 
> Co-developed-by: David Huang <d-huang@ti.com>
> Signed-off-by: David Huang <d-huang@ti.com>

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.

Drop also "driver". Bindings are for hardware, not drivers.

Prefix starts with media and then dt-bindings.


> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>  .../bindings/media/img,e5010-jpeg-enc.yaml    | 79 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++
>  2 files changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/img,e5010-jpeg-enc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/img,e5010-jpeg-enc.yaml b/Documentation/devicetree/bindings/media/img,e5010-jpeg-enc.yaml
> new file mode 100644
> index 000000000000..0060373eace7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/img,e5010-jpeg-enc.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/img,e5010-jpeg-enc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Imagination E5010 JPEG Encoder
> +
> +maintainers:
> +  - Devarsh Thakkar <devarsht@ti.com>
> +
> +description: |
> +  The E5010 is a JPEG encoder from Imagination Technologies implemented on
> +  TI's AM62A SoC. It is capable of real time encoding of YUV420 and YUV422
> +  inputs to JPEG and M-JPEG. It supports baseline JPEG Encoding up to
> +  8Kx8K resolution.
> +
> +properties:
> +  compatible:
> +    const: img,e5010-jpeg-enc

Your description suggests that this is part of TI SoC. Pretty often
licensed blocks cannot be used on their own and need some
customizations. Are you sure your block does not need any customization
thus no dedicated compatible is needed?

> +
> +  reg:
> +    items:
> +      - description: The E5010 main register region
> +      - description: The E5010 mmu register region
> +
> +  reg-names:
> +    items:
> +      - const: regjasper
> +      - const: regmmu
> +

Drop reg from both

> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2

You need to specify the items. Also, no variable number of clocks. Why
would they vary if block is strictly defined?

> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2

Instead list the names.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    cbass_main {

That's some weird name. Probably you meant soc. Anyway, underscores are
not allowed.

> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      e5010: e5010@fd20000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Drop the label.

> +          compatible = "img,e5010-jpeg-enc";
> +          reg = <0x00 0xfd20000 0x00 0x100>,
> +                <0x00 0xfd20200 0x00 0x200>;
> +          reg-names = "regjasper", "regmmu";
> +          clocks = <&k3_clks 201 0>;
> +          clock-names = "core_clk";
> +          power-domains = <&k3_pds 201 TI_SCI_PD_EXCLUSIVE>;
> +          interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> +      };
> +    };


Best regards,
Krzysztof

