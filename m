Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA2D5531D5
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbiFUMVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349717AbiFUMUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:20:52 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B81D1D313
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:20:51 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id pk21so3977853ejb.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WGElSp8mpEadMRBQCrftcGEEprjog0OtBAkkb6JBrzw=;
        b=Zhlo8AWG/JtH6eAN1M+0taZxVbHr91fpNFwkRqNZpJlzI5i92G0MtqE7rJ3RViC9jQ
         06ujZCYLIN+ptWjGA7jQv9eeqvKJnfg6uEh9aA5pbygLEf+wFOy9dj8utQODrzfANhjr
         zzvDfYokR5rPo+FzIcQwjWndLxsa1eQYZG4XIcakxMsQnP8tdFbO4Py7wjD2KiVUv5A6
         ZuXBlObMW7sAF5fdoVoOX7DDd767QbtUkm6HUegxNmnLZzWgQ1qE9GwQDZANFcX4L1Sb
         cM6XPkqUE5xTDgJoqXCFbjJ/ay3DOUiX1FEvxoTmxdMPTWDHBxoSao4aGLhqkrMePfRx
         rPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WGElSp8mpEadMRBQCrftcGEEprjog0OtBAkkb6JBrzw=;
        b=Xqu7JruYcC6T1e400O6B4RMZ+u1Ho9BECBTytlDysOqTsPZWyAE9XUjzkWNBFhTFf4
         B8nmNNI5Vx1wDToldAwP2TCoFhg8jFjXEPj3PH1JUAvm38P7cT1O52GclczNJF0EPVjb
         0AswHoAXj5knyhV9VPkHFUgDxvfwppeuATYpNmBvMa7xe0MlPMjuFmACqJA4PcIq2LY1
         zeVGKg3EKHvoIQC/Dc58Il2n/ilERFHB+PDraDpPLlZoawOiQgjOvvsK3MO2NYI0czv/
         V59Nz4yGPzQZuI0DuT8QSTSaJD1dQ6ELpFHNg8+RUQ+e/S/sUeKz+4opXeaPLsX1lnNr
         BgDA==
X-Gm-Message-State: AJIora8WDBFfZwBLSvMrsH4rii8SPewy/5y9fMq4TvY3tgY3l4Eol6t5
        VmrJwrOha82NvGshZMMBWqquTw==
X-Google-Smtp-Source: AGRyM1v18K38uZKglk9Uk1W0TWPjruBF48xlJG0nVmclpeTnMAdW2VyrwDvDExZv59wwNP7bHRKlAA==
X-Received: by 2002:a17:907:7295:b0:71e:bc93:496a with SMTP id dt21-20020a170907729500b0071ebc93496amr17061727ejc.698.1655814050167;
        Tue, 21 Jun 2022 05:20:50 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cf9-20020a170906b2c900b00711d5bc20d5sm7508698ejb.221.2022.06.21.05.20.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 05:20:49 -0700 (PDT)
Message-ID: <63b563ba-8030-798b-a0ab-84fe30efecec@linaro.org>
Date:   Tue, 21 Jun 2022 14:20:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 3/3] dt-bindings: arm: stm32: Add Phytec STM32MP1 board
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        kernel@pengutronix.de
References: <20220621101538.481143-1-s.trumtrar@pengutronix.de>
 <20220621101538.481143-3-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621101538.481143-3-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2022 12:15, Steffen Trumtrar wrote:
> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB eMMC,
> up to 16 MB QSPI and up to 128 GB NAND flash.

This is also not wrapped according to Linux style.

Best regards,
Krzysztof
