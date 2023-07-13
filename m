Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 351DA751E8F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 12:13:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233395AbjGMKNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 06:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234410AbjGMKNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 06:13:15 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA031119
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:13:13 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbc77e76abso4339195e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689243192; x=1691835192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iqpKvKjFPgrm1n67w2HkQAIAqrytD1SlOgdR7vfHDQ8=;
        b=luQTcZZe6aiRlfbeHU74EPHO1RuPrO2PLZ970jQJPWvapTOL62IS1iOxSd4rSMpCKG
         J78Y6wuPPK3OfB2vEizBbxHbK/dcqaVHYk/E97oJ4wQC+Ew1B2lV2xKldbhrierpLWVd
         CeI+JXfmy3jNhg0kfusp5zBh+IfwvWLpgZ8y9/qz27lNXGSbRlXYmcZzDCPUh6BjFCIz
         VK5liVRyZAvWcZEyO28lvCNnCmui8LUmtkPhlCa5YrHNa3bAb+StcFtU7EEODg3X7GvO
         To5Hq/TIAUwknPK1cdxQ8xgWHqLkk6cBdUBrEVKI0lXh9PiSGgFlBjW09Y4YwkVFtrri
         ZXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689243192; x=1691835192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iqpKvKjFPgrm1n67w2HkQAIAqrytD1SlOgdR7vfHDQ8=;
        b=UH6UHyzIodFQ389nI7+bTCfx8TrOEr7IiThlmmS2luynVIdSAClyfq58gd+wllvR2h
         kq6/aKdzVL1L8M7GKQMd5KV7ibsN6mTW2E6tBxmYVJB7o1VNbvrN+pPeaXaqW1buK2eM
         hhYinlMEEfeDNwXao4lZ5dwyA/R06+UASI80CwG/qebmtlEvuGiT7jzR1+Wzc7xwumR+
         hPO6u0FosLtbzaxVSnDGFV0t5+qsh2x5iugqZIE+lSyCTRzMDZzHSEGIDKpBTnOblN7J
         k7M0wByG4YGdLqoDAgq+qARrgG81ELsHWdnTCP/yUd2VqNwGY7f0nPirKshSrVDUoXW4
         +RjA==
X-Gm-Message-State: ABy/qLbZuYoWoKWTVemI6Xv6r/p3PWwTx7lbX6XVjLsTCZwWHqXmCQ1u
        GXKawrhcWG0Yh3xzRWszk+1QPyYyKuu/lx1qxAKckQ==
X-Google-Smtp-Source: APBJJlGoxNaV3VLPlfuinnivZHpasDjPzdV6g0i7WaJV8KKe9bghQK3WWPZrUI/A1anDv9oLHhCTdg==
X-Received: by 2002:a7b:c8c9:0:b0:3fc:a8:dc3c with SMTP id f9-20020a7bc8c9000000b003fc00a8dc3cmr938821wml.37.1689243192221;
        Thu, 13 Jul 2023 03:13:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id k12-20020a7bc30c000000b003fba92fad35sm17853977wmj.26.2023.07.13.03.13.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 03:13:11 -0700 (PDT)
Message-ID: <c1b6708d-3fa2-7b67-273b-f03aa59efc7c@linaro.org>
Date:   Thu, 13 Jul 2023 12:13:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/3] dt-bindings: spi: constrain minItems of clocks and
 clock-names
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20230713090015.127541-1-william.qiu@starfivetech.com>
 <20230713090015.127541-3-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713090015.127541-3-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 11:00, William Qiu wrote:
> The SPI controller only need apb_pclk clock to work properly on JH7110 SoC,
> so there add minItems whose value is equal to 1. Other platforms do not
> have this constraint.
> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

