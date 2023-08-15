Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B487077CE6F
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 16:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237787AbjHOOuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 10:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237783AbjHOOt4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 10:49:56 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF29F93
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 07:49:55 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bcf2de59cso720403766b.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 07:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692110994; x=1692715794;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9qNhYuwyhWszY2RqTSS/sEwTOMk6dVrkylSMY5jCRfg=;
        b=R0yvkjWIocbdy6OWYJEo8llYJ/CnlgWigKoFc2B25rBWkgv8kkqZ34hf23wtjeerdD
         w3RY+O/1mmOvr+10gqIcNtrkLDUzHdbN1b9GTw/I0uVsHpOfAmo2x9vTbwsVBo/F50sn
         LByPE6m9oZf+6YL2Z40XL26tixjWTEcpcPRxHJRUqVE+1QDLSeveDkq4XBEWFpazAEVk
         62ii+9t5VsmJ9arWaQmewWAOu5gDutzWbckKg3/VC4cCkoGTVy4QlEAoepT8lFfV27zr
         2JWuF4PI1MJ29cI/9Vi9DN/vHzUBSyGOg5vPUV7xLHa4PV8+ANjdqnzc7Pq2U59nL/RN
         br4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692110994; x=1692715794;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9qNhYuwyhWszY2RqTSS/sEwTOMk6dVrkylSMY5jCRfg=;
        b=JCejTiCa1JQtl5HWTud3vBuodEZuGOsLzgUaUEu81/5rSKBXwGOe5OQZ4YVwwme6FX
         PdjTqVVIFUw+sumcmtOKOjnhewfIecnVJEcQZsz+rIF+BuRy6YFMWKDNUT4ra3/bsGAh
         pilKcxRcuBy5yT404DDvgeCCtixjjoj71Ppr6Tmz+bOGuuiGWuG/XBsVGNR8hJAXFlGg
         6REmnZhKDhnjClqsWgjGjgddz6s/i86te5B9mAow9+S3AzjajiTFR4/XMwqnq0yp540d
         IxUAdRi2V2iaoPvS+QaEt8fbKTCBRgHJyaC7MK963bYQYuRQKBCJ+OwmDdAkks5/KcSz
         QtGg==
X-Gm-Message-State: AOJu0YxEVyilz4NZRDhuNSugFolzjHu6eNmM8IvH7ln9uKyDbyx90ryV
        uNNM3+F+/SYOfhryF8Ya3JYh2A==
X-Google-Smtp-Source: AGHT+IE8BtRwpVqdBpx2lz88XYgkLJC9I8EFgdrVxfF3HMDdCE4VlaZovA1hPcUauN6yYTxXwXF14Q==
X-Received: by 2002:a17:906:1f17:b0:99b:6e54:bd5b with SMTP id w23-20020a1709061f1700b0099b6e54bd5bmr9265067ejj.50.1692110994315;
        Tue, 15 Aug 2023 07:49:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id qw25-20020a170906fcb900b009928b4e3b9fsm7130132ejb.114.2023.08.15.07.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 07:49:53 -0700 (PDT)
Message-ID: <df40afe9-2596-27db-bcbb-6d57f8fd92c4@linaro.org>
Date:   Tue, 15 Aug 2023 16:49:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/7] dt-bindings: loongarch: Add Loongson SoC boards
 compatibles
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
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 10:50, Binbin Zhou wrote:
> Add Loongson SoC boards binding with DT schema format using json-schema.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/loongarch/boards.yaml
> 
> diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/Documentation/devicetree/bindings/loongarch/boards.yaml
> new file mode 100644
> index 000000000000..5092314b7a52
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson SoC-based boards
> +
> +maintainers:
> +  - Binbin Zhou <zhoubinbin@loongson.cn>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Loongson-2K0500 processor based boards
> +        items:
> +          - const: loongson,ls2k0500-ref
> +          - const: loongson,ls2k0500
> +
> +      - description: Loongson-2K1000 processor based boards
> +        items:
> +          - const: loongson,ls2k1000-ref
> +          - const: loongson,ls2k1000
> +
> +      - description: Loongson-2K2000 processor based boards
> +        items:
> +          - const: loongson,ls2k2000-ref
> +          - const: loongson,ls2k2000

This probably is a sign all your bindings are using a bogus compatible.
You were using compatibles like loongson,ls2k-clk so your SoC cannot be
ls2k2000... or your compatible is bogus. The same for:
loongson,ls2k-pm, loongson,ls2k-dwmac, loongson,ls2k-i2c,
loongson,ls2k-chipid, loongson,ls2k-gpio

Best regards,
Krzysztof

