Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 871194BB86C
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 12:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234401AbiBRLnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 06:43:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233191AbiBRLnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 06:43:42 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ABF3E033
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:43:25 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E10F940295
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 11:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645184603;
        bh=2dz0fU06npj7eyUkmqf71aR/j64jZ0aIwZIfUTh8vN0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=DIGUNamiWudZk8wX8rRzJ30PAWuW5OVP4RLVdZW+eSspHfaTjQUOatPkq35NK/m80
         bJM93OE0m9oWf/E77ABCT9UxESsyYDH4oYSa3l1ajo8B+bYydzhs0bDeRsl/yXNguf
         uknW14COKNv/yzlx3pdAhoqRyZLXk0Mx50VpsoDo+crZxKD/pYuRcTsi2KvIN0cHPK
         H5TlXxvelzdzbFpVstXSkkeuk+kK6Sosm0k2r1/fOmS+ooFPFwzNwValDedCnJpQbU
         Ex6fP85I3M9P8sZqDMCt+eB9gyb5HLX1JizwvqRqj85H/jl10LfToWo0qxCbBEQbQA
         6ikVOA7u6wp1A==
Received: by mail-ed1-f72.google.com with SMTP id r11-20020a508d8b000000b00410a4fa4768so5323538edh.9
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:43:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2dz0fU06npj7eyUkmqf71aR/j64jZ0aIwZIfUTh8vN0=;
        b=JgdGiNl4P3iKduYko+M3jMYV/ooz18QeWD7dwNIcu9fIkLvtDPj4BCihud5yqYsO/V
         78tylAODBLh7F60QVTNL3DtCXn/Sts0+4FImWR6Pk+IPqE1X2WRgtzgwgxhAvryTKVLZ
         2j/cWhzMDBKjEedAkeG0+KY+RJ2sYtc4cJc6jZW6o/+mm4yu8jAjyR8Gc0t8mZ2pDYyy
         8viVgLzuYfQ2h4HIFw0YyDz9qL912pJvHxO+i+N6J03YEz0A79V3DQLfJ40C+yrlz48+
         ZYNoQMyN3D4XfzLueJxXmpHxgIPDOok0X8fYSow+vQqP76UwlCwlEyZV1ml5iyyO6C9G
         uZnw==
X-Gm-Message-State: AOAM532UQN2NoeUFRwaAaepTCOYovfP1U/Bxah39Phayth3XgD+Bgd8R
        CjtGh8Sw/LKDACjyuBiLJvOQA0PLMBm3vTS0zkHgevNKiyt/9rbNsKiult7i2nBP40AaIT1G8FA
        wiNYQbb/XXrRt8j9vio7t44iDLCSLUz/HupuAHdM=
X-Received: by 2002:a17:906:aad7:b0:6ce:a6e3:9461 with SMTP id kt23-20020a170906aad700b006cea6e39461mr6091058ejb.186.1645184603448;
        Fri, 18 Feb 2022 03:43:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJymrZ8USRQCBiL2OjYELAOGRuSqGgvNMTxjRekMQvvKJ7hBqEdLgUzCYZSykiroGn57ff0oeg==
X-Received: by 2002:a17:906:aad7:b0:6ce:a6e3:9461 with SMTP id kt23-20020a170906aad700b006cea6e39461mr6091044ejb.186.1645184603267;
        Fri, 18 Feb 2022 03:43:23 -0800 (PST)
Received: from [192.168.0.114] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id y21sm2111991ejq.185.2022.02.18.03.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Feb 2022 03:43:22 -0800 (PST)
Message-ID: <939b25f4-f4c0-d393-df6a-8063eb9d40fe@canonical.com>
Date:   Fri, 18 Feb 2022 12:43:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 1/2] dt:bindings:iio:frequency: Add ADMV4420 doc
Content-Language: en-US
To:     Cristian Pop <cristian.pop@analog.com>, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     jic23@kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org
References: <20220218095048.86826-1-cristian.pop@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220218095048.86826-1-cristian.pop@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/02/2022 10:50, Cristian Pop wrote:
> Add device tree bindings for the ADMV4420 K band downconverter.

Subject needs fixes. You miss spaces there, incorrect prefix. Use git
log --oneline to get the examples subject style in given subsystem.

> 
> Signed-off-by: Cristian Pop <cristian.pop@analog.com>
> ---
>  .../bindings/iio/frequency/adi,admv4420.yaml  | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/frequency/adi,admv4420.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,admv4420.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,admv4420.yaml
> new file mode 100644
> index 000000000000..35a3fb3fd339
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,admv4420.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/frequency/adi,admv4420.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ADMV4420 K Band Downconverter
> +
> +maintainers:
> +  - Cristian Pop <cristian.pop@analog.com>
> +
> +description:
> +  The ADMV4420 is a highly integrated, double balanced, active
> +  mixer with an integrated fractional-N synthesizer, ideally suited
> +  for next generation K band satellite communications
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,admv4420
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 1000000
> +
> +  adi,lo-freq-khz:
> +    description: LO Frequency
> +    $ref: /schemas/types.yaml#/definitions/uint32

Rob's question from v3 remains unanswered...

> +
> +  adi,ref-ext-single-ended-en:
> +    description: External reference selected.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      admv4420@0 {

Generic node name. It's a kind of plague there... everyone using
specific model as node name.

> +        compatible = "adi,admv4420";
> +        reg = <0>;
> +        spi-max-frequency = <1000000>;
> +        adi,lo-freq-khz = <16750000>;
> +        adi,ref-ext-single-ended-en;
> +      };
> +    };
> +...


Best regards,
Krzysztof
