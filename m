Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB8B60777F
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 15:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbiJUNEH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 09:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230018AbiJUNEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 09:04:06 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94F3B26B489
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 06:04:01 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id g11so1570024qts.1
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 06:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A087xfPnfRZDD4Nb29Zcz9+fc/XZRZslqD+L3nx5U8o=;
        b=YMYrNvqItT7MQMmo9LWwYRVYx4aF/sYZJ5D1qGL4wLwQjVjkl8qg/WbibaohVaX2RW
         26xgDRko/joh7KoDh0Yc3bL8wlIXzT1iZJJu5efx/Q/UXTOp6JMYzEqv95dPqxul9Y9/
         0yvXRkofqrNuMNQ0tj/lB+PDITSCrexNB7ulkoMMqfBEssEMim6XLKKQKFdzKiJ1kr2R
         7WfmVqLRqkzFuzuYeGytTB7QsN3t7wgT6/H+YyDxb0GUEZx4zOEzyTjU60a9qDmbbaEf
         49WE/hAB3utPV1JikEp+qJ+stCnuJOh6F+WLEdOosTvx2vaYl1Ml1k/jPrIY8TOdFFII
         iSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A087xfPnfRZDD4Nb29Zcz9+fc/XZRZslqD+L3nx5U8o=;
        b=3aPLffQsx7mpkCvmlQdJkPB1Z0IdruVGWJohaaFk4e8kB6qPadViWAo0BpOWpxw/Mz
         z/1KUevAyUeJRC00fT8Erbpp9+DC8mzZGBLsPG0/GB63ZZwKEBOfba4TS0p7cETeo0wt
         BeBx4dKeeDHTn+a13UGTn87j6vZ3KPS2TnQjjg07oHsZMiZzvt1YR+va2+SkU1+daK0n
         LBgNWQL58uXIUqO/a5mEGNUrEKqdk/3kb9hcpf92TbvoENGm/DwJG65Gf71k0RTwj/Ud
         L0VFnsAojm9HKpBFCfiow/G35cpqwST4fXiWbCCnQRoTfOoUfxlWSw25gtkXT30Gn3n0
         2pXA==
X-Gm-Message-State: ACrzQf3yOZE7Ibcbfz4WCKGCMVIT8kGRp/RIDvQZG4XOR32ZuG48Dzq2
        6NYeyZzQ2XkMhC+mR+DrLYVokg==
X-Google-Smtp-Source: AMsMyM4/pAptnbP1P52KaZOdwJpVSrGmFwhfpTBlvQ+B3gx2aaPjEwUzezn1/ib91nXqhM06MhPEWw==
X-Received: by 2002:ac8:59c4:0:b0:39c:bab7:f937 with SMTP id f4-20020ac859c4000000b0039cbab7f937mr16397221qtf.657.1666357440273;
        Fri, 21 Oct 2022 06:04:00 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m11-20020a05620a290b00b006b929a56a2bsm9933799qkp.3.2022.10.21.06.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 06:03:59 -0700 (PDT)
Message-ID: <ceb8eb7f-8e10-bfdf-bc22-1f9eddb2ea83@linaro.org>
Date:   Fri, 21 Oct 2022 09:03:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [EXT] Re: [PATCH v7 1/2] dt-bindings: fsl-imx-sdma: Convert imx
 sdma to DT schema
Content-Language: en-US
To:     Joy Zou <joy.zou@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>
Cc:     "S.J. Wang" <shengjiu.wang@nxp.com>,
        "martink@posteo.de" <martink@posteo.de>,
        "dev@lynxeye.de" <dev@lynxeye.de>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        Peng Fan <peng.fan@nxp.com>, "david@ixit.cz" <david@ixit.cz>,
        "aford173@gmail.com" <aford173@gmail.com>,
        Hongxing Zhu <hongxing.zhu@nxp.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20221020101402.1856818-1-joy.zou@nxp.com>
 <20221020101402.1856818-2-joy.zou@nxp.com>
 <caae2af7-96ea-195f-6f33-05d9e79fa518@linaro.org>
 <AM6PR04MB5925C0AC7A4066AF52E2004CE12D9@AM6PR04MB5925.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM6PR04MB5925C0AC7A4066AF52E2004CE12D9@AM6PR04MB5925.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 04:10, Joy Zou wrote:
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - fsl,sdma-ram-script-name
>>> +  - "#dma-cells"
>>
>> and then this can one be dropped.
> Thanks your comments.
> I have tried to delete the additionalProperties, but I run dtbs_check. The log as follow:

Why would you do that? No one asks that. Please read mailing list
netiquette/conversation style.

Best regards,
Krzysztof

