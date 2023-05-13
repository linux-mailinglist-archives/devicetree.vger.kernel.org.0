Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34D697018A0
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 19:50:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231890AbjEMRu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 13:50:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjEMRu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 13:50:27 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DE071A2
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 10:50:26 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso20858977a12.3
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 10:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684000224; x=1686592224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X8d2KXRCGDR3c/BQhN0FBkqec9oklx/aHt7TQaWGLAE=;
        b=yqy+K5qOjT2HCUMgVZL5+yMNzrG3KIxCwUpr2HYmbWgn/pIpSv7MSlHYzEBaDSQN0F
         hcd0nFHL7GSn6kDMuSvLQJ3oIrbnrcpsfHWwnN+/5uMO9pZctvz4rBs5qQPhthQ0D4y5
         adkGcNDy37/0RSeb61daDvkdYQmhUomwp9pv4Mmpm5k66dL1S8n0UZJe17nOeKPkEG78
         TBLX1qlNGQzK478yaEIPa9wLscIOIHzhQWql64Ex5CyP29IL2wZXonctlKs/Q1RJNcYB
         vEsYD0eyKAq9YtSU6+PVaG3aNX3St3mMrAfUcKBagV5oPeuEGROMstunKotTRsBnMenS
         ++DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684000224; x=1686592224;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X8d2KXRCGDR3c/BQhN0FBkqec9oklx/aHt7TQaWGLAE=;
        b=f8dC/LsI8AiBDT+jedET62ayJNWpCgdbadUzQz+rr6Ain/EtjTDgUG2Qeani8LdRbS
         RISKIV8ZxDkDy/uvaobiZUDlGBvKchpdFB0Cs7FSeQRwQNIgyHKzJga2PTcYvBgpZ02b
         0OmLPxNyYuJGeGCGExUZHlvwLuOe0hUhK9oOfraqBtBvJ9k6j0V3b7RV4wfJk9A9s2qk
         lBMc3tPhRU0x1fqwSOcw+6bVAPgBXJGbi4dgOlzOSTYoQgMLY5rUPeFE51PVC/1ZIu42
         /UKMSpLB+nfn93Bw4Chqqt9V50H0UZpd7UyfqCOTrfjBLv9NO4Y8PdyI9KqjdIk85Nw4
         aUkw==
X-Gm-Message-State: AC+VfDz1Mc57xQpCwKdZRvj2LWfi6H4UGAWA7jnpMS+V4r/MGcfJvSSW
        XOwpkbtYO7wogGH4AZbGjiI5Aw==
X-Google-Smtp-Source: ACHHUZ5XkUMcRaZZmMQwIXdNF25tNNfnaVOKYKwuDAexzMiguHzUPXzwxlxCIgOBN3x+LkOTwpISHQ==
X-Received: by 2002:aa7:c744:0:b0:50d:89a3:d909 with SMTP id c4-20020aa7c744000000b0050d89a3d909mr19430241eds.30.1684000224482;
        Sat, 13 May 2023 10:50:24 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bc2d:23f8:43c2:2aed? ([2a02:810d:15c0:828:bc2d:23f8:43c2:2aed])
        by smtp.gmail.com with ESMTPSA id r9-20020a056402018900b0050dab547fc6sm5248943edv.74.2023.05.13.10.50.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 10:50:23 -0700 (PDT)
Message-ID: <90f24883-4653-d099-14cc-38e2ecbbd189@linaro.org>
Date:   Sat, 13 May 2023 19:50:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [RFC 2/6] dt-bindings: riscv: add riscv,isa-extension-* property
 and incompatible example
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
References: <20230508-hypnotic-phobia-99598439d828@spud>
 <20230508-sneeze-cesarean-d1aff8be9cc8@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508-sneeze-cesarean-d1aff8be9cc8@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 20:16, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> This dt-binding is illustrative *only*, it doesn't yet do what I want it
> to do in terms of enforcement etc. I am yet to figure out exactly how to
> wrangle the binding such that the individual properties have more
> generous versions than the generic pattern property.
> This binding *will* generate errors, and needs rework before it can
> seriously be considered.
> Nevertheless, it should demonstrate how I intend such a property be
> used.
> 
> Not-signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/riscv/cpus.yaml       | 61 ++++++++++++++++++-
>  1 file changed, 60 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 405915b04d69..cccb3b2ae23d 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -100,6 +100,15 @@ properties:
>        lowercase.
>      $ref: "/schemas/types.yaml#/definitions/string"
>      pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
> +    deprecated: true
> +
> +  riscv,isa-base:
> +    description:
> +      Identifies the base ISA supported by a hart.
> +    $ref: "/schemas/types.yaml#/definitions/string"

Drop quotes.

> +    enum:
> +      - rv32i
> +      - rv64i
>  
>    # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
>    timebase-frequency: false
> @@ -136,8 +145,32 @@ properties:
>        DMIPS/MHz, relative to highest capacity-dmips-mhz
>        in the system.
>  
> +  riscv,isa-extension-v:
> +    description: RISC-V Vector extension
> +    $ref: "/schemas/types.yaml#/definitions/string"

Drop quotes.

> +    oneOf:
> +      - const: v1.0.0
> +        description: the original incarnation
> +      - const: v1.0.1
> +        description: backwards compat was broken here
> +
> +patternProperties:
> +  "^riscv,isa-extension-*":

Are all these -i/-m/-a extensions obvious/known to RISC-V folks? I have
no clue what's this, so the question is: do they need some explanation
in the bindings?

> +    description:
> +      Catch-all property for ISA extensions that do not need any special
> +      handling, and of which all known versions are compatible with their
> +      original revision.
> +    $ref: "/schemas/types.yaml#/definitions/string"

Drop quotes.

> +    enum:
> +      - v1.0.0

Your example should not validate here... you have there v2.0.0 and v1.0.1

> +
> +oneOf:
> +  - required:
> +      - riscv,isa-base
> +  - required:
> +      - riscv,isa
> +
>  required:
> -  - riscv,isa
>    - interrupt-controller
>  
>  additionalProperties: true
> @@ -208,4 +241,30 @@ examples:
>                  };
>          };
>      };
> +
> +  - |
> +    // Example 3: Extension specification
> +    cpus {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        cpu@0 {
> +                device_type = "cpu";
> +                reg = <0>;
> +                compatible = "riscv";
> +                riscv,isa-base = "rv64i";
> +                riscv,isa-extension-i = "v1.0.0";
> +                riscv,isa-extension-m = "v1.0.0";
> +                riscv,isa-extension-a = "v1.0.0";
> +                riscv,isa-extension-f = "v1.0.0";
> +                riscv,isa-extension-d = "v1.0.0";
> +                riscv,isa-extension-c = "v2.0.0";
> +                riscv,isa-extension-v = "v1.0.1";
> +                mmu-type = "riscv,sv48";
> +                interrupt-controller {
> +                        #interrupt-cells = <1>;
> +                        interrupt-controller;
> +                        compatible = "riscv,cpu-intc";
> +                };
> +        };
> +    };
>  ...

Best regards,
Krzysztof

