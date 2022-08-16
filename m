Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB5A059561A
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 11:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbiHPJYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 05:24:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbiHPJYR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 05:24:17 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF39E844CB
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:39:41 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w5so13693425lfq.5
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=btyntIg+6JbLy0894fPNlZeMSSyk53Lr6h4dc4QK0Co=;
        b=gLQxbMAXKhy40wWpKbzWV5WJdiOAFd8yiN9e/ugYXdxZgM51yId8ncUlykQBryCSFS
         gjkk2OImTlXH1dlcpVIJXPt9/NOM4XaJ1lZWiUgrEtEca3g/adpfaEdB0mbaYHKOr8g3
         NHCeRyWYN9fAkZQXFViueUT3z4Wf0DSGYKWwxV+11xGVdwHFXMhW0L2437v1NPhtugN5
         S+h+zf6a7Ixtt7x+xpnz6zZQIgDXAqFlXXdiA9XOOQV5NAmdhdy3jGL7CCD3+0B5RDHE
         uw1Z6QVDZWRSyxqAyowNEnMhk9pRXNVtf3Qcj58p/nE9g5UaPgTzfepzMdZOxSOzITxz
         lnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=btyntIg+6JbLy0894fPNlZeMSSyk53Lr6h4dc4QK0Co=;
        b=UnO2vZ7J8GooEAwuoqXSiCTobQmlbwY5Q2Sh0SHj3aM2ns2RGxQbnHtovNpz2AfUfp
         s07HlkkWG1ImM0HYA6ISyfC82YvxKTadM0Q4NXdZ2yraGAYxTb0dwS13eGpecUJUVT42
         XSX5VFwr2AG33S7LKOhFGefBaVSR7WqSVuKCV5czOilyyNeE2rbKWJTeSF3KtWg/tzgj
         PZN2uuamNQXqXJRwNWG12628BiB3yDccZ+Jc6sR4fhocj25tzfGgZaisEHdnqXqSyBB5
         B8udhF9/dOjzImS8UHP/Kd6ZX6cVOM43Q6cNWiJIoAXKkJQEJ8XJctkFZsJsSPXMSKao
         36vQ==
X-Gm-Message-State: ACgBeo1j+t5W0lKyYq61GRewdmj6mMBXGOv4vglp0wvP7xkfpeO80A0d
        mdCGwQAsYSin4dIwz5Dyhy3q8Q==
X-Google-Smtp-Source: AA6agR5Otw3L/ye4I0Fc78uHZiVk2dPD8EYKzSpl1dan6fstRqLuZDDmi8GIEb65XgKTtqZpLahfbw==
X-Received: by 2002:a05:6512:25a3:b0:48a:e7e7:eea3 with SMTP id bf35-20020a05651225a300b0048ae7e7eea3mr6296301lfb.205.1660635580231;
        Tue, 16 Aug 2022 00:39:40 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id p21-20020a2ea4d5000000b0025df5f38da8sm1706327ljm.119.2022.08.16.00.39.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:39:39 -0700 (PDT)
Message-ID: <1f84e925-1a0f-6100-c444-a8157e14ab5a@linaro.org>
Date:   Tue, 16 Aug 2022 10:39:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 04/12] dt-bindings: riscv: Add Allwinner D1 board
 compatibles
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-sunxi@lists.linux.dev, Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220815050815.22340-1-samuel@sholland.org>
 <20220815050815.22340-5-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815050815.22340-5-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 08:08, Samuel Holland wrote:
> Several SoMs and boards are available that feature the Allwinner D1 SoC.
> Document their compatible strings.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  .../devicetree/bindings/riscv/sunxi.yaml      | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sunxi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/riscv/sunxi.yaml b/Documentation/devicetree/bindings/riscv/sunxi.yaml
> new file mode 100644
> index 000000000000..564a89499894
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/sunxi.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/sunxi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner RISC-V SoC-based boards
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Jernej Skrabec <jernej.skrabec@gmail.com>
> +  - Samuel Holland <samuel@sholland.org>
> +
> +description:
> +  Allwinner RISC-V SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Dongshan Nezha STU SoM
> +        items:
> +          - const: 100ask,dongshan-nezha-stu
> +          - const: allwinner,sun20i-d1
> +
> +      - description: D1 Nezha board
> +        items:
> +          - const: allwinner,d1-nezha

You grow the list unnecessary. Several entries should be an enum, unless
platform maintainer insists on such approach for all Allwinner Riscv
platforms. Just be aware it will grow...


Best regards,
Krzysztof
