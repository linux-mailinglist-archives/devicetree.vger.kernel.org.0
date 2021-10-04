Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 466FF4206C2
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 09:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230195AbhJDHn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 03:43:57 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54330
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230160AbhJDHn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 03:43:56 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 58F3E4076F
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 07:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633333327;
        bh=e714NVWVScI0+yjdvUNrvtSFupcv664MYMHWSpxcxMo=;
        h=To:Cc:References:From:Subject:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=fxmqJbG0nE9sOnkZMUmLGzzspYDtu0XNidN/HrgIt1hm9xKusY2FNT77rT68o1nxy
         IG+FAiStp6vDArhH6If7plJckPPZdu5cJQzai8RanBUXLtf+luIgbqL93p39LC1J/M
         1CTztxDw7fNDXRAZSL5iFBNsYw4IExDpGjXDj8QcblT1sbRAQj6Gn7AIFFGfperUDS
         1wL0kKKayv9JVVVCM9hnpVvBC4Ji8wcuTISLFhGSMM7pzXPah3nz4CpW/gG0kVr7kF
         U0hMY6jzk1t2GaH4Us3wJSzTmzqB32PH0kgrnVLOirctmd9QGoafIb5CoAq/JSwWCA
         ElGhO3/SQTwlg==
Received: by mail-lf1-f70.google.com with SMTP id x7-20020a056512130700b003fd1a7424a8so8051342lfu.5
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 00:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e714NVWVScI0+yjdvUNrvtSFupcv664MYMHWSpxcxMo=;
        b=jL+Z+/vq8KNhgSq8phgxJ98GAydhl7gYMtNX9cdjzKsDHCiJjZmU2Xuk0lcDwydHq/
         tyreoIrRV1vmqlEa7tDPXEbtFD9I29PubN3QpVBUhjUZqr/E9WmC+v3kqyZQTRBDN8Ex
         B4ypG+EeB3babNYuvDI9Yy6sC2mCXJ7rorHTuIeVtxLO8Bc36mCb5+RxUMr/Tt5vT9Mj
         gyltuRO3DTf8q8ECK4Fi6nLOLU8frn1UCtFPrUJlh53Uq5a+LkUhfVfYo6dMWGltpYfL
         q4Omhpqg/8+UuKaXvZ5xFKAxRVKLSRWQRyB2KMF6Zckl9shuYgNCWfA56nrvptegEk/F
         MQxQ==
X-Gm-Message-State: AOAM530LO9FhF9l1f6ZuXYkTRF7vS1eYFVCBODQ17JIhOPaUkdVX/ljt
        IfGzBcOyuggsyj2zKxjBJh+9CRyB3jvdlgTtGxNwuaXvZ3FRVs0ApaydpdcAxP3KEz6cp45Ni8L
        8EoAf4DWcKNlswRTbL4xeqvb5pg7tjLw9TYQBpSA=
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr13936964ljc.70.1633333326562;
        Mon, 04 Oct 2021 00:42:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRJspKI6Vl7ZMdGxUQeATfKQIB9Bmf0vo2F7KLIpoe6VCVE+oWZXaAY8PDuK8/hw5UWEtJVA==
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr13936948ljc.70.1633333326351;
        Mon, 04 Oct 2021 00:42:06 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id l24sm1532183lfh.8.2021.10.04.00.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 00:42:05 -0700 (PDT)
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20211003013235.2357-1-digetx@gmail.com>
 <20211003013235.2357-2-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: memory: Add LPDDR2 binding
Message-ID: <4c5643de-d39d-2b1a-12ae-ec5247fe2976@canonical.com>
Date:   Mon, 4 Oct 2021 09:42:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211003013235.2357-2-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2021 03:32, Dmitry Osipenko wrote:
> Add binding for standard LPDDR2 memory chip properties.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../memory-controllers/jedec,lpddr2.yaml      | 80 +++++++++++++++++++
>  include/dt-bindings/memory/lpddr2.h           | 25 ++++++

Hi Dmitry,

Thanks for doing this. I think I should be slightly more descriptive in
my previous comment. What I meant, is to use existing DDR bindings
(which might include or require converting them to YAML):
Documentation/devicetree/bindings/ddr/

The bindings are already used:
arch/arm/boot/dts/elpida_ecb240abacn.dtsi
arch/arm/boot/dts/exynos5422-odroid-core.dtsi
drivers/memory/samsung/exynos5422-dmc.c

