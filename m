Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE8486F28D8
	for <lists+devicetree@lfdr.de>; Sun, 30 Apr 2023 14:15:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbjD3MP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Apr 2023 08:15:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231152AbjD3MPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Apr 2023 08:15:13 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E45A730E7
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 05:14:56 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-95369921f8eso254755166b.0
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 05:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682856895; x=1685448895;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mt9USrv+ZHcnB3z89zQ2BG1WQ2PVUi4+cTzv7FJVs5M=;
        b=e7asCzmCbvm127ZLY+yeej1czNgSxlxzCx5F8yqPo2i+MUEQNGfE2kv9QSfmNrDQbb
         04FD5GNWq7RY1yEw0pzec9eBTIuNxN4MvNKIKb7XMrIwOc9MpxSCgKJghMvbSbSE4sQp
         NbC3LHNdtDKP6NFcHSPOcDw7jqOUqDKgXRtfuRtRqwuICACCp9duo6fOtRp7QOaTCnXe
         wK0gKHd7oqidnQGkoBPGql3BG3OARD4RiVLGujNLLHtIZktzcY/6DkNDvapUr0bqH57N
         ivUvgMOHsW215MioSAOEj2GuqF8WqSQ4FHDv+xYB1NEPCH0sL6VgQhL3FDjvsim+2vlJ
         8Zcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682856895; x=1685448895;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mt9USrv+ZHcnB3z89zQ2BG1WQ2PVUi4+cTzv7FJVs5M=;
        b=WBtq0sJjLrjHWZ0j9NoHR/Zi4SozNCvHsXzF6tIfXbgXA7iw3Bhaim2foGuONKBoks
         PQVNdyvcCGJ/F0rEER9UQruBxZZ5xCZJl1e/QRXm/vgVteAdhP9kcxJ0GbK3IANI1rfd
         AC3H3Cw8N22Usl9PAfWH5cRxpljlHnjJCQrtOgyZ4nva7Ghv6+m9syhmtwnpWL4ob6mn
         aLfGYQ1s+H1ObtXFJ8gtPQiZpmylDqne5z2tgQ0ULLebYkgD45ITDUKY/fuknLnfquME
         45bd7eTMf25I2zDLmytWmKuwBBDXaVlyYX2m5X6U+lzyQ+4zacrDc8u2McUwygTAf0w3
         4Kbw==
X-Gm-Message-State: AC+VfDwJQGNldeld+XUg8vAGAQyltXUzAUImfMUzixgPppecIb0TbYTm
        dZuzSl7cPfNzZVd95Fts0/Ezdw==
X-Google-Smtp-Source: ACHHUZ7M5DuoGnPjgZjSVIWy4ZD2G37gn0fdV1/PvV73VqDv0LTYTlXEbiq0L/b8h/TXkgeCKf5Ugw==
X-Received: by 2002:a17:907:3f04:b0:94a:4d06:3de3 with SMTP id hq4-20020a1709073f0400b0094a4d063de3mr10212201ejc.72.1682856895398;
        Sun, 30 Apr 2023 05:14:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4f23:e9a6:a1cf:ebd3? ([2a02:810d:15c0:828:4f23:e9a6:a1cf:ebd3])
        by smtp.gmail.com with ESMTPSA id va2-20020a17090711c200b0093a0e5977e2sm13794807ejb.225.2023.04.30.05.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Apr 2023 05:14:54 -0700 (PDT)
Message-ID: <93773f00-1301-cf77-9bde-5de0595fec8d@linaro.org>
Date:   Sun, 30 Apr 2023 14:14:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v11 1/2] dt-bindings: i2c: aspeed: support for
 AST2600-i2cv2
Content-Language: en-US
To:     Ryan Chen <ryan_chen@aspeedtech.com>, jk@codeconstruct.com.au,
        Brendan Higgins <brendan.higgins@linux.dev>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Wolfram Sang <wsa@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        linux-i2c@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
        Jean Delvare <jdelvare@suse.de>,
        William Zhang <william.zhang@broadcom.com>,
        Tyrone Ting <kfting@nuvoton.com>,
        Tharun Kumar P <tharunkumar.pasumarthi@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Phil Edworthy <phil.edworthy@renesas.com>,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, =linux-kernel@vger.kernel.org,
        Andi Shyti <andi.shyti@kernel.org>
References: <20230430041712.3247998-1-ryan_chen@aspeedtech.com>
 <20230430041712.3247998-2-ryan_chen@aspeedtech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230430041712.3247998-2-ryan_chen@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/04/2023 06:17, Ryan Chen wrote:
> Add ast2600-i2cv2 compatible and aspeed,global-regs, aspeed,enable-dma
> and description for ast2600-i2cv2.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.



Best regards,
Krzysztof

