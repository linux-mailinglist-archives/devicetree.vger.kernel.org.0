Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85D76515E3A
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 16:36:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbiD3OjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 10:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232973AbiD3OjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 10:39:23 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FB9FB9E
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 07:36:00 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id p18so12044430edr.7
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 07:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1WgubGSoJAPdWjBnPDgWauo3P+IMmZgZaRGmCmfoizc=;
        b=FVjVyF73PZABV91yo+wd5pvA43nakkeivhaxZs5+/JKDGWwTAGYssQOMAxJuYmkuH1
         19kLfQgLuiw/ZM2yM/FBD2JFZYnBaev665PmkuI+y/tZNQY3520+orSBziIcdg8XF5KW
         zGga89CvLdBkB/E0bmyKO5LfgkY4DvAkbIK4CM87XCgmuP1R3zxC1/yMeWsimRkgedE6
         6e2Ag+QvN8tG0GEE3bwH7A38uhfuQmxH3anZ0KZDDD7pAex/dHEkeGYxZaGuOw2fg/58
         k5zSoRdOILdqXONqhavBEuE1moP0ybE0tLYVT1HYv3DlzuDxGCfbiA0UJAy4bpT1Ohrc
         IFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1WgubGSoJAPdWjBnPDgWauo3P+IMmZgZaRGmCmfoizc=;
        b=RNyJlsUK5Xkn8JH692SehMrIu50KzSxp7RtBnB5NEUcV69ED4Sepchj+4LFLeiyJF+
         KPHBMKAKFY0Rpz3zoe+1BHdllDEeumNDOB4K0WffVr0T1bSxpRR14I3aHUaU3k9vEI4t
         5h4sHU6TtDxyeRl/oxSe8gKMnXl0HHqTTFdghg/o2BMz0BFJVDdoO5STgk5SOgVUTH6n
         ZaRG1xHWD6KV7WkX17ItC3qHPG927QCdC/FcLNHfxziouFkUxSUQfoQj5r/Ec1UkLDKD
         xK7IFlqvfZyHFbl9Yg1wOmRuvyrCpTygLcVGdCv7eheuvklgzVuA/zl8f+tTbCL1odCs
         xILQ==
X-Gm-Message-State: AOAM530JVbJ8XX8eg5EDkf0f+W9H1CEKvgMt1hT6CiSTByKKiORhctgR
        Na38g/k9lzEMRQXyVSGnZQeOnw==
X-Google-Smtp-Source: ABdhPJxNeIB6AHKIO3rPt2UhdsqdD5/9TG6O/V7b7rM9TRQgx/XsND+2Kw96U5Y28+pQ8FQA62QMnw==
X-Received: by 2002:a05:6402:3711:b0:425:d3d6:2b65 with SMTP id ek17-20020a056402371100b00425d3d62b65mr4785658edb.328.1651329358961;
        Sat, 30 Apr 2022 07:35:58 -0700 (PDT)
Received: from [192.168.0.180] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r20-20020aa7da14000000b0042617ba63cdsm4172971eds.87.2022.04.30.07.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Apr 2022 07:35:58 -0700 (PDT)
Message-ID: <2e51842a-d2c9-8953-13aa-02ad3abb3f14@linaro.org>
Date:   Sat, 30 Apr 2022 16:35:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: partitions: Add binding for
 Sercomm parser
Content-Language: en-US
To:     Mikhail Zhilkin <csharper2005@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     NOGUCHI Hiroshi <drvlabo@gmail.com>, Karim <Karimdplay@gmail.com>,
        M <x1@disroot.org>, linux-mtd@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220406195557.1956-1-csharper2005@gmail.com>
 <20220406195946.2019-1-csharper2005@gmail.com>
 <8d0d8b27-35ff-3693-cf80-897b80c26b4e@linaro.org>
 <57bebf2f-af4c-b2d9-10e5-19e5104946fb@gmail.com>
 <29cfa017-bbaf-3aba-fe1d-06771957dbaa@linaro.org>
 <1b391399-984b-7a63-3265-62ef09caec39@gmail.com>
 <bd533827-b575-caad-c230-af060851b231@gmail.com>
 <db70e53b-7484-43bf-e9c8-b6a2dce1fbb5@linaro.org>
 <25da3f43-c46e-8108-2da9-0e4f2b7cc1a4@gmail.com>
 <b279040a-a782-a2ca-2acb-2d8f07709081@linaro.org>
 <1c19faf9-fc1c-9adf-d038-97b673a8f0be@gmail.com>
 <a84df850-149e-9656-43fa-1f040368a9f1@linaro.org>
 <0450d781-c506-c28e-a0e5-435bee16721f@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0450d781-c506-c28e-a0e5-435bee16721f@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/04/2022 10:04, Mikhail Zhilkin wrote:
> 
> diff --git
> a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> index ea4cace6a955..fa457d55559b 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> @@ -17,9 +17,29 @@ description: |
>  maintainers:
>    - Rafał Miłecki <rafal@milecki.pl>
>  
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - fixed-partitions
> +
> +  required:
> +    - compatible

With your approach you do not need this entire select. I pointed out to
you if you wanted to take the syscon approach.

> +
>  properties:
>    compatible:
> -    const: fixed-partitions
> +    anyOf:

oneOf

> +      - items:
> +          - enum:
> +              - sercomm,sc-partitions
> +
> +          - const: fixed-partitions
> +
> +      - contains:
> +          const: fixed-partitions
> +        minItems: 1
> +        maxItems: 2

This is also not needed if you do no take the syscon approach.

>  
>    "#address-cells": true
>  
> @@ -27,7 +47,18 @@ properties:
>  
>  patternProperties:
>    "@[0-9a-f]+$":
> -    $ref: "partition.yaml#"
> +    allOf:
> +      - $ref: "partition.yaml#"
> +      - if:
> +          properties:
> +            compatible:
> +              contains:
> +                const: sercomm,sc-partitions
> +        then:
> +          properties:
> +            sercomm,scpart-id:
> +              description: Partition id in Sercomm partition map
> +              $ref: /schemas/types.yaml#/definitions/uint32

I think we still did not clarify why do you need this ID which in all
your examples increments by one. The description basically is a copy of
property name, so it does not explain anything.

>  
>  required:
>    - "#address-cells"
> @@ -119,3 +150,29 @@ examples:
>              };
>          };
>      };

Blank line.

> +  - |
> +    partitions {
> +        compatible = "sercomm,sc-partitions", "fixed-partitions";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        partition@0 {
> +            label = "u-boot";
> +            reg = <0x0 0x100000>;
> +            sercomm,scpart-id=<0>;

Missing spaces around =.

Best regards,
Krzysztof