You can remove the Documentation/devicetree/bindings/ddr/lpddr2.txt
after full conversion, so also including AC timings and AC timing
parameters. The timing parameters could be a separate YAML, if you want
to convert everything. You can also skip it, because it is not necessary
for your work.


Rob,
Any advice from your side where to put LPDDR2 dtschema bindings? The
existing location was bindings/ddr/ but maybe this should be part of
memory-controllers (although it is not actually a controller but rather
used by the controller)?

>  2 files changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/jedec,lpddr2.yaml
>  create mode 100644 include/dt-bindings/memory/lpddr2.h
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/jedec,lpddr2.yaml
> new file mode 100644
> index 000000000000..ef227eba1e4a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/jedec,lpddr2.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/jedec,lpddr2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: JEDEC LPDDR2 SDRAM
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +properties:

You need compatible (see lpddr2.txt)

> +  jedec,lpddr2-manufacturer-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 255
> +    description: |
> +      Unique manufacturer ID of SDRAM chip. See MR5 description in JESD209-2.

Plus:
"See include/dt-bindings/memory/lpddr2.h for known manufactured IDs."

However I wonder whether we need it. It should be taken from the vendor
part of compatible.

> +
> +  jedec,lpddr2-revision-id1:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 255
> +    description: |
> +      Revision 1 value of SDRAM chip.
> +      See MR6 description in chip vendor specification.
> +
> +  jedec,lpddr2-revision-id2:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 255
> +    description: |
> +      Revision 2 value of SDRAM chip.
> +      See MR7 description in chip vendor specification.
> +
> +  jedec,lpddr2-density-mbits:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Density in megabits of SDRAM chip. See MR8 description in JESD209-2.
> +    enum:
> +      - 64
> +      - 128
> +      - 256
> +      - 512
> +      - 1024
> +      - 2048
> +      - 4096
> +      - 8192
> +      - 16384
> +      - 32768
> +
> +  jedec,lpddr2-io-width-bits:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      IO bus width in bits of SDRAM chip. See MR8 description in JESD209-2.
> +    enum:
> +      - 32
> +      - 16
> +      - 8
> +
> +  jedec,lpddr2-type:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      LPDDR type which corresponds to a number of words SDRAM pre-fetches
> +      per column request. See MR8 description in JESD209-2.
> +    enum:
> +      - 0 # S4 (4 words prefetch architecture)
> +      - 1 # S2 (2 words prefetch architecture)
> +      - 2 # NVM (Non-volatile memory)

Type should not be needed but instead taken from compatible. Unless Rob
has here preference and maybe change the DDR bindings?

requiredProperties for compatible, density, io-width.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/memory/lpddr2.h>
> +
> +    lpddr2 {
> +        jedec,lpddr2-manufacturer-id = <LPDDR2_MANID_ELPIDA>;
> +        jedec,lpddr2-revision-id1 = <1>;
> +        jedec,lpddr2-density-mbits = <2048>;
> +        jedec,lpddr2-io-width-bits = <16>;
> +        jedec,lpddr2-type = <LPDDR2_TYPE_S4>;
> +    };
> diff --git a/include/dt-bindings/memory/lpddr2.h b/include/dt-bindings/memory/lpddr2.h
> new file mode 100644
> index 000000000000..e837b0d8a11e
> --- /dev/null
> +++ b/include/dt-bindings/memory/lpddr2.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
> +#ifndef _DT_BINDINGS_LPDDR2_H
> +#define _DT_BINDINGS_LPDDR2_H
> +
> +#define LPDDR2_MANID_SAMSUNG		1
> +#define LPDDR2_MANID_QIMONDA		2
> +#define LPDDR2_MANID_ELPIDA		3
> +#define LPDDR2_MANID_ETRON		4
> +#define LPDDR2_MANID_NANYA		5
> +#define LPDDR2_MANID_HYNIX		6
> +#define LPDDR2_MANID_MOSEL		7
> +#define LPDDR2_MANID_WINBOND		8
> +#define LPDDR2_MANID_ESMT		9
> +#define LPDDR2_MANID_SPANSION		11
> +#define LPDDR2_MANID_SST		12
> +#define LPDDR2_MANID_ZMOS		13
> +#define LPDDR2_MANID_INTEL		14
> +#define LPDDR2_MANID_NUMONYX		254
> +#define LPDDR2_MANID_MICRON		255
> +
> +#define LPDDR2_TYPE_S4			0
> +#define LPDDR2_TYPE_S2			1
> +#define LPDDR2_TYPE_NVM			2
> +
> +#endif /*_DT_BINDINGS_LPDDR2_H */
> 


Best regards,
Krzysztof
