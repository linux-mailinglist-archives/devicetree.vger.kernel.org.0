Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 039D358C304
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 07:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235543AbiHHFrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 01:47:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235118AbiHHFrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 01:47:20 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29D1E021
        for <devicetree@vger.kernel.org>; Sun,  7 Aug 2022 22:47:19 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id x25so8707683ljm.5
        for <devicetree@vger.kernel.org>; Sun, 07 Aug 2022 22:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/Pxz+4RTMHIPWrnwxpakjFZCkZSHmAtIAE/YFvYVhUs=;
        b=CbpMqQmXyBmVkTTkBUp7RVpzIOIZiNMl5LhLlxH+DGESdA21KqfVgfZ1TmrGP+O8rO
         xrGWkrIQ1ma/NFkmO9trGhaoYsqzpmWcyW4eWJ5WLv3nwGOxQrci8ZKYETyu1FFaO+f8
         XC4p2GaPH+KuPvCw75v85auKPgfDjZyL0RuFkxWziRobvEahog2Wax5mbWzKi6SPxOYC
         AxP2gteLwxgMl7dyjpG7mRs2jCArdQN9206/OYhqE8weeatETRQmsK5LlqsVdAKdrQoZ
         47VNtUSixoytQlgtgOfya9jQb3vZYejreb+KJiye5t2s/v+rWJ+uApt4whoqlPmR/0A7
         rkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/Pxz+4RTMHIPWrnwxpakjFZCkZSHmAtIAE/YFvYVhUs=;
        b=4dxAivMMCQL+jatHJSmExzk+1usOmz7TtGaItYCGHIvzg2VMFESpy3dU06sgBjTn5A
         6iDhEgsHk6GGxHybxZjzaVNA688wylpWxHXlAmK2mWWI1s3chsSjpqs1J5I0aaCUd0az
         0B+UVihvyI4NZOKHwOsbtYX1ock9+rGIagFJL06otL//WyPmctPB9NPqjVFpilpM2Hd0
         YxPe3nFNosn1eUdh+8ICYJjQjwsRQBBCd8sShJ2cG0cFTH5PM/BHe0rI+1DykPwoT5NP
         oTwc93+NYuK9cqodKX3L7iIaA4sf9Z5/+5SVKMEtRJR7VRf1RMafIKdJKsbTZuFHpVWX
         thMw==
X-Gm-Message-State: ACgBeo2A1FtSu3P/ryd3rEQQl4NYFZXFpK7MjKI9V/3R37En0jeuu6I+
        m5wwmBu+cfhZAd+OOIQoqcNQkQ==
X-Google-Smtp-Source: AA6agR62zedKa8TbSFEyNVLNHU9KAYcOHmL9Qxs9dRZML+Fq3vosqUqw4c+mqXIJ9JCajS9572CvPQ==
X-Received: by 2002:a2e:2203:0:b0:25e:77dd:e8f6 with SMTP id i3-20020a2e2203000000b0025e77dde8f6mr4817769lji.215.1659937638174;
        Sun, 07 Aug 2022 22:47:18 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id i18-20020a198c52000000b0048b1d05631csm1303428lfj.89.2022.08.07.22.47.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 22:47:17 -0700 (PDT)
Message-ID: <5d7f44e5-9114-65b6-af7d-4bac75c62a46@linaro.org>
Date:   Mon, 8 Aug 2022 07:47:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v5 3/3] arm64: dts: imx: add imx8dxl support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220801200121.672619-1-shenwei.wang@nxp.com>
 <20220801200121.672619-4-shenwei.wang@nxp.com>
 <DB9PR04MB8284548EFC5EBBA826B55F34899E9@DB9PR04MB8284.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB9PR04MB8284548EFC5EBBA826B55F34899E9@DB9PR04MB8284.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2022 18:22, Shenwei Wang wrote:
> A kind ping. 😊
> 
> 

To whom? What do you need from me?

Regards,
> Shenwei
> 
>> -----Original Message-----
>> From: Shenwei Wang <shenwei.wang@nxp.com>
>> Sent: Monday, August 1, 2022 3:01 PM
>> To: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>> Cc: devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>; Shenwei
>> Wang <shenwei.wang@nxp.com>
>> Subject: [PATCH v5 3/3] arm64: dts: imx: add imx8dxl support
>>
>> i.MX8DXL is a device targeting the automotive and industrial market segments.
>> The chip is designed to achieve both high performance and low power
>> consumption. It has a dual (2x) Cortex-A35 processor.
>>
>> This patch adds the imx8dxl soc and EVK board support.
>>
>> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
>> ---
>>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>>  .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |   2 +-
>>  .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 138 ++++++
>>  .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  14 +
>>  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 463 ++++++++++++++++++
>>  .../boot/dts/freescale/imx8dxl-ss-adma.dtsi   |  72 +++
>>  .../boot/dts/freescale/imx8dxl-ss-conn.dtsi   | 145 ++++++
>>  .../boot/dts/freescale/imx8dxl-ss-ddr.dtsi    |   9 +
>>  .../boot/dts/freescale/imx8dxl-ss-lsio.dtsi   |  78 +++
>>  arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 238 +++++++++


Best regards,
Krzysztof
