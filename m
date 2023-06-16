Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3380B732C78
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234233AbjFPJv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230505AbjFPJvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:51:25 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABB12977
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:51:24 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5193c97ecbbso641185a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686909083; x=1689501083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hsoplbcfrZFEeLbInsOKgLV7qLBEVxNAPdh3qoACM8c=;
        b=DDlMoyyPQ2+g63PQan8VB28u32p42tkfqY41+EB6QVu4ckLuKhaOBPbNmDkfHiYKYN
         ktpBbBSs3h5vn1OneCIGZ3If8qOdsiAEDfcAZW6vTi66EunOQDsYLmadenLq1EJuQnrH
         0TNerrz2TQUOfsnKGW8FGGus7EzpiHAAufzkCnBHvQbJe2wuq3arGHOD4TEMnwdr6Eo/
         W93zPZIBYR7v9bG6hczJfyFQ7c5gaxSOOxA9SNGi1HWe3AqDeWoQn4wZ9vncYNoAaW4z
         03yMZbeI3Ho15mbExhIH/OPGg3U9QyfvsGqMnlW7FSSAorQ94+3QS1iWOhIItSv8Tr+p
         K1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686909083; x=1689501083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hsoplbcfrZFEeLbInsOKgLV7qLBEVxNAPdh3qoACM8c=;
        b=Y2MbMYI9QBqrB3e0cTr3L3Yy8s4oY4p2DLHimDIlp50G8ZvDUyAKmor5S8d4idY0rV
         J49co4Qq6g0lHe43mAvATfEvXbWHiPcQLONOwMNo0PLw8AH4En9zuuQ91Oots3t2ZjiN
         GeXujBUESKlztae+hhITwKf2hVY7u/9MFu6uUoKlXPHz6+6iqY6GN+lGXAYjmoljo9UV
         8y+4ix5x+SRJa7EQVjcEPleHRdMnVNFd1SNCkDQudI7mcHQBHVMb9f3w+L+Y/kv2VRzg
         1beMKhCik5COumr6OKTiH4r5mq2jqYLGaNQn4i7RZ9uynE5ATXtOmKqidIggB6TDCfV+
         PCVw==
X-Gm-Message-State: AC+VfDyv2NBwre+5uKbl86vGmwpyaDpSyRIbEWaII+5gXG/tUeSMKVw+
        soMhlir6tEcx8d6H5yalkEXqJQ==
X-Google-Smtp-Source: ACHHUZ7GEO9/u+75MVi2ghulEmqcyLseJuj8+XSCikPpDyjnEEzBV0nlVtluIHCPuDnR1dQe4LHJ3Q==
X-Received: by 2002:a17:907:74b:b0:971:484:6391 with SMTP id xc11-20020a170907074b00b0097104846391mr1215822ejb.20.1686909082263;
        Fri, 16 Jun 2023 02:51:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id k9-20020a170906128900b00965ffb8407asm10466077ejb.87.2023.06.16.02.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 02:51:21 -0700 (PDT)
Message-ID: <6bfd273e-d7e8-8447-f7e7-ebda33092337@linaro.org>
Date:   Fri, 16 Jun 2023 11:51:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/6] dt-bindings: loongarch: Add CPU bindings for
 LoongArch
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <c1f86e5d1026937abda331ce564e5ee96b7114c7.1686882123.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c1f86e5d1026937abda331ce564e5ee96b7114c7.1686882123.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 08:10, Binbin Zhou wrote:
> Add the available CPUs in LoongArch binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../devicetree/bindings/loongarch/cpus.yaml   | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> new file mode 100644
> index 000000000000..c3e2dba42c81
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/loongarch/cpus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LoongArch CPUs
> +
> +maintainers:
> +  - Binbin Zhou <zhoubinbin@loongson.cn>
> +
> +description:
> +  The device tree allows to describe the layout of CPUs in a system through
> +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
> +  defining properties for every CPU.

I understand you copied it from ARM, but I would prefer to have here
something meaningful. Bindings description does not explain what is DTS,
but explains what the hardware is.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - loongson,la264
> +      - loongson,la364
> +
> +  reg:
> +    maxItems: 1
> +
> +  device_type: true
> +
> +  clock-frequency:
> +    description: The frequency of cpu in Hz.
> +
> +  model:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: User-visible cpu name in /proc/cpuinfo.

First, aren't you mixing nodes?
Second, it is derived from compatible, so no need for such property.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clock-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cpus {
> +        #size-cells = <0>;
> +        #address-cells = <1>;
> +
> +        model = "Loongson-2K1000";

Drop, not related.

Best regards,
Krzysztof

