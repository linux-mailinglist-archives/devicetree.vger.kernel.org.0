Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22FE17364FC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 09:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjFTHmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 03:42:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbjFTHmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 03:42:25 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00F5F19AE
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:41:56 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f8fcaa31c7so46737695e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 00:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687246915; x=1689838915;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=24xEFzXasuSMDhm3QYCFsb56SV2SbSTBKcssry+4iMc=;
        b=kb2Ypew2JVaako1bcGbMeyMtw9rEyS3MjlXeVSa1rzdFaA0tb+zNuv3yd75CnSlrX0
         RAUeEPJs1Scs2WXVSqX+DVaMRlosLlmxMkjByobLz5vH4W41Lv6nSVNyRPV2FzKgi7kb
         jtFQ2dJZCwargVV9qCPGrfRj+WCrl6kEtaG1uofaTKh6fLvRPlbfq6e0DI6wdB1mvqe9
         2juetvnY3DQqslLlmyW+zWVyZu6A6zSb7gonuzRhRQEncpFCuLF4Meo3AdPgUjIMxcWx
         50ZoMlX/wMV2y8pFtlkYfzUmbHv8DU/pDX7iuy7XL8OGZZRKjlpznBN65wMseNwVVkbO
         +bcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687246915; x=1689838915;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=24xEFzXasuSMDhm3QYCFsb56SV2SbSTBKcssry+4iMc=;
        b=FQtktGOuKvcBDizEIA86UECmepriggZS/DOxBKbuijMTruKqsRN4Gf/wzBcwzChKYq
         BqP0zI49/+X8hoxaDkY49IJjpOh7zZUQF+oxeUhckIZj2C/+6RPqRnSoRunoE9sTDbZU
         Wzx7y4UeqDGbBnCsdk87Z6IHyOtGC2Ac0V6SrmKRa2yZVMM5o3bCyLI1D0/xIZqUcanP
         5U0svx05UiG5iPGORm9peUqUCKdnyEhCeHIt8yhhLjkwwIffiozXSnueBnrsyVeElqw+
         bZzNEI7UJz8H5qYrWkX39SXSSVrSeI7dswgEyOb6qtZFw9F+Z5xFYSGCLNNxRHJNPaVA
         wFaA==
X-Gm-Message-State: AC+VfDzjm+xmgyJf2oiU9Ue5K6j63gl9pTbfHfCYVMLZ1hojvtgVZdMN
        KJ/w/XzbO+I+EyTXTnDgChhIyQ==
X-Google-Smtp-Source: ACHHUZ6+HLWLmZt8VX1LnCyvr9HhxBusnuGgdSUtNZapl9clhiozcWy6ilLj2fVMlbDOsLulBpAENA==
X-Received: by 2002:a05:600c:ac5:b0:3f9:ac7:6ccd with SMTP id c5-20020a05600c0ac500b003f90ac76ccdmr7273784wmr.26.1687246915248;
        Tue, 20 Jun 2023 00:41:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:496f:4432:b5b2:1b3b? ([2a01:e0a:982:cbb0:496f:4432:b5b2:1b3b])
        by smtp.gmail.com with ESMTPSA id p8-20020adfe608000000b0030ae849c70csm1348077wrm.37.2023.06.20.00.41.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 00:41:54 -0700 (PDT)
Message-ID: <3d0d568f-8b94-9057-6acc-8e0ff773cf4c@linaro.org>
Date:   Tue, 20 Jun 2023 09:41:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
 <777cf5df-6358-fa46-66cd-153d29763f77@linaro.org>
 <a895bdba-a48e-17e9-043e-9b950bbc1a85@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <a895bdba-a48e-17e9-043e-9b950bbc1a85@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 09:36, Krzysztof Kozlowski wrote:
> On 20/06/2023 09:33, Neil Armstrong wrote:
>> Hi,
>>
>> On 12/03/2023 22:29, Heiner Kallweit wrote:
>>> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
>>>
>>> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>>> ---
>>> - consider that more than one compatible may be set
>>> - remove bus part from example
>>> - remove minItem/maxItem properties for compatible
>>> - reduce compatible fallback complexity
>>> - add that 8 or 12 GIC interrupts can be used
>>> - fix typo
>>> ---
>>>    .../amlogic,meson-gpio-intc.txt               | 38 ----------
>>>    .../amlogic,meson-gpio-intc.yaml              | 72 +++++++++++++++++++
>>>    2 files changed, 72 insertions(+), 38 deletions(-)
>>>    delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>>>    create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
>>
>> Gentle ping, this patch is fully reviewed and is lying on the list for the last 3 months.
> 
> Maybe just take it through your Amlogic SoC tree in such case? It's less
> preferred than subsystem, but still what matters is to get this merged.


Yep I'll send it via the amlogic tree this week if Marc or Thomas doesn't object,

Neil

 >
 > Best regards,
 > Krzysztof
 >
