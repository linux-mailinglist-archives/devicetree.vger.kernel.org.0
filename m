Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D92253A22A
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 12:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244875AbiFAKNY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 06:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237074AbiFAKNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 06:13:18 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CB1F44764
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 03:13:13 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id me5so2192729ejb.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 03:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Z9kPEnmi8rJKpB3/e/9VBnwIHSYiTOXGx6udirKdD3M=;
        b=AgWZPwEKZaFLn8RqKLc2KNNc5Ox5awSlJ1Eo3iFQUpbH54qkNKGdSA/oYmRwN7jNeK
         UHHTIWONRqxe62sbo+bKj8ofX1yCVF+sZoXI2RmEEHsHeACpURK0tSI7rJrAfo3nvkCu
         1hzevQKrNh/cy4d+o9QNlxatZi8oxvhsb5M/pZ9wTacDiFLJ0w8w/do6y29F0n3ezP7f
         PusoBRPPTModJOvPw79D0hlUfXJ8/xbQXLFE15SzI/+az0xO7/RPWMItwnxXktCevnSx
         OLNaLpn5TqbBhnQUYchiuK2sM+9xl0TOHE2TOnTJxsHBl/jlsI1TsEGmERigH774u85v
         /Szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z9kPEnmi8rJKpB3/e/9VBnwIHSYiTOXGx6udirKdD3M=;
        b=t5OPPCUheyhASrSW4bKlMIbFJ+bm+DDWf+x7nC6Zuv2Y8Ysw9oX1SRlcOmNqtn91j2
         uwh696/RUCVfXYEWZqviwhZux5xmSp6dUHh04hiRK8YPIK10Zmdc5X8JeSlRJ+ZbleGr
         HNNK7PcSJB32LNXLRQXMaBmrhdjvalcM2ak5jo3CsHRzYknlKgk092hevtm6eXPi3T9g
         0fjeK6G5rEkFOCqS1/NUBRgAp7Qp6eGmIFYXlgCicRBjJ6LWL1GniTU/YwTVw3cHtBRz
         YW/DrC4RzYPNevjqDOINJakR1wADKGOFjPzURzsS/nSYxtiAde9Q5OpjVuLW5+lWYAQh
         wHTg==
X-Gm-Message-State: AOAM530woeWQIZUXTJEU3qamSzE/x/0wX2R4wb2Xz131GN3ApyQheYtk
        rTWLFvkSohsuHJ5MuczKnaSveQ==
X-Google-Smtp-Source: ABdhPJwTzfmxEZcB2H8kpKINmFdrBQHA4UJBWrYbb8yNl9INvi7rhzKhj+8nTc3PJwiLlFid6G5pUQ==
X-Received: by 2002:a17:907:a0c8:b0:6f6:d3e4:49a5 with SMTP id hw8-20020a170907a0c800b006f6d3e449a5mr57330364ejc.644.1654078391803;
        Wed, 01 Jun 2022 03:13:11 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm523130ejb.80.2022.06.01.03.13.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:13:10 -0700 (PDT)
Message-ID: <b7eb2f9f-9604-3f05-59c3-e4c790068967@linaro.org>
Date:   Wed, 1 Jun 2022 12:13:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 11/17] dt-bindings: phy: mediatek,dsi-phy: Add MT8365 SoC
 bindings
Content-Language: en-US
To:     Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        qii.wang@mediatek.com, matthias.bgg@gmail.com, jic23@kernel.org,
        chaotian.jing@mediatek.com, ulf.hansson@linaro.org,
        srinivas.kandagatla@linaro.org, chunfeng.yun@mediatek.com,
        broonie@kernel.org, wim@linux-watchdog.org, linux@roeck-us.net,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-iio@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-12-fparent@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-12-fparent@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 15:50, Fabien Parent wrote:
> Add binding documentation for the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
