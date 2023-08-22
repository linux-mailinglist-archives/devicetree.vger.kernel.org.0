Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46D40784AC9
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 21:47:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjHVTr3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 15:47:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjHVTr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 15:47:29 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749C0CD2
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:47:24 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so12139033a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692733643; x=1693338443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wP8V56gMXjaMA8xuJivdqqb4a/TtPfVwzUH0TySnGFk=;
        b=LPcyBY6Q4QNpkQalwXGTtYZCiFulPmXItYy3/b8aUob4oxkCVmmRoW1RvqYR1saZM6
         wU5t4iP9L3wAty3cpb5TpDB9FVXbEqDs4Com3WHkbRwOHu/mzB7Zj+kVNerKiZl75Abl
         Crs2stECCBhYREA06BMqTSX0HW2BAZB/TQx5AyZ+JoHONbvFgQcM2XJtKCUSJc0bL87a
         31pWTfq1F4Zl7ZONEWWif7SLFEvcW3+VjebjI69zb1QsMwIdHkk3jvf/Zow1Z1Sz+q2C
         bhxr4MIdWMgcnXi6MBNfA5xLM28ZzQSXxBCF+3kgCZV3nBFTmaNVJubSFp3xdo5Y6mmC
         HN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692733643; x=1693338443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP8V56gMXjaMA8xuJivdqqb4a/TtPfVwzUH0TySnGFk=;
        b=Agd8ODUNyQeQ9rcMKllzfiXMg9AVhv9ygOXKP2oG0/9VQl3qoNjRYcWN+sfUIzswg0
         aJ4fWwmzMJ5Z6zArNfaQTErC7zdlcYpG6bpNuxiLZeOvNO8KR2czN+1AU0wC53AsDrZ5
         pCfi8rBnJIgyFUuUSrLdOTkONuXoOFauHL2WyxalEpPJLCn1E3FFoTUohbm4i/ykTKVq
         MCMpTwjQKtN1loFFOLY40zMnX6Ey23mfwCtuYibeqebCnEx51DKu+q1ynBzp6q755t+T
         wJEouRJFGFGHkTieXab/azoGI7wl5lMHWpjX6UU/6G/XNugXkrVVmxps5fa7DhS3/2Xc
         Tjtw==
X-Gm-Message-State: AOJu0Yw0H3zbt5owWt5uuE3yaywo/GBfKt0s1kCVwL3ulvpZoCawksxT
        517dZrt9ZUEvreDMK7P4SRUaSvwrMiJHfNsytus=
X-Google-Smtp-Source: AGHT+IFA6vaH037bqItmbCjTD2cq16Ead293Dy7L2D+0FCyaqdqwV2We88f45rka1i6WgI/a9bPy5w==
X-Received: by 2002:a17:906:c116:b0:993:f664:ce25 with SMTP id do22-20020a170906c11600b00993f664ce25mr11084012ejc.19.1692733642939;
        Tue, 22 Aug 2023 12:47:22 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id n12-20020a170906688c00b00982be08a9besm8870178ejr.172.2023.08.22.12.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 12:47:22 -0700 (PDT)
Message-ID: <5ad5ff92-1367-ba96-b126-da80511a2769@linaro.org>
Date:   Tue, 22 Aug 2023 21:47:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 03/11] regulator: dt-bindings: mt6358: Convert to DT
 schema
Content-Language: en-US
To:     Chen-Yu Tsai <wenst@chromium.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230822084520.564937-1-wenst@chromium.org>
 <20230822084520.564937-4-wenst@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230822084520.564937-4-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 10:45, Chen-Yu Tsai wrote:
> Convert this from the old style text based binding to the new DT schema
> style. This will make adding the MT6366 portion easier.
> 
> The examples have been trimmed down considerably, and the remaining
> entries now match what is seen in actual device trees.

...

> +---
> +$id: http://devicetree.org/schemas/regulator/mediatek,mt6358-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT6358 Regulator
> +
> +maintainers:
> +  - Zhiyong Tao <zhiyong.tao@mediatek.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  Regulator node of the PMIC. This node should under the PMIC's device node.
> +  All voltage regulators provided by the PMIC are described as sub-nodes of
> +  this node.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt6358-regulator
> +
...


> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/regulator/mediatek,mt6397-regulator.h>

mt6397?

> +
> +    regulator {
> +        compatible = "mediatek,mt6358-regulator";
> +
> +        buck_vgpu {
> +            regulator-name = "vgpu";
> +            regulator-min-microvolt = <625000>;
> +            regulator-max-microvolt = <900000>;
> +            regulator-ramp-delay = <6250>;
> +            regulator-enable-ramp-delay = <200>;
> +            regulator-allowed-modes = <MT6397_BUCK_MODE_AUTO

mt6397?

Both cases look a bit confusing.

Best regards,
Krzysztof

