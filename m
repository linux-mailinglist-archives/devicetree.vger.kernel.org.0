Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC46D50C990
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 13:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235206AbiDWL2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 07:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235172AbiDWL2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 07:28:09 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0146810E1
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 04:25:13 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id y3so550385ejo.12
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 04:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=b0QHbEfjhdFjBQohwIb3mVsJsYj7ByjobrCCQyighNY=;
        b=OWWWrhwA+sfgjaEEgSVqN+h+Zolso0GHgxGLbXaAmv/G+zvfsKo1V2V7wlW70jg1q6
         nG0T1MuhNxoirWsGTIdJieUZlPpgafXSDj0Z2tgroyjzhE03kXfYmTsuPr37vzAzt83Y
         hYCfppSyrak8z5DjQ3oDCWonqpdXuoLo5v0/o1Fwp0JKTgXHn1X6eR/Uc9uX48C8pBJd
         K5uyXXj71TnWF4CpnknbDshZy03N3q2nqoHRjmB5nxY15r6F8oLMwn3e5REiWTZqx6fz
         UH7ePgOFvqCcQ9ZdYReEXiSDiiE5eCsjWFEiul2g1Lre4bD63Xh6zFWeUIOujSu8QGIO
         xJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=b0QHbEfjhdFjBQohwIb3mVsJsYj7ByjobrCCQyighNY=;
        b=ICA5jL0PuqiJ5jITLfx+JZpsqYAxsrPeItp6gi5v3wX9AMEUrsKoISNYPrmApQ6Tdn
         UiuFywORR8jYgmOjZdUjLMmnPFaOJ/+iz2QPAoPGU/mw9f3X5f79yN50LcN3Q5UQegQL
         lmfrEo/QlsMnd96JNuJ8o5z5lLDtX3y3yG+2HMcTEIQo0t/5klplfn8I1R2PYCbm0J52
         ZWginmKS671n5T7YC9xwA4R+KMS3M14dCgUuLEZ5IAHck0EBMua2Kt0iqteUaFxv2MpI
         NS2XyKtBiKPFhx9i8ym6LwrwxdG3kv6+rHwiQPBGNiSWNC89PXQVrPgnr4nHte87Pl9y
         8seA==
X-Gm-Message-State: AOAM531ljEbqNZAo6ypu8dl3Y6V1gdMEfnF2UOhGMxgdL29Rav3mGoXY
        iCaIBQO0Gp+cb43AsdZ2WiK32g==
X-Google-Smtp-Source: ABdhPJykneMY5JCtqucAvuVw5uFTMjnYXBQJbrUzg8v0zp5Q2N9doiRsAbkBlDcBP0r3mcI0+hg3sA==
X-Received: by 2002:a17:907:6d9f:b0:6f0:1077:eaf4 with SMTP id sb31-20020a1709076d9f00b006f01077eaf4mr8081863ejc.708.1650713111613;
        Sat, 23 Apr 2022 04:25:11 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ay17-20020a170906d29100b006e88f246fdbsm1589880ejb.152.2022.04.23.04.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 04:25:11 -0700 (PDT)
Message-ID: <0c4c5e9d-7222-69d3-1dea-1a499acf0f6c@linaro.org>
Date:   Sat, 23 Apr 2022 13:25:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: phy: marvell,armada-3700-utmi-host-phy: Fix
 incorrect compatible in example
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220422192054.2591093-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422192054.2591093-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 21:20, Rob Herring wrote:
> Fix the example using the incorrect compatible string.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/marvell,armada-3700-utmi-phy.yaml   | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
