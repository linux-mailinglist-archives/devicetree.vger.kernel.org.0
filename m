Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EED9715BF6
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 12:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229722AbjE3KjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 06:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbjE3KjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 06:39:18 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F5848F
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 03:39:16 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2af1a7d2f6aso45962301fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 03:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685443155; x=1688035155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pp01pTU0LLZTAqdqXz+wrNOlBn7PTZXDx908dElQMmU=;
        b=i11BM9FhvI10iSIagRDQ8gpSTj3qxQckeRSmzTUuvItuX56xzU4bfUlSsI5OwoG0hh
         Pk1gSVtlbE1TUs4JOQZ8DxNKjzZAZv3Y3O3kZJBgvVhsWVwEPyWR4BDxLJpCivEAW82h
         8u25JiPhFjjei3EnqA55tDbCQK+FV7t20uwyfWQvyqo0KXokG2934MfVW2OnMoSPwxPf
         IMa76io93hKPQ6wqJ/Y1OelhxYJjpt95Sq56VccMXjIerpqdxCt8CHLpOabewvg0YiRc
         t2kp6plbJGB+cYQghvKNbECL3FNlfy7nPhs4eO6rjpXaDLlaT8I8+Dg9yrIyHsvQXEzE
         c33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685443155; x=1688035155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pp01pTU0LLZTAqdqXz+wrNOlBn7PTZXDx908dElQMmU=;
        b=XUDGJrgYjludE/0KRfZMZHjMTuDunYtb45km7uVDBHZrAF3ECASxcObOFqyTx8n0Ou
         +yQ65LJuATsjsHP32yY45SGhAhYO+3ZsGJYjm/LoAoyezP+Ce1PtriaLUBRRhqjOJOml
         VlWofO09SysTtfqSCsfXFmSqE5xu+aJjTJpITYGJe2b/8l0JbAMEuR9GGRVjkExgxpa0
         ElLeNvrBbhYrqItbSPNgd2rozZPsrdTLxLDs2p7pwauUkBqlRUzQ/8v4EwCfNNmpEMJA
         vpl2cPHf6iWWJBu1gmXgUDppYY7SN232hfANAZw6z1sLKH47DDfanokuRn8A/iPYTqCW
         yt7w==
X-Gm-Message-State: AC+VfDyW4SQjLSI7rl2K6hnHA8oXbbIFIvBQNifzfiSkTXmb5Xc1EfI1
        Gkjt2eJ5vg8EKj0onhOXuPL+xA==
X-Google-Smtp-Source: ACHHUZ4/Nn6vN7DTk9A+WMkb82XFH7/E/6AkovjSiRTQrlUjFU5Vfbhe1lvhGSIesALarPLePLnDZg==
X-Received: by 2002:a2e:9f01:0:b0:2a7:98b2:923b with SMTP id u1-20020a2e9f01000000b002a798b2923bmr549563ljk.0.1685443154914;
        Tue, 30 May 2023 03:39:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id i10-20020a2e808a000000b002adc2fe3fc8sm2814482ljg.4.2023.05.30.03.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 03:39:14 -0700 (PDT)
Message-ID: <821eff3e-67e1-6398-b9a0-0de7cd149e36@linaro.org>
Date:   Tue, 30 May 2023 12:39:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: imx6sll-evk: add eMMC node support
To:     Bough Chen <haibo.chen@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230518084733.344162-1-haibo.chen@nxp.com>
 <8fba7dee-e445-8658-fe2f-d14793f9a343@linaro.org>
 <DB7PR04MB4010031616E89061103CF5B9907C9@DB7PR04MB4010.eurprd04.prod.outlook.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB7PR04MB4010031616E89061103CF5B9907C9@DB7PR04MB4010.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2023 08:07, Bough Chen wrote:
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: 2023年5月18日 20:10
>> To: Bough Chen <haibo.chen@nxp.com>; robh+dt@kernel.org;
>> krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
>> shawnguo@kernel.org; s.hauer@pengutronix.de
>> Cc: kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
>> <linux-imx@nxp.com>; devicetree@vger.kernel.org
>> Subject: Re: [PATCH] ARM: dts: imx6sll-evk: add eMMC node support
>>
>> On 18/05/2023 10:47, haibo.chen@nxp.com wrote:
>>> From: Haibo Chen <haibo.chen@nxp.com>
>>>
>>> On imx6sll-evk board, eMMC is connect on the usdhc2.
>>
>>
>>> +	pinctrl_usdhc2: usdhc2grp {
>>> +		fsl,pins = <
>>> +			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
>>> +			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
>>> +			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
>>> +			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
>>> +			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
>>> +			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
>>> +			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x17059
>>> +			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x17059
>>> +			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x17059
>>> +			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x17059
>>> +			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x13059
>>> +		>;
>>> +	};
>>> +
>>> +	pinctrl_usdhc2_100mhz: usdhc2grp_100mhz {
>>
>> No underscores in node names. Schema expects certain pattern, so be sure to
>> test it. Please run `make dtbs_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> 
> Hi Krzvsztof,
> 
> Thanks for point that out. I will change this.
> But when I use 'make dtbs_check' to check the imx6sll-evk.dtb, though there is some issue shows up, but do not find any message point the rules "no underscores in node names".
> Anything I missing? Or this is just an implied rule？

underscores is explicit. dtc (make dtbs) with W=2 already complains
about it.

Maybe your bindings for pinctrl were not converted to DT schema? But in
such case anyway we want the same pattern for this as for other iMX schemas.

Best regards,
Krzysztof

