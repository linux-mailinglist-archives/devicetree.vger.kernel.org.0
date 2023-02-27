Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB2B06A3C1D
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 09:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbjB0IPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 03:15:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbjB0IPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 03:15:10 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF761C5BB
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:15:07 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so6442023wmb.5
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ykQL+wemGByro2MkMCepozrEmOoZvr3Fpiqikx6KNvU=;
        b=XTuhesiLkfEkA+SGb398z9A6gEpdRaVwniIjjcWh/5zzOW2M8KIcI39ELkW0U7D98s
         KW8TofHUTUc76kbKnH7EJK0+qnMQmAF39k2TNmxXnwHYKCowEMvUjcuP8WNuf7mvpQyp
         /FOvD3kEsBNG7uj95+QCLm0ma5Lb5b/4V/O9/QPZWOsyhHOTF32DsCTCTMj7OOysy1l/
         t47MJWtPfOpNCZD5B7eA4kkMF76HlQHuKd30bue+N3stNmEPKkMlxGkg1DCboa/Jb7UE
         n0k1bEjiHz4+QhJEaWArE/pEZzI+PghfZf/wxlkUWimZgHSOM0cTpydArzEA7FyF7sK1
         puWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ykQL+wemGByro2MkMCepozrEmOoZvr3Fpiqikx6KNvU=;
        b=hxJy8JhLcmFX8cCeEaJB2jZaKu5v8pBnbboyHBtfYITlFF4FID9GiE6KbqR3zl0ELU
         CEQ50nmDj1ii2ARtKymPZy3/EhQTVaWJGwmxRe1/LWgx/djA0Uye1F/+Svotfy7UFncC
         uieoJWD5mI5KDEswDnAKQUinpRCuOVhx4SfcLzuO9BURHlI6cQjNSrv3nF8rIVE7bjvs
         rcnhVA626g9jQ6Vj1CzspT6sY5sNElY3U23FDTa4QvsiOkpWwfOIJlRMGaByE9IwLmM9
         eLBsSIddNXml8whovGAYkk5PnuUrVe/4we2lqV+AcdgrjD0jpsf6GKvd8cTP3OkXRxJj
         nVlQ==
X-Gm-Message-State: AO0yUKW6wYqeFzznoQ1NAuAsKkwT84xEJNmkIP5Ryqa/aasSIHDAA/Nb
        4WeEECeHajW918dwCMmUR2KPxUAnu3rCXvcE
X-Google-Smtp-Source: AK7set8ZGX2NnlEpE1CBg+Kmv2R0/WA3VAJQafJbNbYhmP4TslhboAqFxsukDkCv3SNGGwsiGWcIAw==
X-Received: by 2002:a05:600c:4d21:b0:3ea:e4bb:340c with SMTP id u33-20020a05600c4d2100b003eae4bb340cmr11811958wmp.18.1677485706224;
        Mon, 27 Feb 2023 00:15:06 -0800 (PST)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id v16-20020a5d4b10000000b002c56013c07fsm6310120wrq.109.2023.02.27.00.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:15:05 -0800 (PST)
Message-ID: <8e5f9bfa-d612-cd43-d722-d04c40938c62@linaro.org>
Date:   Mon, 27 Feb 2023 09:15:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 0/3] Meson A1 32-bit support
To:     Alexey Romanov <avromanov@sberdevices.ru>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
References: <20230222115020.55867-1-avromanov@sberdevices.ru>
Content-Language: en-US
Organization: Linaro Developer Services
In-Reply-To: <20230222115020.55867-1-avromanov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 22/02/2023 12:50, Alexey Romanov wrote:
> Hello!
> 
> This patchset adds support for 32-bit Meson A1 board.

Hi Alexev,

I'm aware Amlogic also runs their kernel as 32bit to gain a few kbytes
of memory, but those processors are ARMv8 and the arm64 arch code
has been designed for those CPUs.

So far I didn't find a single good reason to add 32bit support for
ARMv8 Amlogic based SoCs, if you have a solid reason please share.

And as Krzysztof stated, the support is incomplete and cannot work
without a dts file.

Neil

> We describe device tree with following components:
> CPU, GIC, IRQ, Timer, UART, PIN controller.
> It's capable of booting up into the serial console.
> 
> We have tested this DTS and used drivers at our
> 32-bit Meson A1 board and it works correctly.
> 
> Alexey Romanov (3):
>    meson: pinctrl: use CONFIG_PINCTRL_A1 with CONFIG_ARM
>    firmware: meson: use CONFIG_MESON_SM with CONFIG_ARM
>    arch/arm: dts: introduce meson-a1 device tree
> 
>   arch/arm/boot/dts/meson-a1.dtsi | 151 ++++++++++++++++++++++++++++++++
>   drivers/firmware/meson/Kconfig  |   2 +-
>   drivers/pinctrl/meson/Kconfig   |   2 +-
>   3 files changed, 153 insertions(+), 2 deletions(-)
>   create mode 100644 arch/arm/boot/dts/meson-a1.dtsi
> 

