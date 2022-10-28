Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CED67611C6A
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 23:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbiJ1V2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 17:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbiJ1V2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 17:28:40 -0400
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4E2F65833
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 14:28:38 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id o64so7418623oib.12
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 14:28:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lknu54DbFthD579xaozvAvZtzzLsGT0TFE9tJ3u52N4=;
        b=vf94atHcIX3oj0yiQDcsHdvcOHinEBhvfFmBjuI6ccMApcUV/8VMU6hci5Tq24Iwp1
         AFSo2k5Cw0ei/pQ3B+ChupiaViCJTFY89SrhAlpS5BJ4XGjPw47Vk/bpEdfsg6ZRGQl0
         CL7GF/XtF4nOGccmD1qEOEBeYUtkgP3fuZNnIFdh/H7n4c0sLPE7+Cqvsf47s1qHQXK+
         E3ELHuppn7JL5+Q8UOlod003ChpNu64F6MJtWGjlZKpOIGmbf4lV+/0cxRimHifteHR5
         9j4IbX0hR2KOyCb8b5IiWTwExkNv5fHeEP/8Rxe0jrmJ2PGSTU4y20JZYAYq2uELEcum
         8qeA==
X-Gm-Message-State: ACrzQf0a8j5HtJdNc2i5namJA+3Lx72RO6SwUAhpGGVvc3WYT6h2q6TV
        8JCJmdLCaxnz7Ptuzp6rNQ==
X-Google-Smtp-Source: AMsMyM7TA8UcCrte8E7aB86djXst16DZXJt5jV5F6apx7LivjSiemtLqKZ+e8qL60XfbspflUZy2Gg==
X-Received: by 2002:a05:6808:2021:b0:354:9a79:2f5a with SMTP id q33-20020a056808202100b003549a792f5amr9905119oiw.276.1666992517892;
        Fri, 28 Oct 2022 14:28:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q15-20020a056830018f00b0066564c9103csm2140271ota.55.2022.10.28.14.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 14:28:37 -0700 (PDT)
Received: (nullmailer pid 2308996 invoked by uid 1000);
        Fri, 28 Oct 2022 21:28:38 -0000
Date:   Fri, 28 Oct 2022 16:28:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/3] [RFC] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Message-ID: <20221028212838.GA2286583-robh@kernel.org>
References: <20221027225020.215149-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221027225020.215149-1-marex@denx.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 12:50:18AM +0200, Marek Vasut wrote:
> Add trivial bindings for driver which permits exposing syscon backed
> register to userspace. This is useful e.g. to expose U-Boot boot
> counter on various platforms where the boot counter is stored in
> random volatile register, like STM32MP15xx TAMP_BKPxR register.

Generic bindings always start trivial until they get appended one 
property at a time...

What happens when you have more than 1 field and/or more than 1 
register?

> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Rafał Miłecki <rafal@milecki.pl>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> new file mode 100644
> index 0000000000000..3035a0b2cd24a
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
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nvmem-syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    tamp@5c00a000 {
> +        compatible = "st,stm32-tamp", "syscon", "simple-mfd";

This is very common, but personally I think "syscon" and "simple-mfd" 
should be mutually exclusive. "simple-mfd" is saying the children have 
no dependency on the parent, yet the child nodes need a regmap from the 
parent. Sounds like a dependency.

> +        reg = <0x5c00a000 0x400>;
> +
> +        nvmem-syscon {
> +            compatible = "nvmem-syscon";
> +            reg = <0x14c 0x4>;

How does one identify this is the bootloader's boot count? How does the 
bootloader know it can write to this?

> +        };
> +    };
> -- 
> 2.35.1
> 
> 
