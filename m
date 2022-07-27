Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78018582286
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 10:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbiG0Iy3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 04:54:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbiG0Iy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 04:54:28 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E69B46D8D
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:54:27 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t22so19760139lfg.1
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wfvzPXMvgYMiUrKp+h3pAdWcM4mbvmMcUUFl5h9IQqY=;
        b=qdAQFECb5vde05XPxQXR6CSFIyJRylut7jx8bcMsVR/UT2cFrh5p1DL5iaKRGKxKEn
         iWmKC4eWCe2kTHSNk2idpONMN1Plt2Xcy6sbKw+4wxFRYmcMzU2SdfeeuMQL9Y6v0qde
         Cp7YyOReDTwUeOu6Cri18GQ6ve0xOo7ZGVDHSfJLxIOcj+Yk81Lq2oASn/QF12HlTU97
         OtjDCJOj7uUZIr1wPegm1SeS7E/frwmpNoBtrnZB0mY9an9LuxJWz61flrjSNn9LV0LT
         xe6zjnvWTzt4k+kZXfINYP6ljKljyrQ805Tdh2ZLey72Rw0tArnnWcuEzZBIij+rj/FF
         E7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wfvzPXMvgYMiUrKp+h3pAdWcM4mbvmMcUUFl5h9IQqY=;
        b=lUZvjrQnPI+oi8FwAb0TQtrF9x4CCOX8lz7Wn2JDsi6H2G4s0DpSDQIFP93YFfHPg7
         /a/EVlXm8VJG39qenH6r9piWJC58OoyexP8XPuDfDFLAQhp/uyU81A7uskYr3QDUOZAm
         StybucqMdgafo24M4iB39PcUcgSIjg6bPBtoQU6neRXvPbnLM7NsjQcyLniz4L0Mlail
         G6ERyI6tzaUFfSMhnH3eRlpEbRAVL5ip4B8cep6VDe62cZQlUp+SDGp00ptTM1UWyap4
         AL2BZblAcm0Fj+p/wBeWWvU2BTCXcRaDtWupv//mUc7hbEPLnLMg5VIRA2fMRB75ns4z
         XZNw==
X-Gm-Message-State: AJIora9sp//1KciXPractAfE0X0LJDy6wbhujWGlRUAXwQh+AdFbqv9M
        9uryFKEws8JwIRuDbTOc87ZWPQ==
X-Google-Smtp-Source: AGRyM1uVHJHNhUGUESYxd+T31l7LrTcDRrOCtvPmwbN2drMeVa748oGkr4rno1r/8A3krk6uQDreyQ==
X-Received: by 2002:a05:6512:32c2:b0:48a:982a:b2be with SMTP id f2-20020a05651232c200b0048a982ab2bemr3747717lfg.493.1658912065422;
        Wed, 27 Jul 2022 01:54:25 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id x12-20020a056512078c00b0048a9c1d13d0sm1083845lfr.5.2022.07.27.01.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 01:54:24 -0700 (PDT)
Message-ID: <636e9214-4b36-e9a6-3c6b-b6edb944335e@linaro.org>
Date:   Wed, 27 Jul 2022 10:54:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/6] dt-bindings: riscv: Add DT binding documentation for
 Renesas RZ/Five SoC and SMARC EVK
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Anup Patel <anup@brainfault.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220726180623.1668-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220726180623.1668-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726180623.1668-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 20:06, Lad Prabhakar wrote:
> Document Renesas RZ/Five (R9A07G043) SoC and SMARC EVK based on this SoC.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/riscv/renesas.yaml    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/renesas.yaml
> 
> diff --git a/Documentation/devicetree/bindings/riscv/renesas.yaml b/Documentation/devicetree/bindings/riscv/renesas.yaml
> new file mode 100644
> index 000000000000..f72f8aea6a82
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/renesas.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/renesas.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/Five Platform Device Tree Bindings
> +
> +maintainers:
> +  - Geert Uytterhoeven <geert+renesas@glider.be>
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +
> +# We want to ignore this schema if the board is SMARC EVK based on ARM64 arch
> +select:
> +  not:
> +    properties:
> +      compatible:
> +        contains:
> +          items:

I think you should rather ignore the RiscV SoCs, not specific board.

> +            - const: renesas,smarc-evk
> +            - enum:
> +                - renesas,r9a07g043u11
> +                - renesas,r9a07g043u12
> +                - renesas,r9a07g044c1
> +                - renesas,r9a07g044c2
> +                - renesas,r9a07g044l1
> +                - renesas,r9a07g044l2
> +                - renesas,r9a07g054l1
> +                - renesas,r9a07g054l2
> +            - enum:
> +                - renesas,r9a07g043
> +                - renesas,r9a07g044
> +                - renesas,r9a07g054

Did you actually test that it works and properly matches?

> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: RZ/Five (R9A07G043)
> +        items:
> +          - enum:
> +              - renesas,smarc-evk # SMARC EVK
> +          - const: renesas,r9a07g043f01
> +          - const: renesas,r9a07g043
> +
> +additionalProperties: true
> +
> +...


Best regards,
Krzysztof
