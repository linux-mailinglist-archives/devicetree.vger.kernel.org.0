Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DE6F6AD87F
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 08:51:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbjCGHv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 02:51:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbjCGHve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 02:51:34 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CFF287A10
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 23:51:26 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id da10so48837637edb.3
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 23:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678175484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1J0Xjad/a/KRHvNupVgoWBMoVNp5GOAajfd3iBJz0=;
        b=RB2YYDeMzhm+HtrKJikJpQ9xh9V9RcKJXIRdiAE+u1ssWfJRsSelygwEb6Fh03Fjhj
         WFKE5oBdnhae3A/By+yRmnUUzzWXZyOR/28q2rotXCS9+6efzsT4ACBDhltwIScGY5ya
         lUE1gl4nXyeT6sG4lMD/qx+pf9pNs6/YO0BbU9/uXbBlJZjio3fWhplascFkfrPc9up7
         O86ySn7Qp0ZNn19MH5pcBvrQ4EbU192LassjmJlRUPfq60XGeVQ4s7QTtdCslGkMMKwi
         VoiNXO57JyYblBM17AhK6C4P1WS9POtFJSOqq2PTz5xQhSmWJmacaavdTpvSEUGlKRjm
         r7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678175484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1J0Xjad/a/KRHvNupVgoWBMoVNp5GOAajfd3iBJz0=;
        b=o8aOF/wR+iKeE0As1bZTGHeT4tOpeGk427lyUsbtJ7pMf6fixOApv8fLuu1ofoy7T4
         CMmZCfapQqmtCCJGJXBu+7ewbb6yX1l6E4gg/Ixa4L+lF9EyRLEIlRajynpRVzXeNYwR
         WLV4SiO8n3rcWbhovsIpVcpS24p/0XQ7jzySJBPgOc9wBrVUchqa0AV2byPuUU4qGQOC
         XJ2gCid2dOS/BsK5uV6VGsT2aYa8bfVIXoO4jWJaPfGI4lxXrSOcEdixPasUbi4/ky57
         Lr+lPz/2xmE/jVjGLnub4E0o19W8SOe9eXCm7Ger83hyB6WzzjcZyFoaijM3wZNzB6JO
         HBNA==
X-Gm-Message-State: AO0yUKV8J0r5bW/Denm4n7P/vhn8Ww4ors8+mA0EZjfqkgyuGfPVuIR+
        c6ZIHODf5fOhzemHGHmRquH1ZQ==
X-Google-Smtp-Source: AK7set/uRxlKaG2kxmLwdovtDdcqN829jrnQJM44PnNToPer+Cl6mGrmwVf1B82OmUQ+3L1Vht3bOg==
X-Received: by 2002:a17:906:9744:b0:885:fee4:69ee with SMTP id o4-20020a170906974400b00885fee469eemr15387797ejy.59.1678175484560;
        Mon, 06 Mar 2023 23:51:24 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id c14-20020a50f60e000000b004af720b855fsm6279999edn.82.2023.03.06.23.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 23:51:24 -0800 (PST)
Message-ID: <33501622-5515-b12b-c41a-c4d9b89a3be3@linaro.org>
Date:   Tue, 7 Mar 2023 08:51:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for
 i.MX8MM-EVK rev B
Content-Language: en-US
To:     SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
 <20230307044449.2714529-2-johannes.schneider@leica-geosystems.com>
 <dd84d4f3-101c-6b38-56b5-4907ba61ac6f@linaro.org>
 <DB6PR06MB40083DA3572D697D54A065AABCB79@DB6PR06MB4008.eurprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB6PR06MB40083DA3572D697D54A065AABCB79@DB6PR06MB4008.eurprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 07:29, SCHNEIDER Johannes wrote:
> Hoi,
> 
>> On 07/03/2023 05:44, Johannes Schneider wrote:
>>> Add devicetree for the revision B imx8mm-EVK, which comes with a
>>> different PMIC.
>>>
>>> The regulator min/max values are taken from the evk's schematic:
>>> 8MMINILPD4-CPU  SPF-31399_C2.pdf
>>>
>>> Reviewed-by: Shawn Guo <shawnguo@kernel.org>
>> Aren't you now adding fake tags? It's the second tag which was never
>> given to you on LKML.
>>
>> Best regards,
>> Krzysztof
> 
> oooh, so i was too fast in adding this :-S
> the reviewer also have to explicitly give these tags - giving review comments with requested changes isn't enough?

No. We give many comments and how would ever that mean that the code is
correct and we approve it? We talk here and you cannot create tags based
on our talks! And even with that logic, why not Acked? Or anything else
like "Looked-by:"?

Really people should read submitting patches before sending... The tag
comes with specific statement, so you cannot imply that statement.
https://elixir.bootlin.com/linux/v5.19-rc1/source/Documentation/process/submitting-patches.rst#L513



Best regards,
Krzysztof

