Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A10646508F4
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 09:57:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiLSI5U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 03:57:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231754AbiLSI5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 03:57:15 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BB82DD9
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:57:12 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 1so12666583lfz.4
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dSSxYmTz8icUQ7t3QourFJ+OztEPXnM8VaHIT8Azpak=;
        b=amWL898NNcCMoA0D31bKy8Z9LFx9qZr0gvW0yaxBsjlDVTIOVYHSI1LHgC8GBIbnMl
         blPYSxij89FlUsQH5LkhTZza40Mrz3KE+Ja6Cez6AD5BgX2QLNFjA0PHdtAlj0f2A9Ji
         1Ce7TQaGKgX1Xqh+s3n/PQMhBLPmj5RL2oX3K+/YaVlcGWWSN4/LAGP6vUTTnnLEf+7E
         z/gj93pCSjgvLG/5z5xcZCikn6LLmzEA5OK2fUAKHHvpywPuIt8Ha5tBQstJNoqtiTbd
         LLmdeu1hegEfcR1t74wAuuvS77fsCEllnee6veJpu8/6KrM5mVhltCziB34ysM4iZTBi
         ff0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSSxYmTz8icUQ7t3QourFJ+OztEPXnM8VaHIT8Azpak=;
        b=15GnE6D1GFFwW6Q/0VuB9/uVOqrRXSsPof8ZXntK28dLuNGHizWF627M8BAlnJdmsZ
         v7uR2uejymRC6pv98To3qKwQrb/r1SQALNBsCVY/oHxC0NcmhcHeBpU9AVqrOpCOvy0J
         TgK5fFt9Umz687YZGBbM73h9eubY3o0AEmyJYMXxMlC44u4sVkji3i/cBEwKmYTwb2aE
         WBrLcG7qU7TYMEXT/uyWO/FdOzfZNTEsdp6ifkx4hPtKEgDY6U4h2A6SVbEbQTcX/ipZ
         jTlSDjUgl2se2zNJxtQQGw4QIVc5Af0fTCmRrTx3XOcfAJqG1bYOMZrtWUqf1jpHHkRB
         LGnQ==
X-Gm-Message-State: ANoB5plcz36gw4pV7AgiB3RXy0DlLSKSS1mbqdDML1HCE5iMWBhtfLqU
        4MMvGldaqIVgCqZLts+pgK7u4A==
X-Google-Smtp-Source: AA0mqf7ftzV/BcDb6NYVr70R3uU/lTZfolpOayWERPGVLeATkWs/P8ymEKb/uxT/6Ep5lFsvFJzPMQ==
X-Received: by 2002:a05:6512:3a82:b0:4b5:580f:2497 with SMTP id q2-20020a0565123a8200b004b5580f2497mr14020745lfu.17.1671440230831;
        Mon, 19 Dec 2022 00:57:10 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s9-20020a056512314900b004b583198d83sm1040710lfi.186.2022.12.19.00.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 00:57:10 -0800 (PST)
Message-ID: <04914294-0d1b-d6ab-a3da-c8fd8e35b3b9@linaro.org>
Date:   Mon, 19 Dec 2022 09:57:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] dt-bindings: dma: fsl-mxs-dma: Convert MXS DMA to DT
 schema
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221217010724.632088-1-marex@denx.de>
 <b74776b4-0885-f519-8ef7-e01048a8be15@linaro.org>
 <ba05612d-fd3b-3e49-4ada-21f3b3c74e23@denx.de>
 <a5bb28a7-c7d3-be98-9621-996d38656d98@linaro.org>
 <58b96f52-30ae-c868-8434-a0ca9e996bcd@denx.de>
 <40956c61-ed9e-2ca3-868b-445510ea1c05@linaro.org>
 <9f2a068b-9275-659f-b1ae-0b6046fea18b@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9f2a068b-9275-659f-b1ae-0b6046fea18b@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 09:46, Marek Vasut wrote:

>>>>> if does not match on 6q/6sx/7d/23-apbx/28-abbh/28-apbx then 8
>>>>>
>>>>> if does not match on 6q/6sx/7d/23-apbh then 16
>>>>>
>>>>> But if there is a better way to validate the above, please do tell.
>>>>
>>>> Then your existing if:then: is also not correct because you require for
>>>> fsl,imx28-dma-apbh (as it is not in second if:then:) const:16. Just
>>>> don't require it.
>>>
>>> So, shall I just drop the entire allOf: section ?
>>
>> No, what about the interrupts?
> 
> The interrupts and dma-channels are matched 1:1 for this controller, 1 
> DMA channel, 1 interrupt. 16 dma channels means 16 interrupts .

Ah, then probably you need to drop entire allOf,.

Best regards,
Krzysztof

