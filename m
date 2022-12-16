Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3285C64EABA
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:39:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230214AbiLPLjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:39:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiLPLjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:39:16 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DAD11C02
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:39:15 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id n1so1863167ljg.3
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IlWaxMgkhxPdtZb+WB/Mty8qDItjeqZ5y9IGxEmKtJI=;
        b=OwDzHve5kZqVQScPaPObG+n1MnQ0aA/UrvVw8EZclk2nSmQcVsUwr2It5niiF7j0EA
         /GdRGBuq/jtaWQdJLSufDAoR2gIhjcftMxGO21siQPShuHQFfKlU4zBgIy53DH5mv/t/
         NieaR2gyILgOL8X80HJ7l8aup9PuJa+fjmwZVG3B2y1urifh6CyLEYkmilx99pMhVFL3
         bXnEmJpSncb+89Ai32sIWZaM4fBWXmq022w56l09mjOlIJlAKGIMVhQtXZ9nwWeVgJgw
         Y9DneK99SljPR7Y2eNyjn+KCL4ZiwAci1LbJA79qdlhxfUkUBub0aWs6o34uJHeFbt2d
         KSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IlWaxMgkhxPdtZb+WB/Mty8qDItjeqZ5y9IGxEmKtJI=;
        b=zEq9UZP/Kx3M4wAWaQpGAgtgrR3OzWQO6+7SsayvYugEpdZugwh0KK+bPOs1ZJTRzu
         EDwvfBq9gNTX3Bd2Y7BJBC/k65LbFKvkAUImdTH/NwwLY5ioKbaEBjeF/vmLPDy/dt7E
         5llOZosjfzSjDF6Pls0JNo3WXBSxTM6yKXUJC/GxpdQQV2DVoj3Ksv/U/LnMt3vwbRL6
         2p3q0wmTgc8bWbwYmPhoTokh5Rzre8h7bVBiHD3NMehoakOo+FNdkEK5+du1BMqQ3hH1
         eCZt69JcMm81bmkqZjubRq8q43ILC12RT9tUls8CKD7RMh/P3OzQQIrCJ03Q3bj7xfpS
         Eh3g==
X-Gm-Message-State: ANoB5pkP+KoI4/iL0tZ3+TbfXSIPguXMitobKEIEsqEdc+y+LGEO9/Mi
        XHmkdetN4/LlBm3WLvgKVsNUEA==
X-Google-Smtp-Source: AA0mqf5SuaaDRHyIN103jdsBxWIv3ZfZ6/mHAqGt6QCgLBuJqEUqn/wOJbw7zkvCve8EEdijihSdJg==
X-Received: by 2002:a2e:bc2a:0:b0:279:703c:8911 with SMTP id b42-20020a2ebc2a000000b00279703c8911mr10577730ljf.42.1671190754048;
        Fri, 16 Dec 2022 03:39:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f10-20020a2eb5aa000000b0027a0ec1f01asm129377ljn.56.2022.12.16.03.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:39:13 -0800 (PST)
Message-ID: <0a76ceb5-1ff2-002e-a861-6ad2d6578fea@linaro.org>
Date:   Fri, 16 Dec 2022 12:39:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        marcel.ziswiler@toradex.com, marex@denx.de, tharvey@gateworks.com,
        alexander.stein@ew.tq-group.com, richard.leitner@linux.dev,
        lukas@mntre.com, patchwork-lst@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221215174942.2835690-1-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215174942.2835690-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2022 18:49, Lucas Stach wrote:
> The HSIO blk-ctrl has a internal PLL, which can be used as a reference
> clock for the PCIe PHY. Add clock-cells to the binding to allow the
> driver to expose this PLL.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

