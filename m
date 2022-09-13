Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9557B5B69CA
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 10:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbiIMIo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 04:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231142AbiIMIox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 04:44:53 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B7E15A01
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 01:44:51 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h8so12603261wrf.3
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 01:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FZVlunLlsLup+p0bI6QeJ/RYwaTVchuEcmhidvQoejo=;
        b=kGbIXxFn248s5nHz45P6zHNJW7wMKw4UuALZcV4uPLjbNXuN5nj379TTa5FLLkyNsf
         q2wrH6TX6hyS1BksUxlPprxthHCwrvt7TR9BRePqeSur77r6cEVFSZPbQomcezasWWgf
         th24b8xfsFYpSfaPNqL8uHGV1UA3yLH2ZKhLh4KHfYZZretdGgkhVNUBEvd38XI9WB91
         wEFcu0TTwNgwmDC2z2/HtY+7Z1wEraLgP12icYpOyEPmpVCcpFBftXv20TE2hdkTQu/s
         1aw6W1Et6FXYyFCJEibOe5XmJvU9fqWcxqkD2ypK6W609SU5UJxYCLbtAStHKKDCaR1S
         CIhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FZVlunLlsLup+p0bI6QeJ/RYwaTVchuEcmhidvQoejo=;
        b=QI5S03Y3g8rWbxTaIABMUkOVbRvmwSqJ4blwSDiC4eHdUbhE/73zQQZjsBJpv+1nGq
         0Ewe2PHVn7n8JfbsfZTOpKzlOqKzvIqcYKKTTdoTRuIaibk95van5xiXZTv5REKDlJSj
         ca95383SQGHF0d8q6Bof/1lQG+eKNC5XvHSH5D0BABh+AKpS2VUHJ5ViBGFsT3B87Arz
         zobVyvHCneuaIxbZBiELn0DY8VYawIBKpiykdz/2sqk7BJl2rGH/+SDRc7N0/xobrchI
         0tGlvSH543rj8kZb6KCdPZZWMbVCTpc9u3emvoI9OEIKIWQeDfNHturyV4g8RSGxL8/T
         xmPg==
X-Gm-Message-State: ACgBeo21QXmgvjGmsyi6jNiCroByiL5lqNkcLcl6CUp6kpIl6EDf9m6s
        OVWWpeZc+2T5t5yT10DOOu54ug==
X-Google-Smtp-Source: AA6agR6WhtQN8m38UaEkj0ux7abtkAZ4ZImaPmtJ2jpMlO+urIKvzCnDHmVTHBa4/sB4bFG4oepkgg==
X-Received: by 2002:adf:e4ca:0:b0:228:d8b7:48a7 with SMTP id v10-20020adfe4ca000000b00228d8b748a7mr16964661wrm.300.1663058689956;
        Tue, 13 Sep 2022 01:44:49 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c359000b003b486027c8asm7322640wmq.20.2022.09.13.01.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 01:44:49 -0700 (PDT)
Message-ID: <d318a618-350b-22bc-13f2-586fafe038ea@linaro.org>
Date:   Tue, 13 Sep 2022 10:44:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [EXT] Re: [PATCH v6 5/5] arm64: dts: freescale: add support for
 i.MX8DXL EVK board
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20220822175245.222691-1-shenwei.wang@nxp.com>
 <20220822175245.222691-6-shenwei.wang@nxp.com>
 <20220903034819.GF1728671@dragon>
 <PAXPR04MB9185D243324279DD80C371DB897E9@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <20220912081649.GR1728671@dragon>
 <PAXPR04MB9185F52BA6FEC47E6412EB3C89449@PAXPR04MB9185.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB9185F52BA6FEC47E6412EB3C89449@PAXPR04MB9185.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2022 16:35, Shenwei Wang wrote:

>>>>> +             gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
>>>>
>>>> Missing enable-active-high?
>>>
>>> No. Enabling this regulator to select the fec1 interface instead of usdhc2.
>> Pulling this GPIO pin to low is to use FEC1 interface.
>>
>> Then the polarity cell should be GPIO_ACTIVE_LOW rather than
>> GPIO_ACTIVE_HIGH?
>>
> 
> That doesn't matter since any GPIO phandle flags are ignored in the node of "regulator-fixed".  The final flag is only determined by the property of "enable-active-high".  If there is a "enable-active-high", the GPIO line works as active high. If no such a property, it works as active low by default. Right?

No. Your flags must match hardware, even if bindings also expect
enable-active-high.


Best regards,
Krzysztof
