Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9646B7083E9
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 16:26:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230334AbjERO0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 10:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230322AbjERO0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 10:26:47 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A247109
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:26:46 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-510b6a249a8so3708922a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684420004; x=1687012004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YuvcxNH7JXmFWKxshrQCssfOPyKkSR/Zuw9sucomlNs=;
        b=r7JIGfX5eToWEIiU2ViTc64+MqKj+8KA51H8LTywYlDStm5RaxAgc8QJuMPHjmf89z
         TEQLY/iZjrGsEJ37PGpj6Qfrak6Jj1CDQMt7KQme+TIytriUt3KLByplUeR1QO1/FwDX
         /x89fOXRTZ/tsu5SpFb51MjbdDsil/5PkGRvaWlmlIXnIpTMQ/s3xMY1QwdzybkXlxyV
         c4aCfsC2gJESlrUOis+1V0YMW0ieazBsAoHuKMKxPH6Rv4jNCr7EDXIIOXQKGmMML1+3
         n5CZWoC9iPkO6eMnOIsR4wD24nY8KhFJIzE9zjMOwzx56WFQeaT8xP43KMUmGN6QPFef
         Ufxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684420004; x=1687012004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YuvcxNH7JXmFWKxshrQCssfOPyKkSR/Zuw9sucomlNs=;
        b=HQ+lq9Hgj29tgdinGdA8F6pY6XLd6zFCc5ibvQY7N7/CCj2mLvjuSJJ784/kQMhGrG
         KgJzF1w0kOy6/7oX2eJPd8+cztyaGK6V0KdtgGtGW45hIXeYiIt5yAmJtoGaHJ3OP8PW
         93qnbvC7p0Aba9m5cQJnLCIMFQYJehdWgmzpzrbanSo8yvbqsrSkmMZtKiFLO4MOctf2
         Pe8hp+WH41wZWmLrWQKQobfbwuU+sEhelpTuaCnwRcSkFxrf5ft9A+XrUyDS+fJtiygi
         82YeeqR0Q4kt5zmfgF9VKSGKnIdhZWEyxZ9T/x8YKuUeAIY+J6lPmYA9sPO7P2E/Dz5b
         8lbA==
X-Gm-Message-State: AC+VfDzI02vMiOsbsa1BExYZ6zgvzVwxG4Y0jdxf0IH0KuuoxDMReg6o
        DV8xTfl8qJI1aetgtEUMgq5pHw==
X-Google-Smtp-Source: ACHHUZ520EF3osA7uFm0FAgBBBlw2Ae6R7OE4gQPTEbEx8PFtBsMh4TIg48XFmdqz2nOIyJaWe7SKQ==
X-Received: by 2002:aa7:d849:0:b0:504:9393:18b1 with SMTP id f9-20020aa7d849000000b00504939318b1mr4996447eds.9.1684420004594;
        Thu, 18 May 2023 07:26:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e24:6d1b:6bf:4249? ([2a02:810d:15c0:828:7e24:6d1b:6bf:4249])
        by smtp.gmail.com with ESMTPSA id g17-20020a056402181100b0050bc5acfcc0sm657310edy.24.2023.05.18.07.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 07:26:44 -0700 (PDT)
Message-ID: <3951bf42-bf77-20a5-a343-46127b875dd5@linaro.org>
Date:   Thu, 18 May 2023 16:26:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517152513.27922-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 17:25, Marek Vasut wrote:
> Add trivial bindings for driver which permits exposing syscon backed
> register to userspace. This is useful e.g. to expose U-Boot boot
> counter on various platforms where the boot counter is stored in
> random volatile register, like STM32MP15xx TAMP_BKPxR register.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
> V2: Use generic syscon supernode
> ---
>  .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> new file mode 100644
> index 0000000000000..7c1173a1a6218
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nvmem-syscon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic syscon backed nvmem
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"

Usual comment: drop quotes. We removed them everywhere, so you based
your work on some old tree.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - nvmem-syscon
> +
> +  reg:
> +    maxItems: 1

Rob's questions are not solved. The nvmem.yaml schema expects here to
allow children. This should not be created per-register, but per entire
block of registers.

OTOH, using nvmem for syscon (which are MMIO and writeable registers
usually) seems odd.

> +

missing nvmem cells

> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

unevaluatedProps: false

> +
> +examples:
> +  - |
> +    syscon {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        syscon@14c {

It's not really a syscon, but efuse, otp or nvmem.

> +            compatible = "nvmem-syscon";
> +            reg = <0x14c 0x4>;

Missing nvmem cells

> +        };
> +    };

Best regards,
Krzysztof

