Return-Path: <devicetree+bounces-515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FE17A1C8F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44A791C20E72
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96324DF67;
	Fri, 15 Sep 2023 10:43:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2AC6125
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:43:04 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A08F139
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:42:47 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9ada6b0649fso270807466b.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694774566; x=1695379366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7cxED257cvOzhSOWnIcBdUQJ8KQY0kMpTskWgoFGhMs=;
        b=xibxPd5fCXlMyNmOvFhFZbKxHbvihAbLcYlB0BYdDS9h7oQcFDo7HhjqxYABqwVIW3
         fgiNMz35jb9CqjoFTbSNj4DKnR7jx39R6Q60jGaBjwp+/RgLV4yvuTCR/rzWb+bml5LX
         u1rHip2iZp+2P1Xc9riijKmM1jYi8cw8QtEK9nQ+yyPstlpD6kb7j1o57m6gonsatAWz
         Uc+UGAAw7Kp08LPolrDkWcOQu0h5NAjNVVVgDklBMt0rnI3CJdxeyVpqkFzhF9MlhsCv
         LrDIO42E92/ca7yKJGiGlgcinSbvtDNEYYt6mZrcPTowsn+F7OPZ/I3zb1QmnQqM9fSB
         v3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694774566; x=1695379366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7cxED257cvOzhSOWnIcBdUQJ8KQY0kMpTskWgoFGhMs=;
        b=M+NE8/SpckqHrVPVg+SRVZzQuyS6auEPP/zjqhvRlbPro70fIAso3O0Svf2IuEqU0Q
         HyQMEKggP18pZfMMhYhd5spG6Ef9LsND3RVHgjeHIz+67nG/kWGjp5Rxm03aAdTEv1a7
         /uVgh2fzxPCUIWgQoHjKTtJ42vqjOSOIGFetnuU975gxDVycC3bM7xlVXpOssXr7QhCE
         Z2leSi2OwXC7l88vQYe7cgBCopHD0t20n/P5U3f0oUyl5fnVJsOKk0/pXcIdjmrNOP5K
         9RS1jQ3BLfG7vcJAgxqQZRzVM2LwZfiFl5YL4bL/Go8W9htrbvWHg+DDuO0Dt2iqq7Dc
         li2A==
X-Gm-Message-State: AOJu0Yx4OgVVvJtum4tfAdZZGe+5KKw1LnVjspae5tCY/XFPeKIV+6Lq
	qNUjYwgHLOF47X6zdHHhUvgAzg==
X-Google-Smtp-Source: AGHT+IG40zYjbU/gtYqB47CJ1FbR+mtNl+08S70hJco3pjV+aeYW5PFbbNtVFTzQs3YiScp2JiVnIw==
X-Received: by 2002:a17:906:3108:b0:9a1:f81f:d0df with SMTP id 8-20020a170906310800b009a1f81fd0dfmr1042305ejx.69.1694774565775;
        Fri, 15 Sep 2023 03:42:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id kt26-20020a170906aada00b0098f99048053sm2272653ejb.148.2023.09.15.03.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 03:42:45 -0700 (PDT)
Message-ID: <84931c58-1f5b-02c7-0204-a67871f89a6a@linaro.org>
Date: Fri, 15 Sep 2023 12:42:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 09/42] dt-bindings: soc: Add Cirrus EP93xx
Content-Language: en-US
To: nikita.shubin@maquefel.me, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-9-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-9-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:10, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add device tree bindings for the Cirrus Logic EP93xx SoC.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
>  .../bindings/arm/cirrus/cirrus,ep9301.yaml         | 38 ++++++++++++
>  .../bindings/soc/cirrus/cirrus,ep9301-syscon.yaml  | 71 ++++++++++++++++++++++
>  2 files changed, 109 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
> new file mode 100644
> index 000000000000..97dd8b6aefa9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/cirrus/cirrus,ep9301.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus Logic EP93xx platforms
> +
> +description:
> +  The EP93xx SoC is a ARMv4T-based with 200 MHz ARM9 CPU.
> +
> +maintainers:
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +  - Nikita Shubin <nikita.shubin@maquefel.me>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: The TS-7250 is a compact, full-featured Single Board Computer (SBC)
> +          based upon the Cirrus EP9302 ARM9 CPU
> +        items:
> +          - const: technologic,ts7250
> +          - const: cirrus,ep9301
> +
> +      - description: The Liebherr BK3 is a derivate from ts7250 board
> +        items:
> +          - const: liebherr,bk3
> +          - const: cirrus,ep9301
> +
> +      - description: EDB302 is an evaluation board by Cirrus Logic,
> +          based on a Cirrus Logic EP9302 CPU
> +        items:
> +          - const: cirrus,edb9302
> +          - const: cirrus,ep9301
> +
> +additionalProperties: true
> diff --git a/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
> new file mode 100644
> index 000000000000..1692250251d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/cirrus/cirrus,ep9301-syscon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus Logic EP93xx Platforms System Controller
> +
> +maintainers:
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +  - Nikita Shubin <nikita.shubin@maquefel.me>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - cirrus,ep9302-syscon
> +              - cirrus,ep9307-syscon
> +              - cirrus,ep9312-syscon
> +              - cirrus,ep9315-syscon
> +          - const: cirrus,ep9301-syscon
> +          - const: syscon
> +          - const: simple-mfd
> +      - items:
> +          - const: cirrus,ep9301-syscon
> +          - const: syscon
> +          - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  reboot:
> +    type: object
> +    $ref: /schemas/power/reset/cirrus,ep9301-reboot.yaml

There is no need to have empty node without any resources. There are no
benefits of this. Drop entire reboot schema and instantiate your driver
from parent device. simple-mfd also goes away. syscon probably as well,
unless you export registers for other devices?

> +
> +  clock-controller:
> +    type: object
> +    $ref: /schemas/clock/cirrus,ep9301-clk.yaml

This could be okay, if it took address. But it doesn't, so again, this
can be just part of top node. Unless this is a separate device and you
miss here proper reg/addressing?


> +
> +  pinctrl:
> +    type: object
> +    $ref: /schemas/pinctrl/cirrus,ep9301-pinctrl.yaml

No need, drop entire schema and node, just like with reboot.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon@80930000 {
> +        compatible = "cirrus,ep9301-syscon",
> +                     "syscon", "simple-mfd";
> +        reg = <0x80930000 0x1000>;
Best regards,
Krzysztof


