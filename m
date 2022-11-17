Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF23562E39B
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 18:57:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234884AbiKQR5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 12:57:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239919AbiKQRtH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 12:49:07 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68B626441
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 09:49:05 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id h12so3649921ljg.9
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 09:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oKps2kj8vyioDRFfnDtXuYlVJybPlQiLeu0C1JmglC0=;
        b=DuNRImNUYAM9cXvN3ZheeodNKt4sZu1SzG7HzaUYBDsffFPakszDtyQfV3nYY103tR
         TzJJ505h03FRuj0vuH/xW7SU0KKAl++T8l353Opez4Qw68bEokbGrrIpRqL57pqipOaI
         VBBS27iR0paB2fXDQoJ44ljd8Za65G1HJIyMXU3pdgsKV3vweNf6a+QdDTJdcTSQqBpG
         iIJSyDMckDE8dXlrm3xL33sVzL80fsncQ6MhRHoJfQ1kPl28jkz3co0531TtU0Ix6C6B
         f8Ai09k9C1W7dLmoyV8iWp2Wsmw2n6aY48Vvhnerx9qSFjPZBo2TKT+vZpXWCEpG1PNL
         Sriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oKps2kj8vyioDRFfnDtXuYlVJybPlQiLeu0C1JmglC0=;
        b=N1Vj9cA+dJCqB/SW6SBsmpsJP17eat11UzAIksIWae/DXmKGKH3Bl6IPSH4xnSLvXr
         x7VbJqweXphMkSkXtDyFsIP8q4wmIMnxhzOFo9DrjtBQmGSUf2oQJNUuWseicNORoG/4
         Tehgii/LG51BeiVvv8ZNpZB+orHQSczJsRA87ZwUr09Q/M7QGs/32Fz2ZLR94d6KdLer
         jROTeBmhTHWMjCwZspx/69xSmZgzP1WV+JP0lHNc0CInqQIa07Jol9E3uVPyPj8gNCn3
         wqTMweXJkqgwbJMaGQJdCrJEPBEXPtbFtv7Yq7motxsByMLJ9VncTNshLPy+ObRuhOz1
         irAw==
X-Gm-Message-State: ANoB5plwByx3wnh7j9a+dsfohy/ECRWU1fy7FaHt1oEOhyFqhK1mA2ve
        Stz0+dscQG2lycGz5P6t2Mra3E/YV7vK+k1c
X-Google-Smtp-Source: AA0mqf51Os+HnRrnHg9xxz4KBwdAm2B2vV6ky4H0rkIvKUTHbBLN4yaPF9EoABdMDFxnSPz+8qWbnA==
X-Received: by 2002:a05:651c:1592:b0:277:b9f:cdbd with SMTP id h18-20020a05651c159200b002770b9fcdbdmr1561707ljq.0.1668707343815;
        Thu, 17 Nov 2022 09:49:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j8-20020ac253a8000000b004946a1e045fsm247258lfh.197.2022.11.17.09.49.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 09:49:03 -0800 (PST)
Message-ID: <2b0463c1-7fee-b7f0-5cf7-0448a6aab4a7@linaro.org>
Date:   Thu, 17 Nov 2022 18:49:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1] dt-bindings: display: Convert fsl,imx-fb.txt to
 dt-schema
Content-Language: en-US
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20221110094945.191100-1-u.kleine-koenig@pengutronix.de>
 <20221116174921.GA25509@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116174921.GA25509@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2022 18:49, Philipp Zabel wrote:
> On Thu, Nov 10, 2022 at 10:49:45AM +0100, Uwe Kleine-König wrote:
> [...]
>> new file mode 100644
>> index 000000000000..c3cf6f92a766
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
>> @@ -0,0 +1,110 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/imx/fsl,imx-lcdc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Freescale i.MX LCD Controller, found on i.MX1, i.MX21, i.MX25 and i.MX27
>> +
>> +maintainers:
>> +  - Sascha Hauer <s.hauer@pengutronix.de>
>> +  - Pengutronix Kernel Team <kernel@pengutronix.de>
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - fsl,imx1-fb
>> +              - fsl,imx21-fb
> 
> Are the items/enum keywords superfluous here? Couldn't this just be two
> 
>          - const: fsl,imx1-fb
>          - const: fsl,imx21-fb
> 
> entries?

Only "items" is, so should be dropped.

Best regards,
Krzysztof

