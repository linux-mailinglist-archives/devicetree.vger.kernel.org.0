Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7401E5BCA85
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbiISLR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:17:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiISLR1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:17:27 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1447D10543
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:17:26 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a3so34357189lfk.9
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JpUZxV7W4OdfW8depqxCn4s/EcGVcl5jgZYhgCuc6mQ=;
        b=OILW2Ie6nsKGfKL5X8PI91RpDOu56Pp9WAEe3gW8SGEdrhnAWphPB8d2zoWqWEqF5d
         pxERb9QJkasEaddUs+QzbIjWhwHTzHWF05j/oK1c+ZlbjX9YHUbI53OoD6UJGUTURN4r
         sK+O2XTDNSgKBCji9IneBrAJ4DNr/QSSZ3CIna6rJn8TkzHupZNKh3pLVVxii0IEQ/Rz
         +7nnFujildUFSsvdZZvIYQJocakpT/jfKS1N4VvDhJYj15O5tY31a9ppD8uPCO1d5SBM
         WcBAmi+pzHZZ4uA3lICZCOd8UAuZ/VlOgubk2VPUA5MUGc6CGoeXxSy4mMF+CIB9Yhyr
         433g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JpUZxV7W4OdfW8depqxCn4s/EcGVcl5jgZYhgCuc6mQ=;
        b=k+g371BWkhMlyk1e9vpsKaUSHEA78zrSTr4hSpdjT/wcFdGkE4YdrWkogOu6/lP4ng
         QOFz2CGwk1KLU/yzAMOM04ktNTWFjnqDDZUG/dXWY3qkEt47N7ixUIT/WJSvdSMfIQSX
         p/I1Nts9Y2KjjBk1GRKvFuc1rw0osHwoC/XPFrL9ZKf9E0iB1bsDQhdI4uO/r1WsOiRC
         xQ9TuZVkn66oAScc4FCE18iTSDWz0IsvEoSguSLLiYyi4aSKNGEcf/9e751UoTt9BDkL
         WIdVbxD0fuSkgbEhSmi6yUBwiSTqvq6qX9LcwTt+KEX6Wv5KylCkzei4yxV9KkerLcqd
         MN+w==
X-Gm-Message-State: ACrzQf3xrFhRL/DlwSw1ts5TeNoDrMFqQQSRyyQ7/989EbmI1IWIa+QD
        J00scKcMMw8if/NMQSy3IlUzVw==
X-Google-Smtp-Source: AMsMyM7X9RC71wHPlM4PwHJQbx6GQ6pmo5D2fUY5kUn2M6OBt3V7URc6k9g6X2QpuUpcZWQ92XGc+Q==
X-Received: by 2002:a05:6512:ea9:b0:499:d6f9:5af6 with SMTP id bi41-20020a0565120ea900b00499d6f95af6mr6627996lfb.119.1663586244394;
        Mon, 19 Sep 2022 04:17:24 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y19-20020a2e5453000000b00261b9ccb18esm4869415ljd.10.2022.09.19.04.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:17:23 -0700 (PDT)
Message-ID: <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org>
Date:   Mon, 19 Sep 2022 13:17:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS
 architecture
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 06:11, Sergio Paracuellos wrote:
> Add the yaml binding for available CPUs in MIPS architecture.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Rebase on some recent Linux kernel tree and use scripts/get_maintainers.pl


> ---
> Changes in v2:
>  - Remove 'bindings/mips/brcm/brcm,bmips.txt'
>  - Include 'mips-hpt-frequency' in cpus YAML schema for bmips CPUS's
>  - Add a BMIPS CPU node sample
> 
>  .../bindings/mips/brcm/brcm,bmips.txt         |   8 --
>  .../devicetree/bindings/mips/cpus.yaml        | 100 ++++++++++++++++++
>  2 files changed, 100 insertions(+), 8 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
>  create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt b/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
> deleted file mode 100644
> index 8ef71b4085ca..000000000000
> --- a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -* Broadcom MIPS (BMIPS) CPUs
> -
> -Required properties:
> -- compatible: "brcm,bmips3300", "brcm,bmips4350", "brcm,bmips4380",
> -  "brcm,bmips5000"
> -
> -- mips-hpt-frequency: This is common to all CPUs in the system so it lives
> -  under the "cpus" node.
> diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
> new file mode 100644
> index 000000000000..361afde8ce0a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mips/cpus.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mips/cpus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPS CPUs bindings
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>

What about existing maintainers?



> +
> +description: |+

|+ seems not needed


> +  The device tree allows to describe the layout of CPUs in a system through
> +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
> +  defining properties for every cpu.

s/cpu/CPU/

> +
> +properties:
> +  reg:
> +    maxItems: 1
> +
> +  compatible:

compatible goes first.

> +    enum:
> +      - brcm,bmips3300
> +      - brcm,bmips4350
> +      - brcm,bmips4380
> +      - brcm,bmips5000
> +      - brcm,bmips5200
> +      - ingenic,xburst-mxu1.0
> +      - ingenic,xburst-fpu1.0-mxu1.1
> +      - ingenic,xburst-fpu2.0-mxu2.0
> +      - loongson,gs264
> +      - mips,mips1004Kc
> +      - mips,m14Kc

Maybe keep alphabetical order?

> +      - mips,mips24KEc
> +      - mips,mips4KEc
> +      - mips,mips74Kc
> +      - mips,mips24Kc
> +      - mti,mips24KEc
> +      - mti,mips14KEc
> +      - mti,mips14Kc
> +      - mti,interaptiv
> +
> +if:

Out it in allOf block

> +  properties:
> +    compatible:
> +      enum:
> +        - brcm,bmips3300
> +        - brcm,bmips4350
> +        - brcm,bmips4380
> +        - brcm,bmips5000
> +        - brcm,bmips5200
> +then:
> +  patternProperties:
> +    mips-hpt-frequency:

It's not a pattern. Did you test the bindings?

> +      $ref: /schemas/types.yaml#/definitions/uint32

Missing description.

else mips-hpt-frequency: false

> +
> +required:
> +  - compatible
> +
> +additionalProperties: true

and this is why you did not notice errors...

> +
> +examples:
> +  - |
> +    cpus {
> +      #size-cells = <0>;
> +      #address-cells = <1>;
> +
> +      cpu@0 {
> +        device_type = "cpu";
> +        compatible = "mips,mips1004Kc";
> +        reg = <0>;
> +      };
> +
> +      cpu@1 {
> +        device_type = "cpu";
> +        compatible = "mips,mips1004Kc";
> +        reg = <1>;
> +      };
> +    };
> +
> +  - |
> +    // Example 2 (BMIPS CPU)
> +    cpus {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      mips-hpt-frequency = <150000000>;

Does not match your bindings. Are you sure you tested the patches?

> +
> +      cpu@0 {
> +        compatible = "brcm,bmips4350";
> +        device_type = "cpu";
> +        reg = <0>;
> +      };
> +
> +      cpu@1 {
> +        compatible = "brcm,bmips4350";
> +        device_type = "cpu";
> +        reg = <1>;
> +      };
> +    };


Best regards,
Krzysztof
