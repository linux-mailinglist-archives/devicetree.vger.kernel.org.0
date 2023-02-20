Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8774269CA96
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 13:16:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231696AbjBTMQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 07:16:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230333AbjBTMQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 07:16:15 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B641ABED
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 04:16:13 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id ec43so3342054edb.8
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 04:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LHyp+RhnNJ4rQeNCga7DI+gNbDU1iW82DBR66hSxJQs=;
        b=yYvehGyXo/xNEtVKAN3WK20otIHJYscpdSFSkfMfe8BDhSGHfH5Cbi7mhgagOcZCBU
         vFBMQC0QZDW+6IAcKVKBZ5yDkKEFtN2diivnp/t4JVJ7iGEVDGbn0YiswQPz75S4MMtL
         Xf10e0fVaz3iIVRU0FUGFIxJYv9JCQ9zR8kmR3Ge3UMuVTwZI5REiwC0esbF6C1R1bce
         KGZtrrCFg1SC6MGDB8LYKBjxIraWtVj57QdI3CpZDJ5RGkd8cViby1PjBeSYZjjcZ0Fc
         TtsZfkdohdA6Q4vSuJ1AwLY8a2kErOn6GNfweKEKqI2GS1hwFz3HiHEtCMymin3dXa3/
         5r1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LHyp+RhnNJ4rQeNCga7DI+gNbDU1iW82DBR66hSxJQs=;
        b=jkxaBw6dSSvR6Dg3C671M7ckIuX8jQ1iBsXT6qlpx1po/c1PrGn4JR4U4o50O+lbCW
         iJg0JwAW75DSDkmK1dj+5pIHr4XqN5EINJW6rDtaIxdsz2qU9NwYPjujIiBr413wZbRz
         PHlhbV56TKdkjbwzVfnOxF+vO2c8nHdyV7e5daKlpaxro+LLYD1MUMfoO9rOCFcchkW7
         l0L+jSu5hhXqBC0iHQRZo3HOvUmdSfwNZ2mefFj86qAG16klDa66kcO+ZEp6narNX/3u
         K7MUQwi0q2SfkGPlhL3ZRByCTRrY6DW9UbYhZqi1Tlbh/CNlfV0a/Mn5iJ/uql5oEwMP
         zi3w==
X-Gm-Message-State: AO0yUKWAluu79x6j4SxJFzvKZRoi+oXdFgz/49VQHwdQahHOA1Tbb3Yt
        1cGMr0HjsiqjUrx8kGdO63oEsQ==
X-Google-Smtp-Source: AK7set/t6K32u2z1BLg1HeBcMdr2hrDETMCWhZYxfozHEWlVt/Bm3H8f0csxt5PtKnGrXTZJESoQYw==
X-Received: by 2002:a17:907:a4c2:b0:8ae:3200:a107 with SMTP id vq2-20020a170907a4c200b008ae3200a107mr5965243ejc.23.1676895372368;
        Mon, 20 Feb 2023 04:16:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j26-20020a170906831a00b008d1dc5f5692sm1344081ejx.76.2023.02.20.04.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 04:16:11 -0800 (PST)
Message-ID: <4512df34-c2ea-cf00-1d2d-54ff961fd871@linaro.org>
Date:   Mon, 20 Feb 2023 13:16:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: convert
 loongson,ls1x-intc.txt to json-schema
Content-Language: en-US
To:     Keguang Zhang <keguang.zhang@gmail.com>,
        linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>
References: <20230220111801.2037164-1-keguang.zhang@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220111801.2037164-1-keguang.zhang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2023 12:18, Keguang Zhang wrote:
> Convert the Loongson1 interrupt controller dt-bindings to json-schema.
> 
> Signed-off-by: Keguang Zhang <keguang.zhang@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Unreviewed.

> ---
> V1 -> V2: Drop the description part
> ---
>  .../loongson,ls1x-intc.txt                    | 24 ----------
>  .../loongson,ls1x-intc.yaml                   | 47 +++++++++++++++++++
>  2 files changed, 47 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.txt
> deleted file mode 100644
> index a63ed9fcb535..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -Loongson ls1x Interrupt Controller
> -
> -Required properties:
> -
> -- compatible : should be "loongson,ls1x-intc". Valid strings are:
> -
> -- reg : Specifies base physical address and size of the registers.
> -- interrupt-controller : Identifies the node as an interrupt controller
> -- #interrupt-cells : Specifies the number of cells needed to encode an
> -  interrupt source. The value shall be 2.
> -- interrupts : Specifies the CPU interrupt the controller is connected to.
> -
> -Example:
> -
> -intc: interrupt-controller@1fd01040 {
> -	compatible = "loongson,ls1x-intc";
> -	reg = <0x1fd01040 0x18>;
> -
> -	interrupt-controller;
> -	#interrupt-cells = <2>;
> -
> -	interrupt-parent = <&cpu_intc>;
> -	interrupts = <2>;
> -};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.yaml
> new file mode 100644
> index 000000000000..48dd071ceeea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/loongson,ls1x-intc.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/loongson,ls1x-intc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson-1 Interrupt Controller
> +

What happened to description? Why did you remove it?

Best regards,
Krzysztof

