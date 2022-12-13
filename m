Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D081264B60A
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:25:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235104AbiLMNZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:25:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235540AbiLMNZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:25:12 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E120418388
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:25:09 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bp15so4827923lfb.13
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kum601MiBIlttJSDRQmfhh9LTWkYIKPaSRUuoMLt5mc=;
        b=Yq+RaU/XO0NdXv3tTOX30OYKW7pojZzUeJFwM+c6kknJV6vETrM+n/PGK6GLX/Blse
         USjkE7bBQyFRw9egfBFbbZ52tciOgje3i7DkvG8YnL1zMJNKoZRRLEbT6ZNi39hGlDu5
         bxJF426xiXNXqFIUnc3L2Zlq0vqosOm/uO6WcRVJ3Nnad8t3+bNu/5egWsysJbOuW15o
         SdGm/KbJjL6KGAMZEE+Ismzmy+KUQYoJAgDfE7NRIMxaAGTBrRvLGuPywQvaI5fvjuTc
         AxckxTDUa77GzGs8yuHKQnu4EkC1ByBfB6wREv8+a0j7Tq6un9rWlSwfyLVrxvtdvy/c
         Xo9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kum601MiBIlttJSDRQmfhh9LTWkYIKPaSRUuoMLt5mc=;
        b=644i09BGoEEa5xyIroOcnnkH1Qltnpc+vTeHY5PbTUYvtUdSKzcwUG8ZE2F9jacTHs
         hjCsV9NYqS96q41WUHQWfPZ2AKGdfHWr+18UdACkBeie325AJ4u0MSHNt/YaIbQwNScS
         akDOWOqWZBJS/MfNUzbPSDffKoc9sDWmu7xlxSKfuItdDnP+MI8GPa/87dxF8jXWiHv4
         VtbjtF0dPUKOlnTTdN8apbcn+ZzpX+aKKxRJKu11R9JYzVHCakh9X1Y5OIxyquWe9yj0
         SBgcfroZitTCR9ImREuZ+InHkLkDvo26vxAtbXEQSelpLjrxwejXbexiNTFKoyH/GOrf
         sA7A==
X-Gm-Message-State: ANoB5plQXeqjmCxNo49xJOzX8VaRxzuLeW6KnAa3trM/kYcm2RT9cZNe
        JH3K5q+N9LPgepOEaI501msfCqmM6/xrawad
X-Google-Smtp-Source: AA0mqf7s1i6yNk0ChaSAEcHqOvw2xV6LvqBbDdAGkhTlDAG8xjcRcoAtTezuUVLbH2vHrDNdN0+Uag==
X-Received: by 2002:a05:6512:32ce:b0:4af:b1de:3ae1 with SMTP id f14-20020a05651232ce00b004afb1de3ae1mr6234854lfg.58.1670937908327;
        Tue, 13 Dec 2022 05:25:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 16-20020ac24850000000b004a46a9cebe2sm364786lfy.289.2022.12.13.05.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 05:25:07 -0800 (PST)
Message-ID: <ec874c50-1a55-5d78-fde9-f54881cd9d53@linaro.org>
Date:   Tue, 13 Dec 2022 14:25:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20221213132006.6446-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213132006.6446-1-marex@denx.de>
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

On 13/12/2022 14:20, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Krzysztof
>     - Add mx6sx power domain into the list
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> V4: - Drop ack from Krzysztof
>     - Rebase on next 20221213 instead of previous 20221208, which now
>       contains power-domains: part of this patch
> V5: - Drop power-domains from MX8MP/MX6SX entry

Thanks.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

