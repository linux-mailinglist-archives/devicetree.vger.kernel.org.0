Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 153B66DF3D2
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 13:35:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbjDLLfl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 07:35:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbjDLLfh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 07:35:37 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94C5C7DA5
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 04:35:13 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id q26so2069204lfe.9
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 04:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681299256;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LxsivSQwSNGU8AJzuwSv8w61igpz8AHkC54naIDyexI=;
        b=gwjW5QtuRbOOWCGb1dONAXAbjmFVfvKKircAtLFrbHDHFvYVlzDF5RyrRu7gHFH4uK
         vuhlstToooIlcw0h4Wpps4ko40UZH6/bHQVOQZPzBtTxpUqM+NDyY6Uf+SqKqQBVrQfG
         ogODpwGkP/40If5n9YAcLxLpUzAli65yuYcjp52Ud1a+AaHKKKN/nxp0s4AUcwHabfsc
         9AZXNJAax+ENZJD6sAQlIsu9i7Dfs8TtAbAux/+o6JFnQABKwVyv29tSey5md14NMMHj
         JlE4eaMnT9JtWqJX2tAgkvrAjKcGdEsdc9kAzkVZSGMFbyVNz6K89St/hfn0e9DxO1U+
         GcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681299256;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LxsivSQwSNGU8AJzuwSv8w61igpz8AHkC54naIDyexI=;
        b=UmX7NOgUajaBGo0DO+pFF4ihD/6TaiVPC9IXil1ZenMrv68vjCDHaW4MrN1jkL7Rby
         d0bPrmcYdhuvMWaqHnRT5uWzVrLf5kUno307IrYEvLxRg6sg1v34McFk3AzKUZFJ5P4b
         ZmWvPo20DJ39DeIHhVQz71tP6gA7ll8kCACqY7lbX/3SKmOGEfvCG0YxCHWlVPgQ6A+I
         30iJ4KCZWwGqETK64RfS1IF8GPvoU5QTuwN0orDSbkiSz8DzDDgJ+SacFWEufiL5+ttd
         oTIWk7QyZySAcQwQGLFFN2+GrBYs5wWtwdeznW4+LM4MgA57m66QChQohjw8bmJxlRWG
         LrVQ==
X-Gm-Message-State: AAQBX9fbABwtu0xViOebluHfmCMxdda2GrdGTmJtYV3krx0fXDh60QEB
        AugKN8dMVJouPskNisoMpYtBvg==
X-Google-Smtp-Source: AKy350Y6SI3oUzoCiPhWbY7FYgE1XH0PFnLrVCnn38wtCsCdGB0IrxcVCSFEseYoJY1ywr5ToEXxSw==
X-Received: by 2002:ac2:5dc2:0:b0:4ec:a218:4f9b with SMTP id x2-20020ac25dc2000000b004eca2184f9bmr309937lfq.2.1681299255813;
        Wed, 12 Apr 2023 04:34:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id v5-20020ac25605000000b004b55ddeb7e3sm2964212lfd.309.2023.04.12.04.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 04:34:15 -0700 (PDT)
Message-ID: <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
Date:   Wed, 12 Apr 2023 13:34:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To:     Changhuang Liang <changhuang.liang@starfivetech.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jack Zhu <jack.zhu@starfivetech.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412084540.295411-2-changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 10:45, Changhuang Liang wrote:
> StarFive SoCs like the jh7110 use a MIPI D-PHY RX controller based on
> a M31 IP. Add a binding for it.

So this is D-PHY? Or the other patch is D-PHY? The naming is quite
confusing and your commit msgs are not helping here.

Also the power domain phandle here adds to the confusion.


> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 85 +++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> new file mode 100644
> index 000000000000..5fb2f14af816
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive SoC MIPI D-PHY Rx Controller
> +
> +maintainers:
> +  - Jack Zhu <jack.zhu@starfivetech.com>
> +  - Changhuang Liang <changhuang.liang@starfivetech.com>
> +
> +description:
> +  The StarFive SoC uses the MIPI CSI D-PHY based on M31 IP to transfer
> +  CSI camera data.
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-dphy-rx
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: config clock
> +      - description: reference clock
> +      - description: escape mode transmit clock
> +
> +  clock-names:
> +    items:
> +      - const: cfg
> +      - const: ref
> +      - const: tx
> +
> +  resets:
> +    items:
> +      - description: DPHY_HW reset
> +      - description: DPHY_B09_ALWAYS_ON reset
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  lane_maps:

Why did this appear? Underscores are not allowed. It looks like you
re-implement some standard property.

> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description:
> +      D-PHY rx controller physical lanes and logic lanes mapping table.
> +    items:
> +      - description: logic lane index point to physical lane clock lane 0
> +      - description: logic lane index point to physical lane data lane 0
> +      - description: logic lane index point to physical lane data lane 1
> +      - description: logic lane index point to physical lane data lane 2
> +      - description: logic lane index point to physical lane data lane 3
> +      - description: logic lane index point to physical lane clock lane 1
> +


Best regards,
Krzysztof

